////////Spider(enemy) Quicker than average and deals average damage but is really easy to kill (less health)

class Spider extends Character
{
  Spider()
  {
    super();
    speed = 50;
    damage = 20;
    health = 60;
    initSpriteSheet("Assets/Textures/Spider.png");
  }
}