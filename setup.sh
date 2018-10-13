echo "shellcode setup script!"

echo "python2 ~/shellcode/shellcode.py" > shellcode
chmod +x shellcode

if uname -a | grep Android > /dev/null 2>&1 #termux
then
	mv shellcode ~/../usr/bin
elif uname -a | grep Darwin > /dev/null 2>&1 #mac os
then
	sudo mv shellcode /usr/local/bin
elif uname -a | grep Linux > /dev/null 2>&1 #linux
then
	sudo mv shellcode /usr/local/bin
else
	echo "architecture not found!"
	exit
fi

echo "use command shellcode to create!"
