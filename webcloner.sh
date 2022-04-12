#!/bin/bash

printf '\33c\e[3J'

RED='\033[0;31m'
NC='\033[0m'

echo -e "
${RED}ARE YOU ROOTED ?
"${NC}

echo "TWİTTER   ====> 1
INSTAGRAM ====> 2
TSF       ====> 3
LINKEDIN  ====> 4
FACEBOOK    ====> 5
CUSTOM INPUT ====>6"

read number

if [[ "$number" -eq "1" ]]
then 
	curl https://twitter.com/home > /Library/WebServer/Documents/index.html.en
elif [[ "$number" -eq "2" ]]
then
	curl https://www.instagram.com > /Library/WebServer/Documents/index.html.en
elif [[ "$number" -eq "3" ]]
then	
	curl https://tsf.org.tr > /Library/WebServer/Documents/index.html.en
elif [[ "$number" -eq "4" ]]
then
	curl https://www.linkedin.com/feed/ > /Library/WebServer/Documents/index.html.en
elif [[ "$number" -eq "5" ]]
then
	curl https://www.facebook.com > /Library/WebServer/Documents/index.html.en
else
	read url
	curl $url > /Library/WebServer/Documents/index.html.en
fi
