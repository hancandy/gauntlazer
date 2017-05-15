/**
*Creators:
*Chung Han Liu, Kimberly, Alvaro (please fill in :))
*Submitted on 18 May 2017
*Program name: Guantlaser
*A 3 player local multiplayer game with __? levels

*Controls:
*Player 1 - Movement: WASD , Fire: Left Shift
*Player 2 - Movement: IJKL , Fire: N
*Player 3 - Movement: Arrow keys , Fire: numpad 0

*Player abilities:
*Player 1 shoots fastest, deals the least damage
*Player 2 shoots less fast, deal less damage, but takes half as much damage
*Player 3 shoots slowest, deals the most damage
* - For future development, there could be different weapons, some can wider range weapon like shotgun

*Enemy variety:
*Ghoul can shoot bullets
*Slime deals a lot of damage, but moves slow
*Spider moves fast, deals less damage
*Ghost can go throw walls, but moves very slow, transparent when in walls 
*Bat has short sight range, but moves extremely fast when triggered (not done?)

*Score calculation:
*Treasure pick up adds + 5 points
*Kill an enemy + 1 points
*Pass a level + 20 points

*Levels
*Feature levels : ____
*Press TAB to get to the next level

*To-Do
*camera fix
*explain when accessing class variables outside of class
*Comment loop function class, clean up code
*Cap max input length

*/

import java.awt.Rectangle;
import java.util.Collections;

// Constants
final boolean DEBUG = false;

final int TILE_SIZE = 16;
final int CAMERA_MARGIN = 20;
final int CAMERA_SPEED = 200;
final PVector SCREEN_SIZE = new PVector(320, 240);

final float SPRITE_SHEET_FRAME_DELAY = 0.15;

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