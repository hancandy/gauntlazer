class Game
{
    private Map currentMap;
    private int lastMillis = 0;

    public float timeScale = 1.0;
    public float deltaTime = 0.0;

    public void update()
    {
        deltaTime = millis() - lastMillis;
        lastMillis = millis();

        if(currentMap == null) { return; }
        
        currentMap.update();
    }

    public void draw()
    {
        if(currentMap == null) { return; }
        
        currentMap.draw();
    }

    public void loadMap(Map newMap)
    {
        currentMap = newMap;
    }
}
