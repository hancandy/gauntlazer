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
