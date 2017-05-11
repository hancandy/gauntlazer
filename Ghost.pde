class Ghost extends Character
{
	Ghost()
	{
		super();
		speed = 40;
		damage = 60;
		health = 200;
		isEtheral = true;
		initSpriteSheet("Assets/Textures/Ghost.png");
	}
}