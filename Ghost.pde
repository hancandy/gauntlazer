////Ghost (enemy) is super slow but can cross walls and water, deal an average amount of damage

class Ghost extends Character
{
	Ghost()
	{
		super();
		speed = 15;
		damage = 40;
		health = 200;
		isEtheral = true;

		initSpriteSheet("Assets/Textures/Ghost_Trans.png");
	}
}