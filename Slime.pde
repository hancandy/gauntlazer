//////Slime(enemy) deals a lot of damage and is really hard to kill but is also super slow

class Slime extends Character
{
  Slime()
  {
    super();
    speed = 10;
    damage = 50;
    health = 150;
    initSpriteSheet("Assets/Textures/T_Slime.png");
  }
}