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
if [ -f ~/.zshenv ]
then
	echo "source $aliases" >> ~/.zshenv
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
