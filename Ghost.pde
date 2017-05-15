////Ghost (enemy) is super slow but can cross walls and water, deal an average amount of damage

class Ghost extends Character
{
  //ghost becomes transparent for 0.3 seconds after colliding with walls and doors
  float transTimer = 0;
  Ghost()
  {
    super();
    speed = 15;
    damage = 40;
    health = 200;
    isEtheral = true;
    initSpriteSheet("Assets/Textures/Ghost.png");
  }


  void onCollision(Actor other, Rectangle intersection)
  {
    super.onCollision(other,intersection);
    if (other instanceof Wall || other instanceof Door)
    {
      transTimer = 0.3;
    }

  }

  void update()
  {
    if (transTimer>0){transTimer -=game.deltaTime;}
    super.update();
  }

  void draw()
  {
    if (transTimer > 0)
    {
      tint(255, 127);
    }
    super.draw();
    tint(255,255);
  }


}
