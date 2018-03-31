#!/bin/bash
if [ $# -eq 1 ]; then
	GUESSME=$1
	echo "Using provided number: guessing $GUESSME"
elif [ $# -eq 0 ]; then
	GUESSME=$((1 + RANDOM % 100))
	echo "Using random number: guessing $GUESSME"
else
	echo "Usage: ./guess.sh [number]"
fi

git bisect reset > /dev/null 2>&1

GOOD_COMMIT=`git rev-list --max-parents=0 HEAD`
BAD_COMMIT=`git rev-parse HEAD^1`

git bisect start $BAD_COMMIT $GOOD_COMMIT > /dev/null 2>&1 
git bisect run python guess.py $GUESSME | tail -5 | grep -o 'Your number.*'
git bisect reset > /dev/null 2>&1
