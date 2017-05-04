/**
 * Restores Player health
 */
class Health extends Item
{
  /**
     * Constructor
     */
    Health()
    {
        sprite = loadImage("Assets/Textures/T_Health.png");

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
        player.health+=50;
        
        // Destroy this Key
        game.currentMap.destroy(this);
    }
}