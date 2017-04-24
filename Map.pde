class Map
{
 int[][] layout;
 
 Map(int[][] lo)
 {
   layout = lo;
 }
 
 void drawLevel()
 {
   for (int y=0;y<25;y++)
   {
    for (int x=0;x< 25; x++)
    {
     if (layout[x][y]==1)
     {
      rect(x*20,y*20,20,20); 
     }
    }
   }
 }
 
 //camera
}