#ifndef _PLAYING_H
#define _PLAYING_H
#include "tank.h"
#include "ResourceManager.h"
#include "tmx/MapLoader.h"

class playingState
{
private:
	ResourceManager& resMgrRef;
	tank playerTank;
	tmx::MapLoader ml;
public:
	playingState(ResourceManager& resMgr);
	~playingState();
	void draw(sf::RenderWindow& window);
	void update(sf::RenderWindow& window);
	void handleInput(sf::Event handleEvent);
};
#endif