/**
 * A simple AI that follows the player and damages them
 */
class Character extends Pawn
{
    // A margin to allow for following the Players in a more fluent manner
    final float FOLLOW_MARGIN = 0.4;

    // How much damage does this character deal?
    int damage = 25;

    /**
     * Constructor
     */
    Character()
    {
        

        // Set the collision bounds just a tiny bit smaller than default,
        // so the Character can fit through Doors a little better
        bounds = new Rectangle(2, 4, TILE_SIZE - 4, TILE_SIZE - 4);
        
        // Assign settings
        canUpdate = true;
        isBlocking = true;
        checkCollisions = true;
    }

    /**
     * Finds the nearest player
     */
    Player findNearestPlayer()
    {
        Player nearestPlayer = null;

        // Loop through all Actors to find a Player
        for(int i = 0; i < game.currentMap.actors.size(); i++)
        {
            Actor actor = game.currentMap.actors.get(i);

            // A Player was found
            if(actor instanceof Player)
            {
                // Assign the found Player if...
                if(
                    // ...it's the only Player we've found
                    nearestPlayer == null ||
                    // ...or it's closer to the Character than the previous result
                    position.dist(actor.position) < position.dist(nearestPlayer.position)
                )
                {
                    // Cast the found Player
                    Player foundPlayer = (Player) actor;

                    // Last check: Is the Player alive?
                    if(foundPlayer.health > 0)
                    {
                        nearestPlayer = foundPlayer;
                    }
                }
            }
        }

        return nearestPlayer;
    }

    /**
     * Follow the nearest Player
     */
    void followNearestPlayer()
    {
        Player player = findNearestPlayer();

        if(player == null) { return; }

        // Set velocity depending on Player position
        velocity.x = 0;
        velocity.y = 0;
        
        if(player.position.x - position.x < -FOLLOW_MARGIN) { velocity.x = -1; }
        else if(player.position.x - position.x > FOLLOW_MARGIN) { velocity.x = 1; }
        
        if(player.position.y - position.y < -FOLLOW_MARGIN) { velocity.y = -1; }
        else if(player.position.y - position.y > FOLLOW_MARGIN) { velocity.y = 1; }
    }

    /**
     * Update
     */
    void update()
    {
        // Update the Pawn first
        super.update();

        // Find and folow the nearest Player
        followNearestPlayer();
    }

    /**
     * Collision event
     */
    void onCollision(Actor other, Rectangle intersection)
    {
        // Call collision event in Pawn first
        super.onCollision(other, intersection);

        // Check if the Character hit a Player
        if(other instanceof Player)
        {
            // Cast the other hit Actor to a Player
            Player player = (Player) other;

            // Inflict damage upon the player
            player.takeDamage(damage, this);
        }
    }
}