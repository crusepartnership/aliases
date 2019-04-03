#!/bin/bash

cat << "EOF"
#### INSTALLING ####
  ___  _ _
 / _ \| (_)
/ /_\ \ |_  __ _ ___  ___  ___
|  _  | | |/ _` / __|/ _ \/ __|
| | | | | | (_| \__ \  __/\__ \
\_| |_/_|_|\__,_|___/\___||___/
EOF

aliases=$(pwd)"/lucidityaliases.sh"
if [ -f ~/.zshrc ] && [ $(grep lucidityaliases.sh ~/.zshrc | wc -l) == 0 ]
then
	echo "source $aliases" >> ~/.zshrc
    echo ""
	echo "Installed into ~/.zshrc"
    echo ""
elif [ -f ~/.bash_profile ] && [ $(grep lucidityaliases.sh ~/.bash_profile | wc -l) == 0 ]
then
	echo "source $aliases" >> ~/.bash_profile
    echo ""
	echo "Installed into ~/.bash_profile"
    echo ""
else
    echo ""
    echo "Aliases Already Installed!"
    echo ""
fi

cat << "EOF"
#### Please close / reopen your terminal ####
EOF


