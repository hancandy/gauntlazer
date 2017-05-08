/**
 * A simple blocking Actor
 */
class Water extends Actor
{
    Water()
    {
        sprite = loadImage("Assets/Textures/Water.png");

        // Make sure we check for collisions and block any Pawns
        checkCollisions = true;
        isBlocking = true;
    }
}