import java.awt.Rectangle;
import java.util.Collections;

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

final int F = 0;
final int X = 11;
final int S = 12;
final int G = 13;
final int B = 14;
final int W = 15;

// Globals
Game game;
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

    // Start game
	game = new Game();
	game.reload();
  
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