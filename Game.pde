/**
 * The main game logic
 */
class Game
{
    Map currentMap;
    int lastMillis = 0;

    float timeScale = 1.0;
    float deltaTime = 0.0;

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
        if(currentMap == null) { return; }
        
        currentMap.draw();
    }

    /**
     * Loads a new Map
     */
    void loadMap(Map newMap)
    {
        currentMap = newMap;
    }

    /**
     * Handles input events
     */
    void inputKey(int code, boolean isPressed)
    {
        if(currentMap == null) { return; }
        
        currentMap.inputKey(code, isPressed);
    }
}
