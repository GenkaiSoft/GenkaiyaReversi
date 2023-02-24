#!/bin/bash


i686-w64-mingw32-g++ -c board.cpp
i686-w64-mingw32-g++ -c window.cpp
i686-w64-mingw32-windres resource.rc -o resource.o
i686-w64-mingw32-g++ resource.o window.o board.o -s -O3 -mwindows -o GenkaiyaReversi/GenkaiyaReversi.exe
rm WindowsNT-i686.zip
cp bmp.zip WindowsNT-i686.zip
zip WindowsNT-i686.zip GenkaiyaReversi/GenkaiyaReversi.exe

x86_64-w64-mingw32-g++ -c board.cpp
x86_64-w64-mingw32-g++ -c window.cpp
x86_64-w64-mingw32-windres resource.rc -o resource.o
x86_64-w64-mingw32-g++ window.o board.o resource.o -s -O3 -o GenkaiyaReversi/GenkaiyaReversi.exe -mwindows
rm WindowsNT-x86_64.zip
cp bmp.zip WindowsNT-x86_64.zip
zip WindowsNT-x86_64.zip GenkaiyaReversi/GenkaiyaReversi.exe

arm-mingw32ce-g++ -c board.cpp
arm-mingw32ce-g++ -c window.cpp
arm-mingw32ce-windres resource.rc -o resource.o
arm-mingw32ce-g++ window.o board.o resource.o -s -O3 -march=armv5tej -mcpu=arm926ej-s -o GenkaiyaReversi/GenkaiyaReversi.exe -Lbin/ -lcommctrl
rm WindowsCE-arm.zip
cp bmp.zip WindowsCE-arm.zip
zip WindowsCE-arm.zip GenkaiyaReversi/GenkaiyaReversi.exe
rm WindowsCE-arm.Brain.zip
cp bmp.zip WindowsCE-arm.Brain.zip
mv GenkaiyaReversi/GenkaiyaReversi.exe GenkaiyaReversi/AppMain_.exe
zip WindowsCE-arm.Brain.zip GenkaiyaReversi/AppMain_.exe
zip WindowsCE-arm.Brain.zip GenkaiyaReversi/AppMain.exe GenkaiyaReversi/index.din GenkaiyaReversi/AppMain.cfg
rm *.o
rm GenkaiyaReversi/AppMain_.exe