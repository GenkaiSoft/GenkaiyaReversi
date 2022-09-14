#!/bin/bash
x86_64-w64-mingw32-windres resource.rc -o resource.o
x86_64-w64-mingw32-g++ window.cpp board.cpp resource.o -static -lstdc++ -mwindows -s -O3 -o reversi
arm-mingw32ce-windres resource.rc -o resource.o
arm-mingw32ce-g++ window.cpp board.cpp resource.o -s -O3 -o AppMain -lcommctrl
rm resource.o