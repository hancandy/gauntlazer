/**
 * The main class for managing Actors
 */
class Map
{
    ArrayList<Actor> actors = new ArrayList<Actor>();
    PVector cameraPosition = new PVector(0, 0);
    PVector areaSize = new PVector(0, 0);    

    /**
     * Constructor
     */
    Map(int[][] layout)
    {
        // Loop through the layout's Y axis
        for(int y = 0; y < layout.length; y++)
        {
            // Loop through the layout's X axis
            for(int x = 0; x < layout[y].length; x++)
            {
                // Find an Actor to place in the Map
                Actor actor = null;

                switch(layout[y][x])
                {
                    case 1: // Wall
                        actor = new Wall();
                        break;

                    case 2: // Door
                        actor = new Door();
                        break;

                    case 3: // Key
                        actor = new Key();
                        break;

                    case 4: //Treasure
                        actor = new Treasure();
                        break;

                    case 5: //Health
                        actor = new Health();
                        break;

                    case 6: //Ammo
                        actor = new Ammo();
                        break;

                    case 7: // Slime
                        actor = new Slime();
                        break;

                    case 8: // Ghoul
                        actor = new Ghoul();
                        break;

                    case 9: // Player
                        actor = new Player();
                        break;

                    case S: // Spider
                        actor = new Spider();
                        break;

                    case B: // Bat
                        actor = new Bat();
                        break;

                    case G: // Ghost
                        actor = new Ghost();
                        break;

                    case W: // Water
                        actor = new Water();
                        break;

                    case X: // Goal
                        actor = new Goal();
                        break;
                }


                // If no Actor was found, cancel
                if(actor == null) { continue; }

                // Set the Actor's initial position
                actor.position.x = x * TILE_SIZE;
                actor.position.y = y * TILE_SIZE;

                // Add the Pawns to the bottom of the list
                if(actor instanceof Pawn)
                {
                    actors.add(actor);
                }

                // Add all other Actors in the beginning,
                // so they will be drawn first (behind the Pawns)
                else
                {
                    actors.add(0, actor);
                }

                // Add to the map area size
                if(actor.getXMax() > areaSize.x) { areaSize.x = actor.getXMax(); } 
                if(actor.getYMax() > areaSize.y) { areaSize.y = actor.getYMax(); } 
            }
        }
    }

    /**
     * Updates all Actors and checks collisions
     */
    void update()
    {
        Actor actor;

        // New camera position
        PVector newCameraPosition = new PVector(0, 0);

        // Keep track of amount of alive Players
        int alivePlayers = 0;

        // Loop through all Actors,
        // backwards so we can remove an Actor if we need to
        for(int i = actors.size() - 1; i >= 0; i--)
        {
            actor = actors.get(i);

            // Check if Actor is marked for destruction
            if(actor.destroyOnNextFrame)
            {
                actors.remove(i);
                continue;
            }

            // Add to Actor lifetime
            actor.lifetime += game.deltaTime;

            // If the Actor shouldn't update, cancel
            if(!actor.canUpdate) { continue; }

            // If this Actor is a Player, add to the cameraPosition.
            // It will be divided by the amount of alive Players below.
            if(actor instanceof Player) {
                newCameraPosition.x += actor.position.x;
                newCameraPosition.y += actor.position.y;
                alivePlayers++;
            }
            
            // Update the Actor
            actor.update();

            // Check if this Actor has any collisions
            checkCollisions(actor);
        }

        // Make the camera position the average between all alive players
        newCameraPosition.x /= alivePlayers;
        newCameraPosition.y /= alivePlayers;

        // Subtract the half screen size from the camera position
        newCameraPosition.x -= SCREEN_SIZE.x / 2;
        newCameraPosition.y -= SCREEN_SIZE.y / 2;

        // Keep camera in-bounds
        if(newCameraPosition.x < 0) { newCameraPosition.x = 0; }
        if(newCameraPosition.x + SCREEN_SIZE.x > areaSize.x ) { newCameraPosition.x = areaSize.x - SCREEN_SIZE.x; }
        if(newCameraPosition.y < 0) { newCameraPosition.y = 0; }
        if(newCameraPosition.y + SCREEN_SIZE.y > areaSize.y ) { newCameraPosition.y = areaSize.y - SCREEN_SIZE.y; }

        // Assign the new camera position
        cameraPosition.x = newCameraPosition.x;
        cameraPosition.y = newCameraPosition.y;
    }

    /**
     * Checks an Actor against every other Actor for collisions
     */
    void checkCollisions(Actor actor)
    {
        // If we shouldn't be checking for collisions, cancel
        if(!actor.checkCollisions) { return; }

        // Use temporary Rectangles to perform intersection logic
        // This is to prevent changing the "bounds" variable of the Actors
        Rectangle rect1 = new Rectangle(0, 0, 0, 0);
        Rectangle rect2 = new Rectangle(0, 0, 0, 0);
        Rectangle intersection = new Rectangle(0, 0, 0, 0);

        // Adopt the queried Actor position and bounds into rect1
        rect1.x = int(actor.position.x) + actor.bounds.x;
        rect1.y = int(actor.position.y) + actor.bounds.y;
        rect1.width = actor.bounds.width;
        rect1.height = actor.bounds.height;

        // Loop through all Actors
        for(int i = 0; i < actors.size(); i++)
        {
            // If this Actor is the same as the query Actor,
            // or this Actor doesn't need collision checking,
            // cancel
            if(actor == actors.get(i) || !actors.get(i).checkCollisions) { continue; }

            // Adopt this Actor position and bounds into rect2
            rect2.x = int(actors.get(i).position.x) + actors.get(i).bounds.x;
            rect2.y = int(actors.get(i).position.y) + actors.get(i).bounds.y;
            rect2.width = actors.get(i).bounds.width;
            rect2.height = actors.get(i).bounds.height;

            // Get the intersection Rectangle
            intersection = rect1.intersection(rect2);

            // If the intersection Rectangle is not empty, a collision happened
            if(!intersection.isEmpty())
            {
                // Trigger the collision event on the Actors,
                // passing in the collided other Actor and the intersection Rectangle
                actor.onCollision(actors.get(i), intersection);
                actors.get(i).onCollision(actor, intersection);
            }
        }
    }

    /**
     * Draws all the Actors
     */
    void draw()
    {
        translate(-cameraPosition.x, -cameraPosition.y);

        for(int i = 0; i < actors.size(); i++)
        {
            // If the Actor shouldn't be drawn, cancel
            if(!actors.get(i).canDraw) { continue; }

            actors.get(i).draw();
        }

        translate(cameraPosition.x, cameraPosition.y);
    }

    /**
     * Handles input events for all Actors
     */ 
    void inputKey(int code, boolean isPressed)
    {
        for(int i = 0; i < actors.size(); i++)
        {
            // If the Actor shouldn't listen for input, cancel
            if(!actors.get(i).hasInput) { continue; }

            actors.get(i).inputKey(code, isPressed);
        }
    }

    /**
     * Spawns a projectile
     */
    void spawnProjectile(Pawn instigator)
    {
        Projectile p = new Projectile(instigator);

        actors.add(p);
    }
}
