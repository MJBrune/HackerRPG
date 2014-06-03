#include "tank.h"

tank::tank(ResourceManager& resMgr)
	:
	resMgrRef(resMgr),
	facing(0,-1)
{
}

void tank::draw(sf::RenderWindow& window)
{
	window.draw(tankSprite);
	window.draw(tankTurrentSprite);
}

void tank::move(float x, float y)
{
	tankSprite.setPosition(x,y);
	tankTurrentSprite.setPosition(x, y);
}

void tank::currentMove(float x, float y, tmx::MapLoader& ml)
{
	bool collision = false;
	for(auto layer = ml.GetLayers().begin(); layer != ml.GetLayers().end(); ++layer)
	{
		if(layer->name == "Collision")
		{
			for(auto object = layer->objects.begin(); object != layer->objects.end(); ++object)
			{
				if (collision == false)
				{
					collision = object->Contains(sf::Vector2f(x+tankSprite.getPosition().x, y+tankSprite.getPosition().y));
				}
			}
		}
	}
	if (!collision)
	{
		move(x+tankSprite.getPosition().x, y+tankSprite.getPosition().y);
	}
}

void tank::handleInput(sf::Event handleEvent)
{
	if (handleEvent.type == sf::Event::EventType::MouseMoved)
		setTurret(sf::Vector2f(handleEvent.mouseMove.x,handleEvent.mouseMove.y));
}

void tank::update(sf::RenderWindow& window, tmx::MapLoader& ml)
{
	setTurret(sf::Vector2f(sf::Mouse::getPosition(window)));
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::W))
		currentMove( sin(tankSprite.getRotation()*(3.14159265/180)) *speed, cos((tankSprite.getRotation()-180)*(3.14159265/180)) *speed, ml);
	else if (sf::Keyboard::isKeyPressed(sf::Keyboard::S))
		currentMove( sin(tankSprite.getRotation()*(3.14159265/180)) *-speed, cos((tankSprite.getRotation()-180)*(3.14159265/180)) *-speed, ml);
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::A))
		tankSprite.rotate(-mobility);
	else if (sf::Keyboard::isKeyPressed(sf::Keyboard::D))
		tankSprite.rotate(mobility);;
}

void tank::loadFromFile(std::string fileName)
{
	Json::Value root;   // will contains the root value after parsing.
	Json::Reader reader;
	std::ifstream jsonFile(fileName, std::ifstream::binary);
	std::string error;
	bool parsingSuccessful = reader.parse( jsonFile, root, false );
	if ( !parsingSuccessful )
	{
		// report to the user the failure and their locations in the document.
		std::cout  << reader.getFormatedErrorMessages()
			<< "Could not parse tank file " << fileName << " it will not be loaded!\n";
	}
	try
	{
		sf::Vector2f turretOrigin;
		for(unsigned int i = 0; i < root.getMemberNames().size(); ++i)
		{
			if (root.getMemberNames()[i] == "turretImage")
			{
				resMgrRef.loadTexture(root[root.getMemberNames()[i]].asString());
				tankTurrentSprite.setTexture(*resMgrRef.getTexture(root[root.getMemberNames()[i]].asString()));
			}
			if (root.getMemberNames()[i] == "tankImage")
			{
				resMgrRef.loadTexture(root[root.getMemberNames()[i]].asString());
				tankSprite.setTexture(*resMgrRef.getTexture(root[root.getMemberNames()[i]].asString()));
			}

			if (root.getMemberNames()[i] == "speed")
				speed = root[root.getMemberNames()[i]].asInt();
			if (root.getMemberNames()[i] == "mobility")
				mobility = root[root.getMemberNames()[i]].asInt();
			if (root.getMemberNames()[i] == "turretOriginX")
				turretOrigin.x = root[root.getMemberNames()[i]].asInt();
			if (root.getMemberNames()[i] == "turretOriginY")
				turretOrigin.y = root[root.getMemberNames()[i]].asInt();
			if (root.getMemberNames()[i] == "turretOffsetX")
				turretOffset.x = root[root.getMemberNames()[i]].asInt();
			if (root.getMemberNames()[i] == "turretOffsetY")
				turretOffset.y = root[root.getMemberNames()[i]].asInt();
		}
		tankTurrentSprite.setOrigin(turretOrigin);
		tankSprite.setOrigin(turretOffset);
	}
	catch (...)
	{
		std::cout << "Failed to load tank file: " << fileName  << " at: " << error << std::endl;
	}
	jsonFile.close();
}

void tank::setTurret(sf::Vector2f mousePoint)
{
	auto angle = thor::signedAngle(mousePoint - tankTurrentSprite.getPosition(), facing);
	tankTurrentSprite.rotate(-angle);
	thor::rotate(facing, -angle);
}