#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

OUTPUT_SUCCESS(){
  # <number_of_guesses>
  #<secret_number>
  echo "You guessed it in $1 tries. The secret number was $2. Nice job!"
}

GEN_RANDOM(){
  echo $((1 + $RANDOM % 1000))
}

MAIN(){
  echo "Enter your username:"
  read NAME
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME'")
  if [[ -z $USER_ID ]]
  then
    INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$NAME') RETURNING user_id")
    USER_ID=$(echo $INSERT_USER | cut -d' ' -f 1)
    echo "Welcome, $NAME! It looks like this is your first time here."
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID")
    BEST_GAME=$($PSQL "SELECT attempts FROM games WHERE user_id = $USER_ID ORDER BY attempts ASC LIMIT 1")
    echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
  SECRET_NUMBER=$(GEN_RANDOM)
  INSERT_GAME=$($PSQL "INSERT INTO games(secret_number,user_id) VALUES($SECRET_NUMBER, $USER_ID) RETURNING game_id")
  GAME_ID=$(echo $INSERT_GAME | cut -d' ' -f 1)

  echo "Guess the secret number between 1 and 1000:"

  while [[ $ANSWEAR != $SECRET_NUMBER ]]
  do
    read ANSWEAR
    if [[ ! $ANSWEAR =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    elif (( $ANSWEAR < $SECRET_NUMBER ))
    then
      echo "It's higher than that, guess again:"
    elif (( $ANSWEAR > $SECRET_NUMBER ))
    then
      echo "It's lower than that, guess again:"
    fi
    INCREASE_ATTEMPT=$($PSQL "UPDATE games SET attempts = attempts + 1 WHERE game_id = $GAME_ID ")
  done
  ATTEMPTS=$($PSQL "SELECT attempts FROM games WHERE game_id = $GAME_ID")

  echo "You guessed it in $ATTEMPTS tries. The secret number was $SECRET_NUMBER. Nice job!"
}
MAIN