############################### This automates the shellcode
#  @shaolin.deb on instagram  # creation. This is very helpful
# odinsecurity@protonmail.com # for CTF's. Use the contact
############################### details to reach me.

import sys

def main():
	#handling arguments
	if len(sys.argv) < 3:
		print "usage: shellcode <file> <output>"
		exit(0)

	bin = sys.argv[1]
	output = sys.argv[2]

	#tests if bin exists
	try:
		s = open(bin, "rb")
	except IOError:
		print bin + " doesn't exist!"
		exit(0)

	shellcode = "\""

	#creates shellcode
	for byte in s.read():
		shellcode += "\\x" + byte.encode("hex")
	shellcode += "\""
	print shellcode

	#creates output file
	try:
		o = open(output, "w+")
		o.write(shellcode)
		print "Shellcode output to: " + output
		exit(1)
	except IOError:
		print "Shellcode didn't output."
		exit(1)

main()
