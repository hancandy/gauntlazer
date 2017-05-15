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

class PlayerBuffer
{
    int[] treasureAmounts = new int[3];

    /**
     * Constructor: Stores player values
     */
    PlayerBuffer(ArrayList<Actor> actors)
    {		
        for(int i = 0; i < actors.size(); i++)
        {
            Actor actor = actors.get(i);

            if(actor instanceof Player)
            {
                Player player = (Player)actor;

                treasureAmounts[player.index] = player.treasureAmount;				
            }
        }
    }

    /**
     * Restores the player values
     */
    void restore(ArrayList<Actor> actors)
    {
        for(int i = 0; i < actors.size(); i++)
        {
            Actor actor = actors.get(i);

            if(actor instanceof Player)
            {
                Player player = (Player)actor;

                player.treasureAmount = treasureAmounts[player.index];				
            }
        }
    }
}

class Game
{

    PlayerBuffer currentPlayerBuffer;
    Map currentMap;
    ArrayList<ScoreEntry> scoreEntries = new ArrayList<ScoreEntry>();
    String scoreInput = "";
    int currentScore = 0;

    int currentMapIndex = 0;
    int lastMillis = 0;

    GameState state = GameState.StartGame;

    UI ui = new UI();

    float timeScale = 1.0;
    float fixedDeltaTime = 0.0;
    float deltaTime = 0.0;

    Game()
    {
        // Create array of strings from the score file
        String[] strings = loadStrings("score.csv");

        // For each line in the file, extract score data
        for(int i = 0; i < strings.length; i++)
        {
            // Split the line into 2 substrings using the "," as a separator
            // Substring 0 is the name
            // Substring 1 is the score
            String[] info = strings[i].split(",");

            // Add the data to the score board
            if (info.length == 2)
            {
                scoreEntries.add(new ScoreEntry(info[0], int(info[1])));
            }
        }
    }

    /**
     * Updates the currently loaded Map
     */
    void update()

    {
        // Calculate delta time
        fixedDeltaTime = (millis() - lastMillis) * 0.001;
        deltaTime = fixedDeltaTime * timeScale;
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
        timeScale = 1;
        playerCount = 0;
        loadMap(new Map(new MapLayout().getLayout(currentMapIndex)));
        state = GameState.Playing;
    }

    /**
     * Store all player values
     */
    void storePlayerValues()
    {
        if(currentMap == null) { return; }

        currentPlayerBuffer = new PlayerBuffer(currentMap.actors);
    }

    /**
     * Restore all player values
     */
    void restorePlayerValues()
    {
        if(currentMap == null || currentPlayerBuffer == null) { return; }

        currentPlayerBuffer.restore(currentMap.actors);
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
        for(int i = 0; i < currentMap.actors.size() ; i++)
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
