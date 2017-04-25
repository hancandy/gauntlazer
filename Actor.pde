/**
 * An actor is a base class for anything that appears visually on screen
 */
class Actor
{
    // Location in the world
    PVector position = new PVector(0, 0);

    // The rendereed image
    PImage sprite;

    // Bounds for collision
    Rectangle bounds = new Rectangle(0, 0, TILE_SIZE, TILE_SIZE);
   
    // Some settings that determine which checks to perform when updating the Actor
    boolean canDraw = true;
    boolean canUpdate = false;    
    boolean hasInput = false;
    boolean checkCollisions = false;
    boolean isBlocking = false;

    /**
     * Handles game logic
     */
    void update()
    {

    }

    /**
     * Handles rendering logic
     */
    void draw()
    {
        if(sprite == null) { return; }

        image(sprite, position.x, position.y);

        // Draw some debug lines
        if(DEBUG)
        {
            stroke(0, 255, 0);
            noFill();
            rect(position.x + bounds.x, position.y + bounds.y, bounds.width, bounds.height);
        }
    }

    /**
     * Handles input events
     */
    void inputKey(int code, boolean isPressed)
    {
    }

    /**
     * Handles collision events
     */
    void onCollision(Actor other, Rectangle intersection)
    {
    }
}
