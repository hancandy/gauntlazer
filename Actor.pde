/**
 * An actor is a base class for anything that appears inside the Map
 */
class Actor
{
    // Location in the world
    PVector position = new PVector(0, 0);

    // Lifetime
    float lifetime = 0;

    // The rendereed image
    PImage sprite = null;
    SpriteSheet spriteSheet = null;

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
        if(spriteSheet != null)
        {
            spriteSheet.update();
        }
    }

    /**
     * Handles rendering logic
     */
    void draw()
    {
        if(sprite != null)
        {
            image(sprite, position.x, position.y);
        }

        if(spriteSheet != null)
        {
            spriteSheet.draw(position.x, position.y);
        }

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

    /**
     * Get the calculated minimum X axis position
     */
    float getXMin()
    {
        return position.x + bounds.x;
    }
    
    /**
     * Get the calculated maximum X axis position
     */
    float getXMax()
    {
        return position.x + bounds.x + bounds.width;
    }
    
    /**
     * Get the calculated minimum Y axis position
     */
    float getYMin()
    {
        return position.y + bounds.y;
    }
    
    /**
     * Get the calculated maximum Y axis position
     */
    float getYMax()
    {
        return position.y + bounds.y + bounds.height;
    }

    /**
     * Get the calculated center X position
     */
    float getCenterX()
    {
        return position.x + bounds.x + bounds.width / 2;
    }
    
    /**
     * Get the calculated center Y position
     */
    float getCenterY()
    {
        return position.y + bounds.y + bounds.height / 2;
    }
}