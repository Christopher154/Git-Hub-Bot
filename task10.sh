#!/bin/bash

if [ ! -d ../git-game ]
then
echo "Bot directory not adjacent to git-game directory. Exiting"
exit 1
fi

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

cd ../git-game
echo -e "=======\nLevel 10\n======="
echo -e "${YELLOW}$ cat README.md${NC}"
cat README.md
echo -e "${YELLOW}$ git checkout master${NC}"
git checkout master
echo -e "${YELLOW}$ git remote add updater git@github.com:drami025/git-game.git${NC}"
git remote add updater git@github.com:drami025/git-game.git
echo -e "${YELLOW}$ git pull updater master${NC}"
git pull updater master
echo -e "${YELLOW}$ cat README.md${NC}"
cat README.md

cd ../Git-Hub-Bot
echo "${YELLOW} Finished the game!"
