/**
 * A simple blocking Actor
 */
class Wall extends Actor
{
    Wall()
    {
        sprite = loadImage("Assets/Textures/T_Wall.png");

        // Make sure we check for collisions and block any Pawns
        checkCollisions = true;
        isBlocking = true;
    }
}
