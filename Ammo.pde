/**
 * Restores Player ammunition
 */
class Ammo extends Item
{
    public int amount = 50;
    
    /**
     * Constructor
     */
    Ammo()
    {
        sprite = loadImage("Assets/Textures/T_ammo.png");

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
        
        // Increase ammo amount in Player
        player.ammo += 30;
        
        // Destroy this Ammo
        destroy();
    }
}
