#!/bin/bash -x
#Welcome to Tic Tac Toe Game
X="X"
O="O"

echo "Welcome to tic tac toe game"
declare -a gameBoard
gameBoard=(" " " " " " " " " " " " " " " " " ")

#Gameboard skeleton
echo "         ${gameBoard[0]}  | ${gameBoard[1]} | ${gameBoard[2]}"
echo "         -----------"
echo "         ${gameBoard[3]}  | ${gameBoard[4]} | ${gameBoard[5]}"
echo "         -----------"
echo "         ${gameBoard[6]}  | ${gameBoard[7]} | ${gameBoard[8]}"
echo $gameBoard

#To check that which letter assign to player
letterCheck=$((RANDOM%2))
if [[ $letterCheck == 0 ]] 
then 
	echo "You have assigned :" $O
else
	echo "You have assigned :" $X
fi

#Make a toss and decide who play first
firstTurn=$((RANDOM%2))
if [[ $firstTurn == 0 ]]
then
	echo "User plays first"
else
	echo "Computer plays first"
fi
