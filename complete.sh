#!/bin/bash

if [[ $# -ne 1 && $# -ne 2 ]]
then
 echo "Usage: ./complete [current level] (--finish)"
 exit 1
fi

if [ ! -d ../git-game ]
then
 echo "Bot directory not adjacent to git-game directory. Exiting"
 exit 2
fi

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

cd ../git-game

if [ "$1" == "1" ]
then
 echo -e "=======\nLevel 1\n======="
 echo -e "${YELLOW}$ git log --oneline${NC}"
 git log --oneline
 echo -e "${YELLOW}$ git checkout 6402738${NC}"
 git checkout 6402738
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "2" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 2\n======="
 echo -e "${YELLOW}$ git branch -a${NC}"
 git branch -a
 echo -e "${YELLOW}$ git checkout bug${NC}"
 git checkout bug
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "3" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 3\n======="
 echo -e "${YELLOW}$ git blame cool.cpp${NC}"
 git blame cool.cpp
 echo -e "${YELLOW}$ git branch -a${NC}"
 git branch -a
 echo -e "${YELLOW}$ git checkout LinusTorvalds2014${NC}"
 git checkout LinusTorvalds2014
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "4" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 4\n======="
 echo -e "${YELLOW}$ ls -a${NC}"
 ls -a
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "5" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 5\n======="
 echo -e "${YELLOW}$ git branch -a${NC}"
 git branch -a
 echo -e "${YELLOW}$ git checkout tree${NC}"
 git checkout tree
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "6" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 6\n======="
 echo -e "${YELLOW}$ cat README.md${NC}"
 cat README.md
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "7" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 7\n======="
 echo -e "${YELLOW}$ ./outputclue.sh nextclue_input.cpp${NC}"
 ./outputclue.sh nextclue_input.cpp
 echo -e "${YELLOW}$ git merge code4life${NC}"
 git merge code4life
 echo -e "${YELLOW}$ git status${NC}"
 git status
 echo -e "${YELLOW}Fixing merge conflicts - see 'bugOverwrite.txt'${NC}"
 cat ../bugOverwrite.txt > nextclue_input.cpp
 echo -e "${YELLOW}$ git commit -am"Fixed merge conflicts"${NC}"
 git commit -am"Fixed merge conflicts"
 echo -e "${YELLOW}$ git status${NC}"
 git status
 echo -e "${YELLOW}$ ./outputclue.sh nextclue_input.cpp${NC}"
 ./outputclue.sh nextclue_input.cpp
 echo -e "${YELLOW}$ git checkout mouse${NC}"
 git checkout mouse
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "8" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 8\n======="
 echo -e "${YELLOW}$ git diff origin/bug --remember${NC}"
 git diff origin/bug --remember
 echo -e "${YELLOW}$ git branch -a${NC}"
 git branch -a
 echo -e "${YELLOW}$ git checkout Henry${NC}"
 git checkout Henry
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "9" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 9\n======="
 echo -e "${YELLOW}$ git tag -d Henry${NC}"
 git tag -d Henry
 echo -e "${YELLOW}$ git checkout Henry${NC}"
 git checkout Henry
 if [ "$2" == "--finish" ]
 then
  flag="finish"
 else
  exit 0
 fi
fi

if [[ "$1" == "10" || "$flag" == "finish" ]]
then
 echo -e "=======\nLevel 10\n======="
 echo -e "${YELLOW}$ git checkout master${NC}"
 git checkout master
 echo -e "${YELLOW}$ git remote add updater git@github.com:drami025/git-game.git${NC}"
 git remote add updater git@github.com:drami025/git-game.git
 echo -e "${YELLOW}$ git pull updater master${NC}"
 git pull updater master
 echo -e "${YELLOW}$ cat README.md${NC}"
 cat README.md
 exit 0
fi

echo "Usage: ./complete [current level] (--finish)"
exit 3