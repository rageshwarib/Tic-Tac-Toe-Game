#!/bin/bash -x
#Welcome to Tic Tac Toe Game

declare -a gameBoard
gameBoard=(" " " " " " " " " " " " " " " " " ")
echo "Welcome to tic tac toe game"

echo "${gameBoard[0]}  | ${gameBoard[1]} | ${gameBoard[2]}"
echo "-----------"
echo "${gameBoard[3]}  | ${gameBoard[4]} | ${gameBoard[5]}"
echo "-----------"
echo "${gameBoard[6]}  | ${gameBoard[7]} | ${gameBoard[8]}"
echo $gameBoard



