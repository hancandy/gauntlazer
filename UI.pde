// handle UI 

class UI
{
	/**
	 * Handles input events for all Actors
	 */ 
	void inputKey(int code, boolean isPressed)
	{
		if (!isPressed){return;}
		switch(game.state)
		{
			case StartGame:
				game.state = GameState.Playing;
				break;
			
			case WinLevel:
				game.currentMapIndex++;
				game.reload();
				break;
			case GameOver: case WinGame:
					//add character in name entry
					if (((key >= 'a' && key <= 'z')||(key >='A' && key<= 'Z')) )
				  {
					game.scoreInput+= key;
				  }
				  //remove character in name entry
				  if (key == BACKSPACE && game.scoreInput.length()!=0 )
				  {
					game.scoreInput = game.scoreInput.substring(0, game.scoreInput.length() - 1);
				  }
				  
				  if (key == ENTER)
				  {
					game.state = GameState.ScoreBoard;
					game.scoreEntries.add(new ScoreEntry(game.scoreInput, game.currentScore));
					java.util.Collections.sort(game.scoreEntries);
					
					// Save all scores to file
					PrintWriter output = createWriter("score.csv");
					String scoreString = "";
					
					for (int i=0; i<game.scoreEntries.size(); i++)
					{				
						scoreString += game.scoreEntries.get(i).name + "," + game.scoreEntries.get(i).score + "\n";
					}
					
					output.println(scoreString);
					
					output.flush();  // Writes the remaining data to the file
					output.close();  // Finishes the file
				  }
				  break;
				  
			case ScoreBoard:
				game.reload();
				game.currentMapIndex =1;
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

    case GameOver: case WinGame:
	  textSize(12);
	  text("Game Over", 100,80);
	  textSize(8);
	  text(game.scoreInput, 100,100);
	  text("Press enter to continue", 100,120);
	  
      break;
	  
	case ScoreBoard:
		textSize(12);
		text("Score Board", 100,50);
		for (int i=0 ; i<game.scoreEntries.size() ; i++)
		{
			if (i>=9){break;} 
			text(game.scoreEntries.get(i).name + " " + game.scoreEntries.get(i).score, 50,100+i*10);
		}
		text("Press any key to restart", 100,80);
		break;
		

    }
	

  }
  
  
}