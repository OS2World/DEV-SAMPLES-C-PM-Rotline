# nmake makefile
#
# Tools used:
#  Compile::Watcom Resource Compiler
#  Compile::GNU C
#  Make: GNU make
all : rotline.exe

rotline.exe : rotline.obj rotline.def 
	gcc -Zomf rotline.obj rotline.def -o rotline.exe
	wrc rotline.res

rotline.obj : rotline.c rotline.h 
	gcc -Wall -Zomf -c -O2 rotline.c -o rotline.obj

rotline.res : rotline.rc 
	wrc -r rotline.rc

clean :
	rm -rf *exe *RES *obj