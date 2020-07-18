all: singleplayer multiplayer

singleplayer:
	g++ -c -std=c++11 Pong.cpp
	g++ Pong.o -std=c++11 -o Pong -lsfml-system -lsfml-window -lsfml-graphics -lsfml-audio

multiplayer:
	g++ -c -std=c++11 PongMultiplayer.cpp
	g++ PongMultiplayer.o -std=c++11 -o PongMultiplayer -lsfml-system -lsfml-window -lsfml-graphics -lsfml-audio


clean:
	rm *.o
	rm Pong
	rm PongMultiplayer