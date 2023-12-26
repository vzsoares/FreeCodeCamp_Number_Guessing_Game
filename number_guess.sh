#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"

OUTPUT_SUCCESS(){
  # <number_of_guesses>
  #<secret_number>
  echo "You guessed it in $1 tries. The secret number was $2. Nice job!"
}