/**
 * The class for drawing the UI
 */
class UI
{
    PImage logo;
	/**
     * Handles input events for all Actors
     */ 
    void inputKey(int code, boolean isPressed)
    {
        // The UI only handles key down events
        if(!isPressed){ return; }

        switch(game.state)
        {
            case StartGame:
				game.reload();
				break;
				
			case Playing:
				if (keyCode==TAB)
				{
					game.currentMapIndex++;
					if (game.currentMapIndex >18){break;}
					game.reload();
				}
                break;
				
            case WinLevel:
                game.currentMapIndex++;
				game.storePlayerValues();
                game.reload();
				game.restorePlayerValues();
                break;
            
            case GameOver: case WinGame:
                // Add character in name entry
                if (((key >= 'a' && key <= 'z')||(key >='A' && key<= 'Z'))&& game.scoreInput.length()<=9 )
                {
                    game.scoreInput+= key;
                }

                // Remove character in name entry
                if (key == BACKSPACE && game.scoreInput.length()!=0 )
                {
                    game.scoreInput = game.scoreInput.substring(0, game.scoreInput.length() - 1);
                }

                // Confirm input in name entry
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
                game.currentMapIndex = 1;
				game.currentPlayerBuffer = null;
                game.reload();
                break;

        }
    }
	
	void drawBar(int h, int posX, int posY)
	{
		float barSize = 20*(h/100.0);
		if (barSize >=10){fill(0,255,0);}
		if (barSize <10){fill(255,0,0);}
		rect(posX,posY,barSize,5);
		fill(0, 255, 0);
		
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
                            text("Health", 5, 20);
							drawBar(player.health,25,15);
                            text("Ammo" +player.ammo, 5, 30);
							drawBar(player.ammo,25,25);
                            text("Treasure: " +player.treasureAmount, 5, 40);
                            text("Key: " +player.keyAmount, 5, 50);
                        }
                        if (player.index ==1)
                        {
                            text("Player 2", 260, 10);
                            text("Health", 260, 20);
							drawBar(player.health, 280, 15);
                            text("Ammo" , 260, 30);
							drawBar(player.ammo,280,25);
                            text("Treasure: " +player.treasureAmount, 260, 40);
                            text("Key: " +player.keyAmount, 260, 50);
                        }
                        if (player.index ==2)
                        {
                            text("Player 3", 5, 190);
                            text("Health", 5, 200);
							drawBar(player.health, 25, 195);
                            text("Ammo", 5, 210);
							drawBar(player.ammo, 25, 205);
                            text("Treasure: " +player.treasureAmount, 5, 220);
                            text("Key: " +player.keyAmount, 5, 230);                 
                        }
                    }
                }
                break;


		//CHANGE BY ALVARO
            case StartGame:
                textSize(12);
                background(0);
                textSize(35);
                logo = loadImage("Assets/Textures/Logo.png");
				image(logo,-29,10);
             
				textSize(6);
			    text("Player 1 - Movement: WASD , Fire: Left Shift", 90,160);
				text("Player 2 - Movement: IJKL , Fire: N", 90,170);
				text("Player 3 - Movement: Arrow keys , Fire: numpad 0", 90,180);
                
				fill(0,255,0);
                textSize(10);
                text("Press any key to start", 105,220);
                fill(255);
                break;

            case WinLevel:
                textSize(35);
                background(0);
                text("Level Complete", 35,80);
                textSize(10);
                fill(0,255,0);
                text("Press any key to continue", 100,220);
                fill(255);
                break;

            case GameOver: 
                textSize(35);
                background(0);
                text("Game Over", 67, 60);
                textSize(8);
                text("Type your NAME", 128, 120);
                textSize(8);
                text(game.scoreInput, 145,140);
                fill(0,255,0);
                text("Press ENTER to continue", 113,220);
                fill(255);
                break;
				
			case WinGame:
                textSize(35);
                background(0);
                text("You won!", 70, 60);
                textSize(8);
                text("Type your NAME", 128, 120);
                textSize(8);
                text(game.scoreInput, 145,140);
                fill(0,255,0);
                text("Press ENTER to continue", 113,220);
                fill(255);
                break;

            case ScoreBoard:
                textSize(35);
                background(0);
                text("Score Board", 67,60);
                textSize(10);
                fill(0,255,0);
                text("Press any key to restart", 105,220);
                fill(255);
                text("Name", 110,90);
                text("Points", 200, 90);
                for (int i=0 ; i<game.scoreEntries.size() ; i++)
                {
                    if (i>=9){break;} 
                    text(game.scoreEntries.get(i).name + " ", 110,110+i*10 );
                    text(game.scoreEntries.get(i).score, 200,110+i*10);
                }
                break;
				
        }
    }
}
