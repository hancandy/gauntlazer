/**
 * The main game logic
 */
enum GameState
{
     Playing,
     StartGame,
     WinLevel,
     GameOver,
	 ScoreBoard,
     WinGame
}
class ScoreEntry implements Comparable
	{
		String name;
		int score;
		
		ScoreEntry(String n, int s)
		{
			name = n;
			score = s;
		}
		
		int compareTo(Object o)
		{
			ScoreEntry other = (ScoreEntry)o;
		  
			if(other.score > score)
			{
			  return 1;
			}
			
			if(other.score < score)
			{
			  return -1;
			}
			
			return 0;
		}
	}
	
	
class Game
{
	
    
	Map currentMap;
	ArrayList<ScoreEntry> scoreEntries = new ArrayList<ScoreEntry>();
	String scoreInput = "";
	int currentScore = 0;
	
	int currentMapIndex = 1;
    int lastMillis = 0;
    
    GameState state = GameState.StartGame;
    
    UI ui = new UI();

    float timeScale = 1.0;
    float deltaTime = 0.0;
	
	Game()
	{
		String[] strings = loadStrings("score.csv");
		
		for(int i = 0; i < strings.length; i++)
		{
			String[] info = strings[i].split(",");
			
			scoreEntries.add(new ScoreEntry(info[0], int(info[1])));
		}
	}

    /**
     * Updates the currently loaded Map
     */
    void update()
    {
        // Calculate delta time
        deltaTime = (millis() - lastMillis) * 0.001 * timeScale;
        lastMillis = millis();

        if(currentMap == null) { return; }
        
        currentMap.update();
    }

    /**
     * Draws the currently loaded Map
     */
    void draw()
    {
        if(currentMap != null && state == GameState.Playing)
		{
			currentMap.draw();
		}
            
        ui.draw(state); 
    }

	/**
	 * Reload the game
	 */
	void reload()
	{
		playerCount = 0;
		loadMap(new Map(new MapLayout().getLayout(currentMapIndex)));
		game.state = GameState.Playing;
	}
	
    /**
     * Loads a new Map
     */
    void loadMap(Map newMap)
    {
        currentMap = newMap;
    }
    
	void checkIfGameOver()
	{
		for(int i = 0; i<currentMap.actors.size() ; i++)
		{
			if (currentMap.actors.get(i) instanceof Player == false){continue;}
			Player player = (Player)currentMap.actors.get(i);
			if (player.health>0) {return;}
		}
		
		state = GameState.GameOver;
	}
    

    /**
     * Handles input events
     */
    void inputKey(int code, boolean isPressed)
    {
        if(currentMap != null && state == GameState.Playing)
        {
			currentMap.inputKey(code, isPressed);
		}
        ui.inputKey(code,isPressed);
    }
}