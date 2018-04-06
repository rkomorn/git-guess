# Git Guess

"Git Guess" uses git bisect to power an automated version of the guessing game, a classic introduction-to-programming problem/demo.

## Getting Started

Clone this repository, then run guess.sh .

### Prerequisites

You will need git and bash.

### Installing

Clone the repository.

## Usage

### Using a random number
```
git-guess $ ./guess.sh 
Using random number: guessing 27
Your number is: 27
```
### Using a number provided by the user
```
git-guess $ ./guess.sh 50
Using provided number: guessing 50
Your number is: 50
```

### Showing verbose output
```
git-guess $ ./guess.sh -v
Using random number: guessing 5
Debug: git bisect reset
We are not bisecting.
Debug: git log --grep '^Your number is: -1$' --pretty=oneline
Debug: git log --grep '^Your number is: 100$' --pretty=oneline
Debug: Good commit: 7eecbe8e615d07ad01e1f356a411e21cc78049b9
Debug: Bad commit: e467507b1dca0b86862b4c7c8c163fbf92ab6471
Debug: git bisect start e467507b1dca0b86862b4c7c8c163fbf92ab6471 7eecbe8e615d07ad01e1f356a411e21cc78049b9
Bisecting: 50 revisions left to test after this (roughly 6 steps)
[3ce92280f2f2308e69e85b7557021089c16970ac] Your number is: 49
Debug: git bisect run python guess.py 5
running python guess.py 5
Bisecting: 24 revisions left to test after this (roughly 5 steps)
[f49bdeaad1df049c7ccbcd6e15b42e519a432640] Your number is: 24
running python guess.py 5
Bisecting: 12 revisions left to test after this (roughly 4 steps)
[0b10844f75cc9226052d9a22948e416db377b704] Your number is: 11
running python guess.py 5
Bisecting: 5 revisions left to test after this (roughly 3 steps)
[72dfd843e40d94d8364bc842ab303f4c9bd2df6e] Your number is: 5
running python guess.py 5
Bisecting: 2 revisions left to test after this (roughly 2 steps)
[6d3bf42c2f1363d06ef642d032b3277205b653da] Your number is: 2
running python guess.py 5
Bisecting: 0 revisions left to test after this (roughly 1 step)
[b91a31d7e95915a95fc63f67ae604e16fb0f6171] Your number is: 4
running python guess.py 5
72dfd843e40d94d8364bc842ab303f4c9bd2df6e is the first bad commit
commit 72dfd843e40d94d8364bc842ab303f4c9bd2df6e
Author: Romain Komorn <rkomorn@dofc.org>
Date:   Fri Apr 6 21:48:25 2018 +0000

    Your number is: 5

:100644 100644 0e17edd89fd6a72a1e47433e8b122556f12c06eb 9afc3853a06ef7c14b9104b6bc9b8be73ddc985e M	guess.py
bisect run success
Debug: Current commit is , next commit is
Debug: git bisect reset
Previous HEAD position was b91a31d... Your number is: 4
Switched to branch 'master'
```

## Built With

* [Git](http://git-scm.com/) - The provider and git bisect
* [bash](https://www.gnu.org/software/bash/) - Used to wrap around git commands to help.

## Contributing

Submit pull requests if you so fancy.

## Authors

* **Romain Komorn** - *Initial work* - [rkomorn](https://github.com/rkomorn)

See also the list of [contributors](https://github.com/rkomorn/git-guess/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Why?

This is meant as an introduction to the concept of git bisect and how it uses binary search to find the first "bad" commit.
