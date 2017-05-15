//Ghoul(enemy) can shoot bullets like the characters, average speed and damage.

class Ghoul extends Character
{
    Ghoul()
    {
        super();
        speed = 30;
        initSpriteSheet("Assets/Textures/T_Ghoul.png");
        ammoType = AmmoType.P1;
    }
}