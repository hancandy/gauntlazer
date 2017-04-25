/**
 * The main class for managing Actors
 */
class Map
{
    Actor[] actors;
    PVector camera = new PVector(0, 0);

    /**
     * Constructor
     */
    Map(int[][] layout)
    {
        // Create a temporary list of Actors, so we can add an arbitrary number
        ArrayList<Actor> actorList = new ArrayList<Actor>();

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
                    
                    case 9: // Player
                      actor = new Player();
                      break;
                }

                // If no Actor was found, cancel
                if(actor == null) { continue; }

                // Set the Actor's initial position
                actor.position.x = x * TILE_SIZE;
                actor.position.y = y * TILE_SIZE;

                // Add the actor to the temporary list
                actorList.add(actor);
            }
        }

        // For performance reasons, convert the temporary ArrayList to an Array
        actors = actorList.toArray(new Actor[0]);
    }

    /**
     * Updates all Actors and checks collisions
     */
    void update()
    {
        // Loop through all Actors
        for(int i = 0; i < actors.length; i++)
        {
            // If the Actor shouldn't update, cancel
            if(!actors[i].canUpdate) { continue; }

            // Update the Actor
            actors[i].update();

            // Check if this Actor has any collisions
            checkCollisions(actors[i]);
        }
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

        // Loop through all Actors
        for(int i = 0; i < actors.length; i++)
        {
            // If this Actor is the same as the query Actor,
            // or this Actor doesn't need collision checking,
            // cancel
            if(actor == actors[i] || !actors[i].checkCollisions) { continue; }

            // Adopt the query Actor position and bounds into rect1
            rect1.x = int(actor.position.x) + actor.bounds.x;
            rect1.y = int(actor.position.y) + actor.bounds.y;
            rect1.width = actor.bounds.width;
            rect1.height = actor.bounds.height;
            
            // Adopt this Actor position and bounds into rect2
            rect2.x = int(actors[i].position.x) + actors[i].bounds.x;
            rect2.y = int(actors[i].position.y) + actors[i].bounds.y;
            rect2.width = actors[i].bounds.width;
            rect2.height = actors[i].bounds.height;

            // Get the intersection Rectangle
            intersection = rect1.intersection(rect2);

            // If the intersection Rectangle is not empty, a collision happened
            if(!intersection.isEmpty())
            {
                // Trigger the collision event on the Actors,
                // passing in the collided other Actor and the intersection Rectangle
                actor.onCollision(actors[i], intersection);
                actors[i].onCollision(actor, intersection);
            }
        }
    }

    /**
     * Draws all the Actors
     */
    void draw()
    {
        for(int i = 0; i < actors.length; i++)
        {
            // If the Actor shouldn't be drawn, cancel
            if(!actors[i].canDraw) { continue; }

            actors[i].draw();
        }
    }
   
    /**
     * Handles input events for all Actors
     */ 
    void inputKey(int code, boolean isPressed)
    {
        for(int i = 0; i < actors.length; i++)
        {
            // If the Actor shouldn't listen for input, cancel
            if(!actors[i].hasInput) { continue; }

            actors[i].inputKey(code, isPressed);
        }
    }
}
