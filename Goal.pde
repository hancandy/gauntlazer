class Goal extends Actor
{
	Goal()
    {
        sprite = loadImage("Assets/Textures/Portal.png");

        checkCollisions = true;
    }

    /**
     * Collision event
     */
    void onCollision(Actor other, Rectangle intersection)
    {
        // We only care about interaction with Players
        if(other instanceof Player == false) { return; }
       
		game.state = GameState.WinLevel;
		game.currentScore +=20;
    }
}