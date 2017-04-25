import java.awt.Rectangle;

// Constants
final boolean DEBUG = false;

final int TILE_SIZE = 16;
final int CAMERA_MARGIN = 20;
final int CAMERA_SPEED = 200;
final PVector SCREEN_SIZE = new PVector(320, 240);

final float SPRITE_SHEET_FRAME_DELAY = 0.15;

final float SHOOT_DELAY = 0.2;
final float PROJECTILE_SPEED = 200;
final float PROJECTILE_LIFETIME = 1;

// Globals
Game game = new Game();
int playerCount = 0;

/**
 * Initialise the app
 */
void setup()
{
    // Set screen size
    size(640,480); 

    // Disable smooth scaling
    noSmooth();

    // Set target framerate
    frameRate(60);

    // Start map
    Map lvl1 = new Map(
        new int[][]{
            {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
            {1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,9,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,9,0,1,1,2,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,3,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,1,1,1,1,1,2,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
            {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
        }
    );

    game.loadMap(lvl1);
}

/**
 * Draw everything
 */
void draw ()
{
    // Update game objects
    game.update();

    // Use matrix transformation to scale everything 2x
    pushMatrix();
    scale(2);

    // Reset colours
    stroke(255);
    fill(255);
    background(160, 155, 135);

    // Draw game objects
    game.draw();

    // End the matrix transformation
    popMatrix();
}

/**
 * Handle input for key down
 */
void keyPressed()
{
    game.inputKey(keyCode, true);
}

/**
 * Handle input for key up
 */
void keyReleased()
{
    game.inputKey(keyCode, false);
}
