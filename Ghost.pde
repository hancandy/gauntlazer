class Ghost extends Character
{
  Ghost()
  {
    super();
    speed = 40;
    damage = 60;
    health = 200;
    initSpriteSheet("Assets/Textures/Ghost.png");
  }
}