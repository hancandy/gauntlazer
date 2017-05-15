//Same logic that the wall has but bullets can go through
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