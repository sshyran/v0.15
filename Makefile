default:
	rm *.o
	clang -flto -O3 -c -IuSockets/src uSockets/src/*.c uSockets/src/eventing/*.c
	clang++ -flto -O3 -c -std=c++17 -Isrc -IuSockets/src main.cpp
	clang++ -flto -O3 -s *.o -o uWS_main -lssl -lcrypto
tests:
	rm *.o
	clang -flto -O3 -c -IuSockets/src uSockets/src/*.c uSockets/src/eventing/*.c
	clang++ -flto -O3 -c -std=c++17 -Isrc -IuSockets/src tests.cpp
	clang++ -flto -O3 -s *.o -o uWS_tests -lssl -lcrypto
