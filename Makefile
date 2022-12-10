bin/WinNT.exe: bin/NT/resource.o bin/NT/window.o bin/NT/board.o
	x86_64-w64-mingw32-g++ bin/NT/window.o bin/NT/board.o bin/NT/resource.o -s -O3 -o bin/WinNT.exe -mwindows

bin/NT/resource.o: resource.rc reversi.ico menu.h
	x86_64-w64-mingw32-windres resource.rc -o bin/NT/resource.o

bin/NT/window.o: window.cpp menu.h header.hpp board.hpp
	x86_64-w64-mingw32-g++ -c window.cpp -o bin/NT/window.o

bin/NT/board.o: board.cpp header.hpp board.hpp
	x86_64-w64-mingw32-g++ -c board.cpp -o bin/NT/board.o

bin/WinCE.exe: bin/CE/resource.o bin/CE/window.o bin/CE/board.o
	arm-mingw32ce-g++ bin/CE/window.o bin/CE/board.o bin/CE/resource.o -s -O3 -march=armv5tej -mcpu=arm926ej-s -o bin/WinCE.exe -lcommctrl

bin/CE/resource.o: resource.rc reversi.ico menu.h
	arm-mingw32ce-windres resource.rc -o bin/CE/resource.o

bin/CE/window.o: window.cpp menu.h header.hpp board.hpp
	arm-mingw32ce-g++ -c window.cpp -o bin/CE/window.o

bin/CE/board.o: board.cpp header.hpp board.hpp
	arm-mingw32ce-g++ -c board.cpp -o bin/CE/board.o
