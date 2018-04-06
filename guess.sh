#!/bin/bash

function echo_usage()
{
	echo "Usage: ./guess.sh [-v] [integer between 1 and 100]"
}

function echo_random()
{
	echo $((1 + RANDOM % 100))
}

function verbose_print()
{
	if [ $VERBOSE -eq 1 ]; then
		echo -e Debug: $@
	fi
}

# Default variables:
VERBOSE=0
PICKRANDOM=0
GUESSME=''

# Process arguments:
if [ $# -eq 2 ]; then
	if [ $1 = '-v' ]; then
		VERBOSE=1
		GUESSME=$2
	else
		print_usage
	fi
elif [ $# -eq 1 ]; then
	if [ $1 = '-v' ]; then
		VERBOSE=1
		PICKRANDOM=1
	else
		GUESSME=$1
	fi
elif [ $# -eq 0 ]; then
	PICKRANDOM=1
else
	print_usage
fi

if [ $PICKRANDOM -eq 1 ]; then
	GUESSME=$(echo_random)
	echo "Using random number: guessing $GUESSME"
else
	if [ \( $GUESSME -gt 100 \) -o \( $GUESSME -lt 1 \) ]; then
		echo_usage
		exit
	fi
	echo "Using provided number: guessing $GUESSME"
fi


if [ $VERBOSE -ne 1 ]; then
	QUIESCE='> /dev/null 2>&1'
fi

# Reset our git bisect just to be safe
GIT_BISECT_RESET="git bisect reset"
verbose_print $GIT_BISECT_RESET
eval $GIT_BISECT_RESET $QUIESCE

# Get our good and bad Git commit IDs after reseting:
# They are the most recent commits to have "Your number is 0" and
# "Your number is 100" as commit messages respectively.

GOOD_COMMIT_CMD="git log --grep '^Your number is: 0\$' --pretty=oneline"
verbose_print $GOOD_COMMIT_CMD
BAD_COMMIT_CMD="git log --grep '^Your number is: 100\$' --pretty=oneline"
verbose_print $BAD_COMMIT_CMD

GOOD_COMMIT=$(eval $GOOD_COMMIT_CMD | awk '{print $1}' | head -1)
BAD_COMMIT=$(eval `echo $BAD_COMMIT_CMD` | awk '{print $1}' | head -1)
verbose_print "Good commit: $GOOD_COMMIT"
verbose_print "Bad commit: $BAD_COMMIT"

# Start our bisect:
GIT_BISECT_START="git bisect start $BAD_COMMIT $GOOD_COMMIT"
verbose_print $GIT_BISECT_START
eval $GIT_BISECT_START $QUIESCE

# Run our bisection automatically with our test:
GIT_BISECT_RUN="git bisect run python guess.py $GUESSME"
verbose_print $GIT_BISECT_RUN
eval $GIT_BISECT_RUN $QUIESCE

# Git bisect leaves us at the last good commit, so move forward by one:
# First, find current commit:
GIT_CURRENT_COMMIT=`git log --pretty=oneline | head -1 | awk '{print \$1}'`

# Then find next commit:
GIT_NEXT_COMMIT=`git log --reverse --ancestry-path $GIT_CURRENT_COMMIT^..master --pretty=oneline | head -2 | tail -1 | awk '{print $1}'`

verbose_print "Current commit is $GIT_CURRENT_COMMIT, next commit is $GIT_NEXT_COMMIT"

GUESS=`git show $GIT_NEXT_COMMIT -q | grep -o 'Your number is.*$'`


# Reset after finishing:
verbose_print $GIT_BISECT_RESET
eval $GIT_BISECT_RESET $QUIESCE

echo $GUESS
