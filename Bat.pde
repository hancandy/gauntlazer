/**
 * The bat is the fastest enemy, but also the one that deals the least damage
 */
class Bat extends Character
{
    Bat()
    {
        super();

        speed = 80;
        damage = 10;
        health = 100;
        visionRange = 50;
        
        initSpriteSheet("Assets/Textures/Bat.png");
    }
}
