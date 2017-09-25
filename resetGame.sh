#!/bin/bash

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

cd ..
echo -e "${YELLOW}Resetting git-game...${NC}"

if [ -d git-game ]
then
echo -e "${YELLOW}Removing old files...${NC}"
rm -rf git-game
fi

echo -e "${YELLOW}Cloning repository...${NC}"
git clone https://github.com/hgarc014/git-game.git
echo -e "${YELLOW}Success!${NC}"
