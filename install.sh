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
#!/bin/bash
aliases=$(pwd)"/lucidityaliases.sh"
if [ -f ~/.zshrc ]
then
	echo "source $aliases" >> ~/.zshrc
fi

if [ -f ~/.bash_profile ]
then
	echo "source $aliases" >> ~/.bash_profile
fi
echo ""
echo "  Aliases Installed!"
echo ""
echo "💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥"
echo ""
