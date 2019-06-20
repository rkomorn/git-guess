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

# Remember the current commit:
STARTING_COMMIT=$(git rev-parse HEAD)

# Generate 101 commits that start exiting with value 1 at the random number:
for COMMIT_NUM in $(seq 0 100); do
	if [ $COMMIT_NUM -lt $GUESSME ]; then
		EXIT_VALUE=0
		BROKEN_STATUS="not broken"
	else
		EXIT_VALUE=1
		BROKEN_STATUS="broken"
	fi
	cat <<-EOF > guess.py
	# commit number: $COMMIT_NUM
	# broken status: $BROKEN_STATUS
	import sys
	sys.exit($EXIT_VALUE)
	EOF
	eval git commit -am \"Your number is: $COMMIT_NUM\" $QUIESCE
done

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
GIT_BISECT_RUN="git bisect run python guess.py"
verbose_print $GIT_BISECT_RUN
QUIET_GREP=''
if [ $VERBOSE -ne 1 ]; then
	QUIET_GREP="| tail -4 | grep -o 'Your number is:.*'"
fi	
eval $GIT_BISECT_RUN $QUIET_GREP

# Reset after finishing:
verbose_print $GIT_BISECT_RESET
eval $GIT_BISECT_RESET $QUIESCE

# Reset to original commit:
GIT_RESET="git reset $STARTING_COMMIT"
if [ $VERBOSE -eq 0 ]; then
	eval $GIT_RESET $QUIESCE
else
	verbose_print verbose specified, not resetting repository.
	verbose_print Make sure to reset your repo with:
	verbose_print $GIT_RESET
fi
