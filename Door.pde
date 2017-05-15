/**
 * A blocking Actor that can be unlocked
 */
class Door extends Actor
{
    /**
     * Constructor
     */
    Door()
    {
        sprite = loadImage("Assets/Textures/T_Door.png");

        isBlocking = true;
        checkCollisions = true;
    }

    /**
     * Collision event
     */
    void onCollision(Actor other, Rectangle intersection)
    {
        // We only care about interaction with Players
        if(other instanceof Player == false) { return; }
        
        // Cast Actor to Player 
        Player player = (Player)other;
       
        // If Player has no keys, cancel 
        if(player.keyAmount <= 0) { return; }

        // Decrement key amount in Player
        player.keyAmount--;
        
        // Destroy this Door
        destroy();
    }
}
