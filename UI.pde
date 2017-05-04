// handle UI 

class UI
{
	/**
	 * Handles input events for all Actors
	 */ 
	void inputKey(int code, boolean isPressed)
	{
		switch(game.state)
		{
			case StartGame:
				game.state = GameState.Playing;
				break;
			
			case WinLevel:
				game.currentMapIndex++;
				game.reload();
				break;
		}
	}

  void draw(GameState state)
  {
    Player player;
    switch(state)
    {
    case Playing:
      textSize(6);
      fill(0, 255, 0);
      stroke(2);
      for (int i = 0; i < game.currentMap.actors.size(); i++)
      {
        if (game.currentMap.actors.get(i) instanceof Player) 
        {
          player = (Player) game.currentMap.actors.get(i); //converting actor to player
          if (player.index ==0)
          {
            text("Player 1", 5, 10);
            text("Health: "+player.health, 5, 20);
            text("Ammo: " +player.ammo, 5, 30);
            text("Tresure: " +player.treasureAmount, 5, 40);
            text("Key: " +player.keyAmount, 5, 50);
          }
          if (player.index ==1)
          {
            text("Player 2", 260, 10);
            text("Health: "+player.health, 260, 20);
            text("Ammo: " +player.ammo, 260, 30);
            text("Tresure: " +player.treasureAmount, 260, 40);
            text("Key: " +player.keyAmount, 260, 50);
          }
         if (player.index ==2)
         {
            text("Player 3", 5, 190);
            text("Health: "+player.health, 5, 200);
            text("Ammo: " +player.ammo, 5, 210);
            text("Tresure: " +player.treasureAmount, 5, 220);
            text("Key: " +player.keyAmount, 5, 230);         
         }
        }
      }


      break;

    case StartGame:
	  textSize(12);
      text("GauntLazer", 100, 120);
	  text("Press any key to start", 100,150);
	  break;

    case WinLevel:
      textSize(12);
	  text("Level Complete", 100,120);
	  text("Press any key to continue", 100,150);
	  break;

    case GameOver:
	  textSize(12);
	  text("Game Over", 100,120);
	  text("Press any key to restart", 100,150);
      break;

    case WinGame:
	  textSize(12);
	  text("You Won", 100,120);
	  text("Press any key to return to game", 100,150);
      break;
    }
  }
}