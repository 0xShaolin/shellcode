echo "shellcode setup script!"

echo "python2 ~/shellcode/shellcode.py" > shellcode

if uname -a | grep Android > /dev/null 2>&1 #termux
then
	mv shellcode ~/../usr/bin
elif uname -a | grep Darwin > /dev/null 2>&1 #mac os
then
	mv shellcode /usr/local/bin
elif uname -a | grep Linux > /dev/null 2>&1 #linux
then
	mv shellcode /usr/local/bin
else
	echo "architecture not found!"
	exit

echo "use command shellcode to create!"
