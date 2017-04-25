/**
 * A Pawn is an Actor that can move and has health
 */
class Pawn extends Actor
{
    float speed = 100.0;
    float health = 100.0;
    PVector velocity = new PVector(0, 0);

    /**
     * Applies velocity to the Pawn's position
     */
    void move()
    {
        position.x += velocity.x * speed * game.deltaTime;
        position.y += velocity.y * speed * game.deltaTime;
    }

    /**
     * Collision event
     */
    void onCollision(Actor other, Rectangle intersection)
    {
        if(!other.isBlocking) { return; }

        // If the intersection happened above or below the pawn, set vertical velocity to 0
        if(intersection.y < position.y + bounds.height / 2 && velocity.y < 0) { velocity.y = 0; }
        if(intersection.y > position.y + bounds.height / 2 && velocity.y > 0) { velocity.y = 0; }

        // If the intersection happened to the left or right of the pawn, set vertical velocity to 0
        if(intersection.x < position.x + bounds.width / 2 && velocity.x < 0) { velocity.x = 0; }
        if(intersection.x > position.x + bounds.width / 2 && velocity.x > 0) { velocity.x = 0; }
    }
}
