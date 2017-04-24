/**
 * The main class for managing tiles and actors
 */
class Map
{
  final int TILE_SIZE = 20;

  int[][] layout;
  PVector camera = new PVector(0, 0);

  Map(int[][] layout)
  {
      this.layout = layout;
  }

  void update()
  {
  }

  void draw()
  {
    for (int y=0;y<layout.length;y++)
    {
      for (int x=0;x<layout[y].length; x++)
      {
        if (layout[y][x]==1)
        {
          rect(x*20,y*20,20,20); 
        }
      }
    }
  }
}
