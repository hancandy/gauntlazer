/**
 * A Pawn that can receive input to move
 */
class Player extends Pawn
{
    // The Player index
    int index = 0;

    // Amount of keys held by this Player
    int keyAmount = 0;
    
    // Amount of gold held by this Player
    int treasureAmount = 0;
    
    // How many seconds in between taking damage?
    float damageDelay = 1.0;
    float damageTimer = 0;

    // Button states
    boolean isShootPressed = false;
    boolean isDownPressed = false;
    boolean isUpPressed = false;
    boolean isLeftPressed = false;
    boolean isRightPressed = false;

    // Configurable keys
    char shootKey;
    char upKey;
    char downKey;
    char leftKey;
    char rightKey;

    /**
     * Constructor
     */
    Player()
    {
        // Assign the Player index number, which starts from 0
        index = playerCount;

        // Set the collision bounds just a tiny bit smaller than default,
        // so the Player can fit through Doors a little better
        bounds = new Rectangle(2, 4, TILE_SIZE - 4, TILE_SIZE - 4);

        // Load sprite sheet based on index
        // We're starting from 1 in the filename, so add 1 to the index
        initSpriteSheet("Assets/Textures/T_Player_" + str(index + 1) + ".png");

        // Assign settings
        canUpdate = true;
        hasInput = true;
        isBlocking = true;
        checkCollisions = true;

        // Set values for different players
        switch(index)
        {
            case 0:
                upKey = 87; // W
                downKey = 83; // S
                leftKey = 65; // A
                rightKey = 68; // D
                shootKey = 16; // Left shift
                shootDelay = 0.1;
                ammoType = AmmoType.P1;
                break;

            case 1:
                upKey = UP;
                downKey = DOWN;
                leftKey = LEFT;
                rightKey = RIGHT;
                shootKey = 96; // Numpad 0
                shootDelay = 0.2;
                ammoType = AmmoType.P2;
				armor = 2;
                break;
                
            case 2:
                upKey = 73; //I
                downKey = 75; //K
                leftKey = 74; //J
                rightKey = 76;//L
                shootKey = 78; //N
                shootDelay = 0.4;
                ammoType = AmmoType.P3;
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
        if(code == shootKey) { isShootPressed = isPressed; }
    }

    /**
     * Updates movement
     */
    void update()
    {
        // Update the Pawn, that this Player inherits from, first
        super.update();

        // Reset velocity to 0
        velocity.x = 0; 
        velocity.y = 0; 

        // Assign new velocity based on user input
        if(isUpPressed) { velocity.y = -1; }
        if(isLeftPressed) { velocity.x = -1; } 
        if(isDownPressed) { velocity.y = 1; }
        if(isRightPressed) { velocity.x = 1; }

        // Update weapon firing
        if(isShootPressed) { shoot(); }
            
        // Check Player's position in relation to camera
        // Right    
        if(getXMax() > game.currentMap.cameraPosition.x + SCREEN_SIZE.x - CAMERA_MARGIN)
        {
            game.currentMap.moveCamera(1, 0);
        }
        
        // Left
        if(getXMin() < game.currentMap.cameraPosition.x + CAMERA_MARGIN)
        {
            game.currentMap.moveCamera(-1, 0);
        }
        
        // Top    
        if(getYMax() > game.currentMap.cameraPosition.y + SCREEN_SIZE.y - CAMERA_MARGIN)
        {
            game.currentMap.moveCamera(0, 1);
        }
        
        // Bottom
        if(getYMin() < game.currentMap.cameraPosition.y + CAMERA_MARGIN)
        {
            game.currentMap.moveCamera(0, -1);
        }

        // Update the damage timer
        if(damageTimer > 0)
        {
            damageTimer -= game.deltaTime;
        }
    }
    
    /**
     * Takes damage
     */
    void takeDamage(int amount, Actor actor)
    {
        // If damage timer is not yet ready, cancel
        if(damageTimer > 0) { return; }

        // Let the Pawn handle taking damage
        super.takeDamage(amount, actor);

        // Reset the damage timer
        damageTimer = damageDelay;
		
        
    }

    /**
     * Death logic
     */
    void die()
    {
        super.die();
        game.checkIfGameOver();
    }
}
