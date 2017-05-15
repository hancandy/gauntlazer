//Enemy, the bat is the fastest enemy, but also the one that deals less amount of damage


class Bat extends Character
{
  Bat()
  {
    super();
    speed = 80;
    damage = 10;
    health = 100;
    initSpriteSheet("Assets/Textures/Bat.png");
  }
}