/**
 * A an object type for killing bad guys
 */
class Projectile extends Actor
{
    PVector direction = new PVector(0, 0);
    int damage = 50;

    /**
     * Constructor
     */
    Projectile(PVector p, PVector d)
    {
        // Set initial position
        position.x = p.x;
        position.y = p.y;

        // Set initial direction
        direction.x = d.x;
        direction.y = d.y;

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
    }

    /**
     * Draws the projectile
     */
    void draw()
    {
        fill(255, 0, 0);
        noStroke();
        rect(position.x, position.y, bounds.width, bounds.height);
    }

    /**
     * Collision event
     */
    void onCollision(Actor other, Rectangle intersection)
    {
        // If the collided Actor is blocking, destroy this projectile
        if(other.isBlocking) {
            game.currentMap.destroy(this);
            return;
        }

        // If the collided Actor is a Character, hurt them
        if(other instanceof Character)
        {
            Character character = (Character)other;

            character.takeDamage(damage);
        }
    }
}
