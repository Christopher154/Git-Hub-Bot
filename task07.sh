#!/bin/bash

if [ ! -d ../git-game ]
then
echo "Bot directory not adjacent to git-game directory. Exiting"
exit 1
fi

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

cd ../git-game
echo -e "=======\nLevel 7\n======="
echo -e "${YELLOW}$ ./outputclue.sh nextclue_input.cpp${NC}"
./outputclue.sh nextclue_input.cpp
echo -e "${YELLOW}$ git merge code4life${NC}"
git merge code4life
echo -e "${YELLOW}$ git status${NC}"
git status
echo -e "${YELLOW}Fixing merge conflicts - see 'bugOverwrite.txt'${NC}"
cat bugOverwrite.txt > nextclue_input.cpp
echo -e "${YELLOW}$ git commit -am"Fixed merge conflicts"${NC}"
git commit -am"Fixed merge conflicts"
echo -e "${YELLOW}$ git status${NC}"
git status
echo -e "${YELLOW}$ ./outputclue.sh nextclue_input.cpp${NC}"
./outputclue.sh nextclue_input.cpp
echo -e "${YELLOW}$ git checkout mouse${NC}"
git checkout mouse

if [ "$1" == "--finish" ]
then
cd ../Git-Hub-Bot
./task08.sh --finish
else
cat README.md
cd ../Git-Hub-Bot
fi

exit 0
