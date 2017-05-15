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
        
		if (game.currentMapIndex > 18)
		{
			game.state = GameState.WinGame;
		}
		else
		{
			game.state = GameState.WinLevel;
			game.currentScore +=20;
		}
		
		game.timeScale = 0;
    }
}