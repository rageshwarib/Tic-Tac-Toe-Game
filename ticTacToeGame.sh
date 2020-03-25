#!/bin/bash -x
#Welcome to Tic Tac Toe Game
X="X"
O="O"
o=0
x=1
echo "Welcome to tic tac toe game"
declare -a gameBoard
gameBoard=(" " " " " " " " " " " " " " " " " ")
function printGameBoard()
{
	#Gameboard skeleton
	echo "         ${gameBoard[0]}  | ${gameBoard[1]} | ${gameBoard[2]}"
	echo "         -----------"
	echo "         ${gameBoard[3]}  | ${gameBoard[4]} | ${gameBoard[5]}"
	echo "         -----------"
	echo "         ${gameBoard[6]}  | ${gameBoard[7]} | ${gameBoard[8]}"
}

#To check that which letter assign to player
function letterCheck()
{
	letterCheck=$((RANDOM%2))
		case $letterCheck in
		$o)
			playerLetter=$O ;;
		$x)
			playerLetter=$X ;;
		esac
	echo $playerLetter
}
#Make a toss and decide who play first
function getTurn()
{
	firstTurn=$((RANDOM%2))
	if [[ $firstTurn == 0 ]]
	then
		echo "Player plays first"
	else
		echo "Computer plays first"
	fi
}

#Choose a valid cells during player's turn
function  placePiece()
{
	playerLetter=$1
	echo "Enter the position you want to place your letter"
	read place
	if [[ $place>=0 && $place<=8 ]]
	then
		case $place in
		0)
			${gameBoard[0]}
			$playerLetter ;;
		1)
			${gameBoard[1]}
			$playerLetter ;;
		2)
			${gameBoard[2]}
			$playerLetter ;;
		3)
			${gameBoard[3]}
			$playerLetter ;;
		4)
			${gameBoard[4]}
			$playerLetter ;;
		5)
			${gameBoard[5]}
			$playerLetter ;;
		6)
			${gameBoard[6]}
			$playerLetter ;;
		7)
			${gameBoard[7]}
			$playerLetter ;;
		8)
			${gameBoard[8]}
			$playerLetter ;;
		*)
			echo "Invalid Placement"
		esac
	fi
	printGameBoard
}

letter="$( letterCheck)"
getTurn
placePiece $letter

