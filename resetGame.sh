#!/bin/bash

if [ ! -d ../git-game ]
then
echo "Bot directory not adjacent to git-game directory. Exiting"
exit 1
fi

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Resetting git-game...${NC}"
echo -e "${YELLOW}Removing old files...${NC}"
rm -rf ../git-game
cd ..
echo -e "${YELLOW}Cloning repository...${NC}"
git clone https://github.com/hgarc014/git-game.git
cd Git-Hub-Bot
echo -e "${YELLOW}Success!${NC}"

exit 0
