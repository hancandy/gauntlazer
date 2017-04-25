/**
 * A Pawn that can receive input to move
 */
class Player extends Pawn
{
    boolean isDownPressed = false;
    boolean isUpPressed = false;
    boolean isLeftPressed = false;
    boolean isRightPressed = false;

    /**
     * Constructor
     */
    Player()
    {
        // Set the collision bounds just a tiny bit smaller than default
        bounds = new Rectangle(2, 2, TILE_SIZE - 4, TILE_SIZE - 4);

        // Load image
        sprite = loadImage("Assets/Textures/T_Player.png");

        canUpdate = true;
        hasInput = true;
        checkCollisions = true;
    }

    /**
     * Handles input
     */
    void inputKey(int code, boolean isPressed)
    {
        switch(key)
        {
            case 'w':
              isUpPressed = isPressed;
              break;
            
            case 'a':
              isLeftPressed = isPressed;
              break;
            
            case 's':
              isDownPressed = isPressed;
              break;
            
            case 'd':
              isRightPressed = isPressed;
              break;
        }
    }

    /**
     * Updates movement
     */
    void update()
    {
        move();

        velocity.x = 0; 
        velocity.y = 0; 

        if(isUpPressed) { velocity.y = -1; }
        if(isLeftPressed) { velocity.x = -1; } 
        if(isDownPressed) { velocity.y = 1; }
        if(isRightPressed) { velocity.x = 1; }
    }
}
