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
  DB_USER=$($PSQL "SELECT user_id,name FROM users WHERE name = '$NAME'")
  echo $DB_USER
}

echo -e "\n~~ Number guessing game ~~\n"

MAIN