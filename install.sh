#!/bin/bash
echo ""
echo "         💥💥"
echo "        💥💥💥💥"
echo "       💥💥💥💥💥💥"
echo "      💥💥💥💥💥💥💥💥"
echo "     💥💥💥💥💥💥💥💥💥💥"
echo "    💥💥💥💥💥💥💥💥💥💥💥💥"
echo "   💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
echo "  💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
echo " 💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
echo "💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
aliases=$(pwd)"/lucidityaliases.sh"
if [ -f ~/.zshenv ] && [ $(grep lucidityaliases.sh ~/.zshenv | wc -l) == 0 ]
then
	echo "source $aliases" >> ~/.zshenv
    echo ""
	echo "Installed into ~/.zshenv"
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
echo "💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
echo " 💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
echo "  💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
echo "   💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
echo "    💥💥💥💥💥💥💥💥💥💥💥💥"
echo "     💥💥💥💥💥💥💥💥💥💥"
echo "      💥💥💥💥💥💥💥💥"
echo "       💥💥💥💥💥💥"
echo "        💥💥💥💥"
echo "         💥💥"
echo ""
