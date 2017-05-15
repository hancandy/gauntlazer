/**
 * Can open Doors if they are held by the Player
 */
class Key extends Item
{
    /**
     * Constructor
     */
    Key()
    {
        sprite = loadImage("Assets/Textures/T_Key.png");

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
        
        // Increase key amount in Player
        player.keyAmount++;
        
        // Destroy this Key
        destroy();
    }
}
