#!/bin/bash

if [ ! -d ../git-game ]
then
echo "Bot directory not adjacent to git-game directory. Exiting"
exit 1
fi

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

cd ../git-game
echo -e "=======\nLevel 9\n======="
echo -e "${YELLOW}$ cat README.md${NC}"
cat README.md
echo -e "${YELLOW}$ git tag -d Henry${NC}"
git tag -d Henry
echo -e "${YELLOW}$ git checkout Henry${NC}"
git checkout Henry

if [ "$1" == "--finish" ]
then
cd ../Git-Hub-Bot
./task09.sh --finish
else
cat README.md
cd ../Git-Hub-Bot
fi

exit 0
