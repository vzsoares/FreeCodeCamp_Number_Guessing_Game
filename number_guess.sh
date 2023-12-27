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
    USER_ID=$($INSERT_USER | cut -d' ' -f 1)
    echo "Welcome, $NAME! It looks like this is your first time here."
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID")
    BEST_GAME=$($PSQL "SELECT attempts FROM games WHERE user_id = $USER_ID ORDER BY attempts DESC LIMIT 1")
    echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
  SECRET_NUMBER=$(GEN_RANDOM)
  INSERT_GAME=$($PSQL "INSERT INTO games(secret_number,user_id) VALUES($SECRET_NUMBER, $USER_ID)")

  echo "Guess the secret number between 1 and 1000:"
}

echo -e "\n~~ Number guessing game ~~\n"

MAIN