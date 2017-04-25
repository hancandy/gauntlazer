/**
 * A Pawn that can receive input to move
 */
class Player extends Pawn
{
    int index = 0;
    int ammo = 100;
    int keyAmount = 0;

    // Timers
    float shootTimer = 0;

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
        // Assign the Player number
        index = playerCount;

        // Set the collision bounds just a tiny bit smaller than default
        bounds = new Rectangle(2, 4, TILE_SIZE - 4, TILE_SIZE - 4);

        // Load sprite sheet
        spriteSheet = new SpriteSheet("Assets/Textures/T_Player_" + str(index + 1) + ".png");

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
                shootKey = 16; // Left shift
                break;

            case 1:
                upKey = UP;
                downKey = DOWN;
                leftKey = LEFT;
                rightKey = RIGHT;
                shootKey = 96; // Numpad 0
                break;
        }
        
        // Register animations
        spriteSheet.addAnimation("IdleDown", new Rectangle[] {
            new Rectangle(0, 0, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("IdleLeft", new Rectangle[] {
            new Rectangle(0, 16, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("IdleRight", new Rectangle[] {
            new Rectangle(0, 32, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("IdleUp", new Rectangle[] {
            new Rectangle(0, 48, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("WalkDown", new Rectangle[] {
            new Rectangle(16, 0, 16, 16),
            new Rectangle(0, 0, 16, 16),
            new Rectangle(32, 0, 16, 16),
            new Rectangle(0, 0, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("WalkLeft", new Rectangle[] {
            new Rectangle(16, 16, 16, 16),
            new Rectangle(0, 16, 16, 16),
            new Rectangle(32, 16, 16, 16),
            new Rectangle(0, 16, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("WalkRight", new Rectangle[] {
            new Rectangle(16, 32, 16, 16),
            new Rectangle(0, 32, 16, 16),
            new Rectangle(32, 32, 16, 16),
            new Rectangle(0, 32, 16, 16)
        }, true);
        
        spriteSheet.addAnimation("WalkUp", new Rectangle[] {
            new Rectangle(16, 48, 16, 16),
            new Rectangle(0, 48, 16, 16),
            new Rectangle(32, 48, 16, 16),
            new Rectangle(0, 48, 16, 16)
        }, true);

        spriteSheet.play("IdleDown");

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
        super.update();

        // Decrement shoot timer
        if(shootTimer > 0) { shootTimer -= game.deltaTime; }

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

        // Update weapon firing
        if(isShootPressed) { shoot(); }

        // Play down animation
        if(direction.y > 0)
        {
            if(velocity.y > 0) { spriteSheet.play("WalkDown"); }
            else { spriteSheet.play("IdleDown"); }
        }
        
        // Play up animation
        else if(direction.y < 0)
        {
            if(velocity.y < 0) { spriteSheet.play("WalkUp"); }
            else { spriteSheet.play("IdleUp"); }
        }
        
        // Play left animation
        else if(direction.x < 0)
        {
            if(velocity.x < 0) { spriteSheet.play("WalkLeft"); }
            else { spriteSheet.play("IdleLeft"); }
        }
        
        // Play right animation
        else if(direction.x > 0)
        {
            if(velocity.x > 0) { spriteSheet.play("WalkRight"); }
            else { spriteSheet.play("IdleRight"); }
        }
    }

    /**
     * Shoots a weapon
     */
    void shoot()
    {
        // Make sure to reset ammo to 0 if it somehow got below
        // Also, cancel if ammo is 0
        if(ammo <= 0) {
            ammo = 0;
            return;
        }

        // Make sure the delay has been reached before allowing another shot
        if(shootTimer > 0) { return; }

        // Decrement ammunition
        ammo--;

        // Set the shoot timer back to the delay
        shootTimer = SHOOT_DELAY;

        // Tell the Map to spawn a new projectile from the middle of the Player's avatar
        game.currentMap.spawnProjectile(new PVector(position.x + bounds.width / 2, position.y + bounds.height / 2), direction); 
    }
}
