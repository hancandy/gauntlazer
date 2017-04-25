/**
 * A Pawn that can receive input to move
 */
class Player extends Pawn
{
    int index = 0;
    boolean isDownPressed = false;
    boolean isUpPressed = false;
    boolean isLeftPressed = false;
    boolean isRightPressed = false;
    char upKey;
    char downKey;
    char leftKey;
    char rightKey;

    /**
     * Constructor
     */
    Player()
    {
        // Assign the Player number
        index = playerCount;

        // Set the collision bounds just a tiny bit smaller than default
        bounds = new Rectangle(2, 4, TILE_SIZE - 4, TILE_SIZE - 4);

        // Load image
        sprite = loadImage("Assets/Textures/T_Player.png");

        // Assign settings
        canUpdate = true;
        hasInput = true;
        checkCollisions = true;

        // Set different controls for different players
        switch(index)
        {
            case 0:
                upKey = 87; // W
                downKey = 83; // S
                leftKey = 65; // A
                rightKey = 68; // D
                break;

            case 1:
                upKey = UP;
                downKey = DOWN;
                leftKey = LEFT;
                rightKey = RIGHT;
                break;
        }

        // Increment Player amount
        playerCount++;
    }

    /**
     * Handles input
     */
    void inputKey(int code, boolean isPressed)
    {
        if(code == upKey) { isUpPressed = isPressed; }
        if(code == downKey) { isDownPressed = isPressed; }
        if(code == leftKey) { isLeftPressed = isPressed; }
        if(code == rightKey) { isRightPressed = isPressed; }
    }

    /**
     * Updates movement
     */
    void update()
    {
        // Perform movement
        move();

        // Reset velocity to 0
        velocity.x = 0; 
        velocity.y = 0; 

        // Assign new velocity based on user input
        if(isUpPressed) { velocity.y = -1; }
        if(isLeftPressed) { velocity.x = -1; } 
        if(isDownPressed) { velocity.y = 1; }
        if(isRightPressed) { velocity.x = 1; }
    }
}
