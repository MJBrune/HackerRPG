#include "playingState.h"


playingState::playingState(ResourceManager& resMgr)
	:
	resMgrRef(resMgr),
	playerTank(resMgrRef),
	ml("./maps")
{
	playerTank.loadFromFile("./assets/tanks/tank0.json");
	ml.Load("test.tmx");
	playerTank.move(200,200);
}


playingState::~playingState()
{
}

void playingState::draw(sf::RenderWindow& window)
{
	window.draw(ml);
	playerTank.draw(window);
}

void playingState::update(sf::RenderWindow& window)
{
	playerTank.update(window);
}

void playingState::handleInput(sf::Event handleEvent)
{
	playerTank.handleInput(handleEvent);
}