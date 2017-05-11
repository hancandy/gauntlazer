/**
 * A an object type for killing Actors
 */
enum AmmoType
{
    None,
    P1,
    P2,
    P3
}

class Projectile extends Actor
{
    Pawn instigator;
    PVector direction = new PVector(0, 0);
    int damage;

    /**
     * Constructor
     */
    Projectile(Pawn ins)
    {
        instigator = ins;
 
        // Adopt position and direction from instigator 
        position = new PVector(instigator.getCenterX(), instigator.getCenterY());
        direction = new PVector(instigator.direction.x, instigator.direction.y);
        
        // Set ammo type
        switch(instigator.ammoType)
        {
            case P1:
                damage = 15;
                sprite = loadImage("Assets/Textures/P1.png");
                break;

            case P2:
                damage = 25;
                sprite = loadImage("Assets/Textures/P2.png");
                break;

            case P3:
                damage = 45;
                sprite = loadImage("Assets/Textures/P3.png");
                break;
        }


        // Make sure it updates and checks for collisions
        canUpdate = true;
        checkCollisions = true;

        // Change shape according to direction
        if(direction.x != 0)
        {
            bounds.width = 8;
            bounds.height = 2;
        }
        else if(direction.y != 0)
        {
            bounds.height = 8;
            bounds.width = 2;
        }
    }

    /**
     * Updates the projectile position
     */
    void update()
    {
        // Fly along the indicated direction
        position.x += direction.x * PROJECTILE_SPEED * game.deltaTime;
        position.y += direction.y * PROJECTILE_SPEED * game.deltaTime;

        // Check Projectile lifetime
        if(lifetime > PROJECTILE_LIFETIME)
        {
            game.currentMap.destroy(this);
        }
    }

    /**
     * Draws the projectile
     */
    void draw()
    {
        image(sprite, position.x, position.y);
    }

    /**
     * Collision event
     */
    void onCollision(Actor other, Rectangle intersection)
    {
        // Projectiles don't collide with other Pawns of same type
        if(
            (instigator instanceof Player && other instanceof Player) ||
            (instigator instanceof Character && other instanceof Character)
        ) { return; }

        // If the collided Actor is a Pawn, hurt them
        if(other instanceof Pawn)
        {
            Pawn pawn = (Pawn)other;

            pawn.takeDamage(damage, this);
            game.currentMap.destroy(this);
            return;
        }

        // If the collided Actor is blocking, destroy this projectile
        if(other.isBlocking && other instanceof Water == false) {
            game.currentMap.destroy(this);
            return;
        }

    }
}
