/**
 * Ghosts are super slow but can cross walls and water, deal an average amount of damage
 */
class Ghost extends Character
{
    // Ghosts become transparent for 0.3 seconds after colliding with walls and doors
    float transparentTimer = 0;

    Ghost()
    {
        super();
        speed = 15;
        damage = 40;
        health = 200;
        isEthereal = true;
        initSpriteSheet("Assets/Textures/Ghost.png");
    }

    /**
     * Event: Collision
     */
    void onCollision(Actor other, Rectangle intersection)
    {
        super.onCollision(other,intersection);

        if (other instanceof Wall || other instanceof Door)
        {
            transparentTimer = 0.3;
        }
    }

    /**
     * Runs every frame
     */
    void update()
    {
        if (transparentTimer > 0) { transparentTimer -=game.deltaTime; }

        super.update();
    }

    /**
     * Draws this Ghost with transparency
     */
    void draw()
    {
        if (transparentTimer > 0)
        {
            tint(255, 127);
        }

        super.draw();

        tint(255,255);
    }
}
