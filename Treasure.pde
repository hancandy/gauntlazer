/**
 * Picking up gold will increase player's score
 */
class Treasure extends Item
{
    /**
     * Constructor
     */
    Treasure()
    {
        sprite = loadImage("Assets/Textures/T_diamond.png");

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
        player.treasureAmount++;
        
        // Destroy this Treasure
        destroy();

        // Add score
        game.currentScore += 5;
    }
}
