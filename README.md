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
Using random number: guessing 25
[master 8ef0ffb] Your number is: 0
 1 file changed, 2 insertions(+), 2 deletions(-)
[master 34eaaea] Your number is: 1
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 7e2653c] Your number is: 2
 1 file changed, 1 insertion(+), 1 deletion(-)
[master cc893e3] Your number is: 3
 1 file changed, 1 insertion(+), 1 deletion(-)
[master d4754d7] Your number is: 4
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 1cd8210] Your number is: 5
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 7161825] Your number is: 6
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 4161d5b] Your number is: 7
 1 file changed, 1 insertion(+), 1 deletion(-)
[master a676486] Your number is: 8
 1 file changed, 1 insertion(+), 1 deletion(-)
[master d891eab] Your number is: 9
 1 file changed, 1 insertion(+), 1 deletion(-)
[master f333a44] Your number is: 10
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 945133f] Your number is: 11
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 89ab3db] Your number is: 12
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 3c256c6] Your number is: 13
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 4caecbf] Your number is: 14
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 562359e] Your number is: 15
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 899d1d3] Your number is: 16
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 28e3b97] Your number is: 17
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 13dfd34] Your number is: 18
 1 file changed, 1 insertion(+), 1 deletion(-)
[master ee8495d] Your number is: 19
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 35c0bae] Your number is: 20
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 582dd56] Your number is: 21
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 27d95d3] Your number is: 22
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 8a621fc] Your number is: 23
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 36cac2e] Your number is: 24
 1 file changed, 1 insertion(+), 1 deletion(-)
[master c32d2a7] Your number is: 25
 1 file changed, 2 insertions(+), 2 deletions(-)
[master f4ff2e4] Your number is: 26
 1 file changed, 1 insertion(+), 1 deletion(-)
[master dc29d1e] Your number is: 27
 1 file changed, 1 insertion(+), 1 deletion(-)
[master d60e854] Your number is: 28
 1 file changed, 1 insertion(+), 1 deletion(-)
[master da2d0da] Your number is: 29
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 7e54e31] Your number is: 30
 1 file changed, 1 insertion(+), 1 deletion(-)
[master a96b56c] Your number is: 31
 1 file changed, 1 insertion(+), 1 deletion(-)
[master f386027] Your number is: 32
 1 file changed, 1 insertion(+), 1 deletion(-)
[master d1a5c09] Your number is: 33
 1 file changed, 1 insertion(+), 1 deletion(-)
[master f582867] Your number is: 34
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 9d5fbf7] Your number is: 35
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 54b6167] Your number is: 36
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 31ab55c] Your number is: 37
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 352727f] Your number is: 38
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 58acedf] Your number is: 39
 1 file changed, 1 insertion(+), 1 deletion(-)
[master ec7e717] Your number is: 40
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 2da3859] Your number is: 41
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 72f8ec3] Your number is: 42
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 97082eb] Your number is: 43
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 705dabf] Your number is: 44
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 64b026b] Your number is: 45
 1 file changed, 1 insertion(+), 1 deletion(-)
[master b5c059c] Your number is: 46
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 74b9012] Your number is: 47
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 7e06646] Your number is: 48
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 851a382] Your number is: 49
 1 file changed, 1 insertion(+), 1 deletion(-)
[master d4a3682] Your number is: 50
 1 file changed, 1 insertion(+), 1 deletion(-)
[master fa3ed4e] Your number is: 51
 1 file changed, 1 insertion(+), 1 deletion(-)
[master c524369] Your number is: 52
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 60332a6] Your number is: 53
 1 file changed, 1 insertion(+), 1 deletion(-)
[master f662b75] Your number is: 54
 1 file changed, 1 insertion(+), 1 deletion(-)
[master eef6e91] Your number is: 55
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 46d02bc] Your number is: 56
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 457a0e4] Your number is: 57
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 272eb3b] Your number is: 58
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 4f65372] Your number is: 59
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 2fee788] Your number is: 60
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 2ef4bda] Your number is: 61
 1 file changed, 1 insertion(+), 1 deletion(-)
[master bbcc032] Your number is: 62
 1 file changed, 1 insertion(+), 1 deletion(-)
[master d391d1a] Your number is: 63
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 5798e7e] Your number is: 64
 1 file changed, 1 insertion(+), 1 deletion(-)
[master a6fcbbe] Your number is: 65
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 865f25c] Your number is: 66
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 6c24103] Your number is: 67
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 68c786e] Your number is: 68
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 7fd7c59] Your number is: 69
 1 file changed, 1 insertion(+), 1 deletion(-)
[master b34e744] Your number is: 70
 1 file changed, 1 insertion(+), 1 deletion(-)
[master d75dedc] Your number is: 71
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 6664441] Your number is: 72
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 3a10a34] Your number is: 73
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 91a7957] Your number is: 74
 1 file changed, 1 insertion(+), 1 deletion(-)
[master bf41ab4] Your number is: 75
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 505bf12] Your number is: 76
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 6f8ca69] Your number is: 77
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 99abadf] Your number is: 78
 1 file changed, 1 insertion(+), 1 deletion(-)
[master ec28787] Your number is: 79
 1 file changed, 1 insertion(+), 1 deletion(-)
[master bd22fe4] Your number is: 80
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 36ec739] Your number is: 81
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 3db2c66] Your number is: 82
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 2d5c412] Your number is: 83
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 0abee97] Your number is: 84
 1 file changed, 1 insertion(+), 1 deletion(-)
[master d3d2731] Your number is: 85
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 49fa52b] Your number is: 86
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 5b8c259] Your number is: 87
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 080fdb6] Your number is: 88
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 5544cfb] Your number is: 89
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 1a1ea93] Your number is: 90
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 620c501] Your number is: 91
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 75ed519] Your number is: 92
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 6ea3a85] Your number is: 93
 1 file changed, 1 insertion(+), 1 deletion(-)
[master bcd6a01] Your number is: 94
 1 file changed, 1 insertion(+), 1 deletion(-)
[master af788fd] Your number is: 95
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 943ac83] Your number is: 96
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 0bf5fcf] Your number is: 97
 1 file changed, 1 insertion(+), 1 deletion(-)
[master fa14cdd] Your number is: 98
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 36b032d] Your number is: 99
 1 file changed, 1 insertion(+), 1 deletion(-)
[master 8d619a6] Your number is: 100
 1 file changed, 1 insertion(+), 1 deletion(-)
Debug: git bisect reset
We are not bisecting.
Debug: git log --grep '^Your number is: 0$' --pretty=oneline
Debug: git log --grep '^Your number is: 100$' --pretty=oneline
Debug: Good commit: 8ef0ffb89d05870b7deb1f6110e84b73ef9dd8a4
Debug: Bad commit: 8d619a6965af244ea25a080121733e6dfed0368b
Debug: git bisect start 8d619a6965af244ea25a080121733e6dfed0368b 8ef0ffb89d05870b7deb1f6110e84b73ef9dd8a4
Bisecting: 49 revisions left to test after this (roughly 6 steps)
[d4a36821d07e0c6f0e9a06c4afba1b35fd1da391] Your number is: 50
Debug: git bisect run python guess.py
running python guess.py
Bisecting: 24 revisions left to test after this (roughly 5 steps)
[c32d2a7047922f78b994b6d3a27bb7e36c40555e] Your number is: 25
running python guess.py
Bisecting: 12 revisions left to test after this (roughly 4 steps)
[89ab3db0474700dcc641f23b31de1a952e20c67c] Your number is: 12
running python guess.py
Bisecting: 6 revisions left to test after this (roughly 3 steps)
[13dfd34b6af7fbf910132132247b206b0a563a7e] Your number is: 18
running python guess.py
Bisecting: 3 revisions left to test after this (roughly 2 steps)
[582dd56894166b9b01bde02f5e5c72aeecd73bfd] Your number is: 21
running python guess.py
Bisecting: 1 revision left to test after this (roughly 1 step)
[8a621fc27eed49215bd43e919de7562743c4521f] Your number is: 23
running python guess.py
Bisecting: 0 revisions left to test after this (roughly 0 steps)
[36cac2e4100db790ab280a6b95b2b29ebbfd4876] Your number is: 24
running python guess.py
c32d2a7047922f78b994b6d3a27bb7e36c40555e is the first bad commit
commit c32d2a7047922f78b994b6d3a27bb7e36c40555e
Author: Romain Komorn <rkomorn@dofc.org>
Date:   Thu Jun 20 04:52:37 2019 +0000

    Your number is: 25

:100644 100644 c674423a32e5e772299c0c366136ff3d68f4bb9f f9ad3b7f50fcdbdf2f9b80092858271dc6d52939 M	guess.py
bisect run success
Debug: git bisect reset
Previous HEAD position was 36cac2e Your number is: 24
Switched to branch 'master'
Your branch and 'origin/master' have diverged,
and have 102 and 1 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)
Debug: verbose specified, not resetting repository.
Debug: Make sure to reset your repo with:
Debug: git reset 404ed98a3f98ca612ddbd7b63ddbdc4fd1f54442
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

Our script creates 102 consecutive commits updating guess.py to exit with 0 if the number is less than the number being guessed, and 1 if the number is greater than or equal to the number being guessed.

In this case, a "bad" commit is a commit which exits with value 1.

After finishing, provided that `-v` was not passed, the script reset to the original commit at which the repo was checked out when `./guess.sh` was run.

## Some interesting notes learned along the way
### First "good" commit
Because we must provide git bisect with a first "good" commit, and our method looks for the first "bad" commit, we have to start at 0.

This is due to the fact that the commit provided as "good" is not tested (and is assumed to be good, rather than verified to be good using the test provided to git bisect run). As a result, if starting at 1, the first "bad" commit for 1 would actually be the commit for 2.

### Edge cases around 25, 50 and 75
The original method looked at the commit following the one where git bisect run left off. This appeared to work except for 25, 50 and 75, in which case the numbers guessed were off by 1.

This is due to the fact that that method required starting from -1 rather than 0, and to the way git bisect tracks which commits were bad, sometimes arriving "from the left" (or from older commits) and sometimes arriving "from the right" (or from newer commits).

Taking 25 as an example, git bisect would start at commit 49 (the midway point between -1 and 100), which would fail, then look at commit 24, which would pass. It would then continue its search with 36, 30, 27, 26, and finally 25. At that point, knowing that 24 was the last good commit, git bisect stopped and did not check out commit 24 again, making the next commit 26, and causing the guess.sh script to erroneously claim that the number being guessed was 26 and not 25.

### O(log n) runtime (but never better)
Somewhat counterintuitively, git bisect never does better than O(log n), even when guessing 50 (or 25 or 75).

That's because git bisect searches for the first commit that went from good to bad.

Taking 25 as an example again, finding out that the commit for 25 is bad is not enough. It must search to find that the commit for 24 is the last good commit. This means the following search: 50, 25, 12, 18, 21, 23, and finally 24.
