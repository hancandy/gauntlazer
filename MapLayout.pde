/**
 * The maps layout information are stored here
 *the best levels are probably the first 5 levels but level 11, 12 and 17 are also quite interesting.
 
 */
 
class MapLayout
{
	int[][] getLayout(int lv)
	{
		switch(lv)
		{
  
  			 case 0: //test level 
                return new int[][]{
                    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                    {1,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,9,F,1,F,F,F,F,G,4,F,1,F,9,F,F,F,F,F,3,F,F,F,1},
                    {1,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,1,1,2,1,1,1,1,1,1,F,F,F,F,F,F,F,F,F,5,F,1},
                    {1,F,9,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,1},
                    {1,F,F,F,F,W,W,F,F,4,4,4,3,F,F,F,F,F,F,4,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,1,1,1,1,1,2,1,1,1,1,1,1,F,F,F,F,F,F,6,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,4,4,3,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,F,F,F,1,1,1,1,1,1,1,2,1,1,1,1,1},
                    {1,1,1,1,1,2,1,1,1,1,1,1,1,F,F,F,F,F,F,F,4,4,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,4,4,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,5,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,5,F,F,F,7,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,6,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,6,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {X,F,F,F,F,F,F,F,F,2,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,3,F,F,F,F,1},
                    {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
                    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
                };
			case 1: //level 1: maze level
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,3,6,1,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,3,1},
				   {1,B,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,5,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,B,5,1,F,F,1,F,F,1,1,1,1,1,1,1,1,1,1,F,F,1,F,F,1,F,F,F,F,F,F,F,F,F,F,S,F,1},
				   {1,F,F,1,F,F,1,F,F,1,F,F,F,F,1,F,F,F,1,F,F,1,S,F,1,4,F,1,1,1,1,1,1,1,1,F,F,1},
				   {1,F,F,1,F,F,1,F,F,1,F,F,F,F,1,F,1,F,1,F,F,1,F,F,1,6,B,1,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,1,F,F,1,F,F,1,F,1,F,F,1,F,1,F,1,F,F,1,F,F,1,3,F,1,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,1,F,F,1,F,F,1,F,1,F,F,1,F,1,8,1,F,F,1,F,F,1,1,1,1,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,1,7,F,1,F,F,1,F,1,F,F,1,F,1,F,1,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,S,1},
				   {1,F,F,1,F,F,1,F,F,1,F,1,F,5,1,F,1,F,1,F,5,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,1,F,4,1,F,F,1,F,1,F,F,1,3,1,F,1,F,F,1,F,F,1,1,1,1,1,1,1,1,1,1,F,F,F,1},
				   {1,F,F,1,F,F,1,F,6,1,F,1,F,F,1,F,1,F,1,F,F,1,F,F,1,F,F,F,F,F,F,F,F,1,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,1,F,F,1,F,1,F,1,F,F,1,F,F,1,F,F,1,F,F,1,F,F,F,1,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,1,F,F,1,F,1,1,1,F,F,1,F,F,1,F,F,1,F,F,1,F,F,F,1,F,F,1},
				   {1,1,1,1,1,1,1,F,F,1,F,1,F,F,1,F,F,F,F,F,F,1,F,F,1,F,F,1,F,F,1,F,F,F,1,F,F,1},
				   {1,6,F,F,F,F,F,F,F,1,F,1,F,F,1,F,F,F,F,F,F,1,F,F,1,F,F,1,F,3,1,F,F,F,1,F,S,1},
				   {1,6,9,9,9,5,F,F,F,1,F,1,F,F,1,F,1,1,1,1,1,1,F,F,1,F,F,1,1,1,1,F,F,F,1,F,F,1},
				   {1,1,1,1,1,1,1,F,F,1,F,1,F,F,1,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,1,F,F,1},
				   {1,6,F,F,F,5,1,F,F,1,F,1,F,F,1,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,3,1,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,1,F,F,1,F,1,F,F,F,F,F,F,F,F,F,F,F,1,1,1,1,1,F,1,F,F,1},
				   {1,F,1,1,1,F,1,F,6,1,F,1,F,F,1,F,1,F,F,1,1,1,1,1,1,1,F,F,F,F,F,F,F,F,1,F,F,1},
				   {1,F,1,S,1,F,1,F,F,1,F,1,F,F,1,F,1,F,F,1,4,4,4,4,3,1,F,F,F,F,F,F,F,F,1,F,F,1},
				   {1,F,1,F,1,1,1,F,F,1,F,1,F,F,1,F,1,F,F,1,F,F,F,F,6,1,F,F,F,F,F,F,F,F,1,F,F,1},
				   {1,F,1,F,F,F,F,F,F,1,F,1,F,5,1,F,1,5,F,2,F,F,F,F,6,1,F,F,1,1,1,1,1,1,1,1,1,1},
				   {1,F,1,F,F,F,F,F,F,1,F,1,F,F,1,F,1,F,F,1,F,F,F,F,6,1,F,F,1,F,F,G,F,F,F,F,F,1},
				   {1,F,1,F,F,1,1,1,1,1,F,1,F,F,1,F,1,F,F,1,F,F,F,F,6,1,F,F,1,F,1,1,1,1,1,F,F,1},
				   {1,F,1,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,1,F,1,F,F,F,1,F,F,1},
				   {1,F,1,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,1,5,5,5,5,F,1,F,F,1,F,1,F,1,F,1,F,F,1},
				   {1,F,1,F,F,1,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,1,F,1,F,1,F,2,F,F,1},
				   {1,F,1,F,F,1,F,F,1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,1,S,1,F,1,F,F,1},
				   {1,F,F,F,F,F,G,F,1,F,F,F,F,2,F,F,F,F,1,1,1,1,1,1,1,1,1,1,1,F,1,F,1,F,1,F,F,1},
				   {1,F,F,S,F,F,F,F,1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,1,F,1,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,X,1,1,1,1},
				   
				   };
				   
				   
				   
				   
				   case 2: //level 2: water maze level
				return new int[][]{
				 {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				 {W,F,F,5,F,F,F,F,F,6,F,F,F,G,F,F,F,W,F,F,F,F,F,F,5,F,W,F,F,F,F,F,F,F,F,F,F,W},
				 {W,F,4,F,F,F,F,F,B,F,W,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,W,F,F,9,F,F,9,F,F,9,F,W},
				 {W,F,F,F,F,W,W,W,W,W,W,F,F,F,F,F,F,W,F,6,F,F,F,F,F,F,W,6,F,F,F,F,F,F,F,F,F,W},
				 {W,F,F,F,F,W,F,F,F,F,W,W,W,W,F,W,W,W,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,W},
				 {W,F,F,F,8,W,F,F,F,F,F,F,W,F,F,F,F,W,W,W,W,W,W,F,W,W,W,F,F,F,F,F,F,W,W,F,W,W},
				 {W,F,F,F,F,W,F,F,F,F,F,F,W,F,F,F,F,6,F,F,W,F,F,F,F,F,W,F,F,F,F,F,F,W,4,6,5,W},
				 {W,F,F,F,F,W,F,F,B,F,F,7,W,F,F,F,F,F,F,F,W,F,F,F,B,F,W,6,F,F,F,F,F,W,4,6,5,W},
				 {W,F,F,F,F,W,F,F,F,F,F,F,W,F,F,F,F,F,F,F,W,F,F,F,F,F,W,W,W,W,W,W,F,W,W,W,W,W},
				 {W,F,F,F,F,W,F,F,F,F,F,F,W,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,W,F,F,F,4,F,F,F,W},
				 {W,F,F,F,F,W,W,W,W,F,W,W,W,F,G,F,F,F,F,F,W,F,7,F,F,F,F,S,F,W,F,F,F,F,F,F,F,W},
				 {W,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,F,F,5,W,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W},
				 {W,F,F,F,F,F,W,F,G,6,F,F,F,F,W,W,W,W,W,W,W,W,W,W,W,W,F,W,W,W,5,F,F,F,F,F,F,W},
				 {W,W,F,W,W,W,W,F,F,F,F,F,F,F,W,F,F,F,F,F,6,F,F,W,F,F,F,6,F,W,W,W,F,W,W,W,W,W},
				 {W,F,F,F,F,F,W,W,W,W,W,W,F,W,W,F,F,F,F,5,4,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,W},
				 {W,F,G,F,F,F,F,F,F,F,W,F,F,F,W,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,W,F,F,F,F,F,F,W},
				 {W,F,F,5,F,F,F,F,F,F,W,F,F,F,W,W,W,W,W,W,W,W,W,W,F,F,F,F,F,F,W,F,F,F,F,F,F,W},
				 {W,F,F,F,F,S,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,7,4,F,F,6,W},
				 {W,F,4,F,F,F,F,F,F,F,W,F,F,F,F,F,F,6,F,5,F,W,F,F,F,4,F,7,F,F,W,F,F,F,F,F,F,W},
				 {W,F,F,F,F,F,F,F,F,F,W,W,W,W,W,W,W,F,F,F,F,W,F,F,F,F,F,6,F,F,W,W,W,F,W,W,W,W},
				 {W,W,W,W,F,W,W,W,W,W,W,7,F,F,F,F,W,F,F,F,F,W,W,W,W,W,W,W,W,W,W,F,F,F,F,6,6,W},
				 {W,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,W,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,F,F,W},
				 {W,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,W,F,F,8,F,F,F,F,F,F,F,6,F,F,F,F,7,F,F,F,F,W},
				 {W,W,W,W,W,W,F,F,F,F,W,F,F,F,8,F,W,F,F,F,F,F,F,B,W,F,F,F,F,F,F,4,F,F,F,F,F,W},
				 {W,F,4,5,F,W,F,F,F,F,W,W,W,W,W,F,W,W,W,W,W,W,W,W,W,F,F,F,F,F,S,F,F,F,F,F,F,W},
				 {W,F,F,F,F,W,F,F,F,6,F,F,F,W,F,F,F,F,F,F,F,4,F,F,W,F,F,F,F,F,F,F,F,F,F,F,F,W},
				 {W,F,F,F,8,W,F,F,F,F,F,F,F,W,F,6,F,F,F,F,F,F,F,F,W,F,6,F,F,F,F,F,F,F,F,F,F,W},
				 {W,W,W,F,W,W,F,F,F,F,F,7,F,F,F,F,F,F,F,7,F,F,F,S,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				 {W,F,F,F,F,F,F,F,8,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,F,F,W,W,W,W,W},
				 {W,F,F,5,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,X,W},
				 {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				};
				
		  
		  
		  
			case 3: //level 3: level with 2 possible ways, one has more items and the other more enemies. 
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,F,F,6,6,F,3,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,S,F,F,F,F,F,F,F,1},
				   {1,F,F,9,F,F,F,1,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,5,9,F,F,F,F,2,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,1},
				   {1,5,F,9,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,6,1,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,6,6,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,7,F,F,F,F,F,F,F,F,F,F,1,F,F,F,4,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,1,1,1,1,1,W,W,W,W,W,1,1,1,1,1,1,1,F,F,F,F,F,6,1},
				   {1,F,F,F,F,5,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,6,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,6,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,G,F,F,F,F,F,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,1,F,F,F,5,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,5,6,1,F,F,1,F,4,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,6,1,F,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,8,F,F,F,F,F,5,6,1,F,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,5,6,1,F,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,6,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,S,1,F,F,G,G,G,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,1,1,1,1,F,1,1,1,1,1,1,1,1,1,1,F,F,1,1,W,W,W,W,1,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,B,F,F,F,F,F,1,F,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,1,1,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,1,1,1,1,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,S,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,X},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B,1,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   };
		  
		  
		  case 4: //level 4: water hall, you have to get to the end avoiding the bullets from the ghouls(they are trap inside the water walls.
				return new int[][]{
				  {1,1,1,1,1,1,1,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				  {1,F,F,F,F,F,1,W,F,F,4,F,W,F,F,F,F,W,4,4,W,F,F,F,F,W,5,5,W,F,F,F,F,W,6,6,W,F,F,W,6,4,4,6,W,4,4,W,F,F,F,F,W,4,4,W,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,W},
				  {1,5,6,F,F,F,1,W,F,F,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,7,W,F,F,F,F,W,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,8,8,F,W,F,F,F,F,F,F,F,F,8,8,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,W},
				  {1,5,6,9,F,3,1,W,F,S,B,F,W,F,8,8,F,W,F,F,W,F,8,8,F,W,F,F,W,F,8,8,F,W,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,8,8,F,W,F,F,W,F,F,F,F,W,F,F,F,F,8,8,F,F,F,F,F,8,8,F,F,F,F,F,W,F,F,S,B,F,F,F,F,F,F,W},
				  {1,F,F,F,F,3,1,W,F,F,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,W,F,S,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,W},
				  {1,F,F,F,F,F,1,W,F,F,F,F,W,W,W,W,W,W,F,F,W,W,W,W,W,W,F,F,W,W,W,W,W,W,F,F,W,W,W,W,F,F,F,F,W,F,F,W,W,W,W,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,F,F,F,F,F,W,W,W,W},
				  {1,F,F,9,F,F,2,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,W,W,W},
				  {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,X,W},
				  {1,F,6,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,W,W,W},
				  {1,5,6,9,F,F,1,W,F,F,F,F,W,W,W,W,W,W,F,F,W,W,W,W,W,W,F,F,W,W,W,W,W,W,F,F,W,W,W,W,F,F,F,F,W,F,F,W,W,W,W,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,F,F,F,F,F,W,W,W,W},
				  {1,5,6,F,F,3,1,W,F,S,B,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,W},
				  {1,5,6,F,F,F,1,W,F,F,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,W,F,F,B,F,W,F,F,W,F,F,F,F,W,F,F,W,F,F,F,F,W,F,F,F,8,8,F,F,F,F,F,F,8,8,F,F,F,F,F,W,F,F,S,B,F,F,F,F,F,F,W},
				  {1,F,F,F,F,F,1,W,F,F,F,F,W,F,8,8,F,W,F,F,W,F,8,8,F,W,F,7,W,F,8,8,F,W,F,F,W,F,F,W,F,F,F,F,W,F,F,W,F,8,8,F,W,F,F,W,F,8,8,F,W,F,F,F,F,F,F,F,8,8,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,W},
				  {1,F,F,F,F,F,1,W,F,F,4,F,W,F,F,F,F,W,4,4,W,F,F,F,F,W,5,5,W,F,F,F,F,W,6,6,W,F,F,W,6,4,4,6,W,4,4,W,F,F,F,F,W,4,4,W,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,F,F,F,F,F,F,F,F,F,F,W},
				  {1,1,1,1,1,1,1,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				};
				
				
				
				
				case 5: //level 5: Arena. one you get out of the room all it is open so you will have to move quickly if you don't want to get trap by the enemies.
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,5,F,F,F,F,F,F,F,F,F,F,F,F,7,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,4,4,5,F,6,F,F,1},
				   {1,1,1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1,6,F,F,F,F,F,F,F,1,4,1,F,F,F,F,F,F,1},
				   {X,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,1,5,F,F,F,F,F,F,F,1,F,F,F,1,F,F,F,F,F,1},
				   {1,1,1,F,F,1,F,1,F,F,F,6,F,1,F,F,F,1,F,F,F,F,F,F,F,7,1,S,F,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,1,F,F,F,1,F,F,F,F,F,1,F,1,F,F,F,1,F,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,1},
				   {1,F,F,1,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,1,F,B,1},
				   {1,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,1},
				   {1,F,F,F,F,F,1,1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1},
				   {1,F,F,F,F,8,F,F,1,F,4,F,F,F,F,1,F,F,F,F,F,F,S,F,F,F,4,F,F,F,1,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,S,1,F,F,F,F,F,F,1,F,F,F,6,F,F,F,F,F,F,F,F,1,F,F,F,1,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,1},
				   {1,F,F,F,F,6,6,F,F,F,F,1,F,F,B,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,6,6,F,F,F,1,F,F,F,F,F,F,F,F,1,F,F,1,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,6,6,F,S,1,F,F,6,F,F,F,F,F,F,F,1,F,F,1,F,F,5,F,F,S,F,1,F,F,F,F,F,1},
				   {1,F,F,F,F,6,6,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,1,1,F,F,F,F,F,F,F,S,F,F,F,F,F,F,F,F,F,1,F,F,F,1,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,1,F,1,F,F,F,F,F,F,F,F,1},
				   {1,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,1,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,1,1,F,F,F,F,F,F,F,F,1,1,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,5,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,S,1,F,F,F,F,F,F,F,1,1,1,1,1,1,1,1},
				   {1,F,F,F,1,F,F,F,F,4,F,1,4,4,4,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1,5,6,4,F,F,F,1},
				   {1,F,F,F,F,1,F,F,F,F,F,F,1,F,1,F,F,F,F,F,4,S,1,F,F,F,F,F,F,F,1,F,F,F,F,F,9,1},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,2,F,F,9,F,F,F,1},
				   {1,F,F,F,F,F,F,1,1,1,F,F,F,F,F,F,F,F,1,1,1,F,F,F,4,F,F,F,F,F,1,F,F,F,F,9,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,3,F,6,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   };
		  
		  
		  
			  case 6: //level 6: horizontal level, with 3 rooms with enemies.
				return new int[][]{
				  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				  {1,F,F,F,F,F,1,F,F,F,F,F,F,8,F,8,F,F,F,F,F,F,F,F,1,F,F,F,F,4,F,F,F,F,3,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,3,F,F,F,F,F,1,1,1},
				  {1,F,9,F,F,F,1,F,F,F,4,F,F,F,F,F,F,F,F,F,3,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,1,1,1},
				  {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,G,F,F,8,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				  {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,1,F,F,F,F,F,F,F,F,F,4,F,F,F,F,5,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				  {1,F,9,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,8,F,F,F,F,1,F,F,F,F,B,F,F,F,F,F,F,F,4,F,F,1,1,1},
				  {1,F,F,F,F,F,2,F,F,F,3,F,F,F,F,F,F,F,F,4,F,F,F,F,2,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				  {1,F,F,F,F,F,W,F,F,F,F,8,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				  {1,F,F,F,F,3,W,F,F,F,F,F,F,F,F,F,7,F,F,6,F,B,F,F,1,F,F,F,F,F,F,F,F,F,7,F,8,F,F,F,F,2,F,F,F,7,F,F,F,F,F,3,F,F,F,F,F,2,X,1},
				  {1,F,9,F,F,4,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,4,F,F,F,F,4,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				  {1,F,F,F,F,5,1,4,4,3,F,F,1,F,3,F,F,F,F,F,F,F,F,8,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,8,F,F,F,F,F,F,F,3,F,F,1,1,1},
				  {1,F,F,F,F,6,1,F,F,F,F,F,1,1,1,1,1,1,1,2,1,1,1,1,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				  {1,F,F,F,F,F,1,F,F,F,F,F,1,6,F,6,F,6,F,F,F,F,8,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				  {1,F,F,F,F,F,1,F,F,F,F,F,1,F,4,F,4,F,F,F,F,5,F,F,1,F,F,F,F,F,F,B,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,G,F,F,6,F,F,F,F,F,1,1,1},
				  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}, 
				};
				
			  case 7: //level 7: vertical level, same logic that level 6. 
				 return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,F,F,F,F,F,9,F,F,F,1,1,1,1,1},
				   {1,1,1,1,1,1,F,F,F,9,F,F,F,F,F,1,1,1,1,1},
				   {1,1,1,1,1,1,F,F,F,F,9,F,6,F,F,1,1,1,1,1},
				   {1,1,1,1,1,1,4,F,F,F,F,F,F,F,5,1,1,1,1,1},
				   {1,1,1,1,1,1,6,F,F,F,F,F,F,F,3,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,3,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1},
				   {1,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,1},
				   {1,F,F,6,F,F,7,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,7,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,3,F,F,1},
				   {1,F,F,F,4,F,8,F,F,F,7,F,F,F,B,F,F,4,F,1},
				   {1,3,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,1},
				   {1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1},
				   {1,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,B,F,F,F,F,F,F,F,S,F,F,F,F,F,F,1},
				   {1,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,W,W,W,W,W,W,F,F,3,F,F,F,1},
				   {1,F,F,F,8,F,F,7,F,7,F,F,7,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,7,F,F,F,3,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,3,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,X,X,X,X,X,1,1,1,1,1,1,1},
				 };
				 
				 
				 case 8: //level 8: key hunt, 5 open rooms where you have to find at least 3 keys to open the door that keep the exits.
				   return new int[][]{
					  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					  {1,1,F,F,F,F,F,F,F,3,F,F,F,F,F,F,F,F,F,F,9,F,9,F,9,F,F,F,F,F,F,F,F,F,F,F,1,1},
					  {1,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,1},
					  {1,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,1},
					  {1,F,F,F,1,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,1,F,F,F,1},
					  {1,F,F,F,F,1,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1},
					  {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1},
					  {1,3,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,6,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,7,F,F,1,1,1,1,1,1,1,F,F,F,1,1,1,1,1,1,1,1,F,F,F,6,F,F,F,F,5,1},
					  {1,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,F,F,F,1,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,S,F,F,F,F,F,F,F,1},
					  {1,3,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,3,1},
					  {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,W,W,W,F,F,6,F,F,F,F,1,F,B,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,W,W,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,7,F,F,F,F,F,F,F,F,F,W,W,W,F,F,F,F,F,F,F,F,F,G,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,W,W,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,6,F,F,1,F,F,F,F,6,F,F,F,F,F,F,F,5,F,F,F,1,F,F,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,5,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,S,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,F,F,F,1,F,6,F,F,F,F,F,F,F,F,F,F,F,6,F,F,1,F,8,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,4,F,F,F,1,1,1,1,1,1,1,F,F,F,1,1,1,1,1,1,1,1,F,8,F,F,F,4,3,F,F,1},
					  {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1},
					  {1,F,F,F,F,F,1,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1},
					  {1,F,F,F,F,1,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,3,F,F,1,F,F,F,F,1},
					  {1,5,F,F,1,F,F,F,3,F,F,F,F,7,F,8,F,7,F,8,F,7,F,8,F,F,F,F,F,6,F,5,F,1,F,F,F,1},
					  {1,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,1},
					  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,X,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},

				   };
				   
				   case 9:  //level 9: zig-zag hall
				   return new int[][]{
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					{1,1,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B,1},
					{1,X,F,F,B,F,F,F,F,F,F,4,F,S,F,F,F,F,7,F,F,F,6,F,F,F,F,F,8,F,F,F,F,F,B,F,F,1},
					{1,X,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,1,1,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,G,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,B,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,5,F,F,F,8,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,1,1,1,1,1,1,1,1,W,W,W,W,W,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					{1,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,S,F,F,F,F,F,F,F,F,F,F,F,F,B,F,B,F,F,F,F,B,F,F,F,1},
					{1,F,F,F,B,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,7,F,F,F,F,5,F,F,F,8,F,F,F,F,F,F,F,F,1},
					{1,1,W,W,W,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,S,F,5,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,8,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,S,F,F,F,F,F,B,F,F,6,F,F,F,F,F,B,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,1,1,1,1,1,1,1,W,W,W,W,W,W,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					{1,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,9,F,9,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,9,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   };
				   
				   
				  
				   
				  
				   
				   
				   
				   
					  case 10:  //level 10: spiral hall
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,9,F,F,2,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,9,F,9,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,1},
				   {1,F,F,F,F,3,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,4,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,8,F,F,F,F,F,5,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,7,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,4,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,1,F,F,F,F,1},
				   {1,F,S,F,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,8,F,F,F,F,F,6,F,F,F,F,F,1,F,F,F,1,F,F,7,F,1},
				   {1,F,4,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,4,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,6,F,1,F,F,1,F,F,F,F,F,F,F,F,G,F,4,F,F,F,F,1,F,F,1,F,5,F,1,F,F,6,F,1},
				   {1,F,F,F,F,F,1,F,7,1,F,F,F,F,F,F,F,5,F,F,7,F,F,F,F,1,F,F,1,F,F,F,1,F,F,5,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,1,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,F,1,1,1,1,1,1,1,1,1,1,1,F,F,1,5,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,B,F,1,F,F,1,F,F,1,F,F,F,4,F,1,1,1,1,1,F,F,1,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,4,1,F,F,1,F,F,F,F,F,F,F,X,2,1,F,F,1,F,F,1,F,4,F,1,F,F,F,4,1},
				   {1,F,4,F,F,F,1,F,F,1,F,F,1,F,F,F,F,F,1,1,1,1,1,F,4,1,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,6,1,F,1,1,1,1,1,1,1,1,1,F,F,1,6,F,1,F,F,F,1,F,6,F,F,1},
				   {1,F,F,5,F,F,1,F,5,1,F,5,1,F,F,F,F,4,F,F,F,F,F,F,F,1,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,F,1,F,F,6,F,F,F,F,F,F,F,F,S,1,F,F,1,F,F,F,1,F,F,G,F,1},
				   {1,F,F,B,F,F,1,F,F,1,4,F,1,F,F,F,F,F,F,5,F,F,F,F,F,1,F,F,1,F,6,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,F,8,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,1,F,F,F,1,F,F,F,4,1},
				   {1,F,F,F,F,F,1,F,F,1,F,F,F,F,F,6,F,F,F,5,G,F,F,F,F,F,F,F,1,F,F,F,1,F,F,5,F,1},
				   {1,F,F,F,F,F,1,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,1,F,F,F,F,1},
				   {1,F,6,F,F,F,1,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,1,F,F,8,F,1},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,S,F,F,F,8,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,S,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   };
				   

  case 11:  //level 11: homage to a Gauntlet level (similar to level 11 of Gauntlet for NES) 
           return new int[][]{
           {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
           {1,F,F,F,F,3,F,F,F,F,F,F,6,6,6,1,F,F,F,F,F,F,4,F,F,F,F,8,F,F,F,F,4,F,G,F,F,1},
           {1,F,F,F,F,F,F,F,F,F,F,9,F,F,6,1,F,F,G,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,1},
           {1,F,F,4,F,F,F,F,F,F,F,F,9,F,6,1,F,F,F,F,8,F,F,F,F,F,F,5,F,F,F,F,F,F,F,F,6,1},
           {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,G,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,1},
           {1,F,F,F,F,F,F,F,F,F,F,F,F,9,F,1,F,F,F,F,F,F,F,F,F,S,F,F,F,F,F,F,B,F,F,F,F,1},
           {1,F,F,F,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,F,F,F,F,F,F,F,F,B,F,F,F,3,1},
           {1,F,F,F,F,F,F,F,F,1,F,F,4,F,4,F,F,G,F,F,F,F,4,1,F,F,F,F,F,F,1,1,1,1,1,1,1,1},
           {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1,F,F,F,G,F,F,1},
           {1,F,F,F,F,F,F,F,F,1,F,F,7,F,F,F,S,F,F,F,F,F,6,1,S,F,F,F,F,F,1,F,5,F,F,1,1,1},
           {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,3,1,F,F,F,5,F,F,1,F,F,F,F,F,F,X},
           {1,F,F,F,F,F,F,F,F,1,F,F,F,B,F,F,F,F,8,F,F,6,F,1,F,F,6,F,F,F,1,F,7,F,F,1,1,1},
           {1,F,F,F,F,F,F,F,F,1,3,F,F,F,F,F,F,F,G,F,8,F,F,1,F,F,F,F,F,F,1,F,F,F,F,F,F,1},
           {1,F,F,F,F,F,F,F,F,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,F,F,F,8,F,F,1,F,F,F,F,F,F,1},
           {1,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1,1,1,2,1,1,1,1},
           {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,G,F,F,F,F,1,F,F,F,F,4,F,1,F,F,F,F,F,F,1},
           {1,F,F,F,F,F,F,F,F,F,F,F,7,F,F,F,F,F,F,F,F,F,F,1,F,F,7,F,F,F,1,F,F,F,F,F,F,1},
           {1,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,G,F,F,3,1,F,F,F,F,F,F,1,F,F,F,F,F,F,1},
           {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,B,4,F,1,F,4,6,F,F,F,1},
           {1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,F,S,F,F,F,F,1},
           {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,F,F,F,F,1,F,S,F,F,F,F,1},
           {1,5,F,G,4,4,1,F,F,F,F,F,4,F,F,F,F,G,F,F,F,F,F,F,F,F,F,F,F,F,1,F,5,F,G,F,F,1},
           {1,5,5,7,4,3,1,F,F,G,F,8,F,F,F,F,F,F,F,7,F,F,F,F,F,F,8,F,F,F,1,F,F,F,F,F,F,1},
           {1,1,1,1,1,1,1,F,F,F,F,F,F,F,3,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,4,F,F,F,3,1},
           {1,F,F,F,F,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,F,1},
           {1,F,F,F,F,F,F,F,F,G,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,F,6,F,F,F,1,F,7,F,F,F,F,1},
           {1,F,F,F,F,F,8,F,F,G,F,F,F,F,F,F,F,F,F,7,F,F,F,F,F,G,F,F,F,F,2,F,F,F,F,F,F,1},
           {1,F,F,F,F,F,F,F,F,3,F,5,F,F,F,F,F,F,F,F,F,B,B,B,B,F,F,F,F,F,1,F,F,F,F,F,F,1},
           {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
           
           };
           



					case 12:  //level 12: 9 rooms, one type of enemy in each rooms except the starter room.
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,3,F,F,F,6,F,6,F,F,3,1,F,F,F,F,6,F,3,F,6,F,F,F,3,1,4,F,F,6,F,5,3,F,F,F,3,1},
				   {1,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,4,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,B,F,B,F,B,F,5,1,F,F,F,7,F,7,F,7,F,5,F,F,F,1,F,F,F,B,F,B,F,B,F,F,F,1},
				   {1,F,F,F,F,B,F,B,F,F,F,1,F,F,F,F,7,F,7,F,F,F,F,5,F,1,F,F,F,F,B,F,B,F,F,F,F,1},
				   {1,F,F,4,B,F,B,F,B,F,F,2,F,F,F,7,F,7,F,7,F,F,F,F,F,2,F,F,F,B,F,B,F,B,F,F,F,1},
				   {1,F,F,F,F,B,F,B,F,F,F,1,F,F,F,F,7,4,7,F,F,F,F,F,F,1,F,F,F,F,B,F,B,F,F,F,F,1},
				   {1,F,F,F,B,F,B,F,B,F,F,1,F,F,F,7,F,7,F,7,F,F,F,F,F,1,F,F,F,B,F,B,F,B,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,5,1,F,F,F,F,F,F,F,F,F,F,6,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,6,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,6,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1},
				   {1,F,F,6,6,F,F,F,6,F,3,1,F,F,F,F,F,F,F,F,F,6,F,F,3,1,F,F,F,F,F,F,F,F,F,F,4,1},
				   {1,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,5,F,F,F,F,F,F,1,F,F,S,F,F,S,F,F,F,F,F,1},
				   {1,F,9,F,9,F,F,F,F,F,F,1,F,F,F,F,F,F,G,F,F,F,F,F,F,1,F,F,F,S,S,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,5,F,F,F,F,1,F,F,F,F,F,G,F,F,F,F,F,F,F,1,F,F,S,F,F,S,F,F,F,1,1,1},
				   {1,F,9,F,F,F,F,F,F,F,F,2,F,F,F,F,F,4,F,F,F,F,6,F,F,2,F,F,F,S,S,F,F,F,F,F,F,X},
				   {1,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,G,F,G,F,F,F,F,F,1,F,F,S,F,F,S,F,F,F,1,1,1},
				   {1,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,G,F,G,F,F,F,F,6,F,1,4,F,F,S,S,F,F,F,F,F,F,1},
				   {1,F,F,4,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,4,F,S,3,F,S,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,5,F,3,1,F,F,F,F,F,F,F,F,3,F,F,F,F,1,4,F,F,6,F,5,F,F,F,F,F,1},
				   {1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1},
				   {1,F,F,F,6,F,F,F,F,F,3,1,F,F,F,F,F,F,F,F,F,F,F,F,3,1,F,F,F,F,F,F,F,F,F,F,3,1},
				   {1,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,8,F,8,F,8,F,F,F,1,F,F,F,F,7,F,7,F,7,5,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,8,F,8,F,F,F,F,1,F,F,F,F,F,4,F,F,F,F,F,F,F,1,F,F,5,F,8,F,8,F,8,F,F,1},
				   {1,F,F,8,F,8,F,8,F,F,F,1,F,F,F,F,F,7,F,7,F,F,F,F,F,1,F,F,F,F,F,F,F,F,8,F,F,1},
				   {1,F,F,F,8,F,8,F,F,F,F,2,F,F,F,F,7,F,7,F,7,F,F,F,F,2,F,F,F,F,8,F,8,F,8,F,F,1},
				   {1,F,F,8,F,8,F,8,4,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1,4,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,1,F,F,F,7,F,7,F,7,F,F,F,3,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,6,F,6,5,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,6,1,F,F,6,8,F,5,F,F,8,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   };
				   
				   
				   
					 
					 
					 
					
					 
					 case 13: //level 13: Arena 2. Big open room full of enemies on some walls to cover yourself
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,3,3,F,F,F,F,F,F,B,B,B,F,F,F,F,5,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,G,G,G,3,3,1},
				   {1,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,1,F,F,5,F,G,G,G,F,F,1,F,F,F,F,F,F,F,1},
				   {1,1,1,1,F,F,F,F,F,F,F,F,F,1,F,S,S,S,F,1,F,F,F,F,1,F,F,F,F,1,F,F,B,1,1,1,F,1},
				   {X,F,F,2,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,1,F,F,F,F,1,F,F,F,F,F,F,F,1},
				   {1,1,1,1,F,F,F,1,F,8,6,8,F,1,F,F,F,F,F,1,F,F,F,6,1,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,4,F,1,F,F,F,F,6,5,6,4,F,F,F,F,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,F,F,G,6,G,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,G,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,6,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,1,1,1,1,1,1,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,8,F,F,F,F,F,4,F,S,4,S,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1,1,1,1,F,F,F,F,F,F,F,1},
				   {1,F,F,S,S,S,F,F,F,B,B,B,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,1,1,1,1,1,1,1,1,F,F,F,F,F,G,G,G,F,F,F,1},
				   {1,F,F,F,F,G,G,G,F,F,F,4,F,B,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,1,1,1,1,1,1,1,1,F,F,F,F,F,F,F,F,6,F,F,1,1,1,1,1,1,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,S,F,F,F,1},
				   {1,F,F,4,F,F,1,1,1,1,1,1,1,1,F,F,F,F,F,F,G,F,F,F,F,1,1,1,1,1,1,1,1,1,F,F,5,1},
				   {1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,F,F,6,F,F,F,B,F,F,F,F,1,1,1,1,1,1,1,F,F,F,F,F,F,F,F,F,F,5,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,F,4,F,F,F,1,F,F,F,G,F,F,6,F,1},
				   {1,F,F,F,B,B,B,F,F,F,F,F,1,1,1,1,1,1,1,1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,1,F,F,F,F,1,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,1,1,1,1,1,1,1,1,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1,F,F,F,F,1,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,S,F,F,F,1,F,5,F,F,1,F,F,F,F,1,F,F,G,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,G,F,F,1,F,F,F,1},
				   {1,F,F,F,9,F,F,6,F,F,F,F,5,F,F,F,5,F,6,F,F,F,F,1,F,F,F,F,F,F,F,F,F,1,F,F,F,1},
				   {1,F,F,9,F,9,F,F,F,F,F,F,F,F,F,F,F,F,F,6,6,6,F,F,4,F,F,F,F,F,F,F,F,F,6,3,3,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   };
				   
					case 14: //level 14: one and a half rombo cut with a horizontal wall making 8 rooms
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,3,F,B,4,F,F,F,F,F,F,F,F,1,6,F,4,F,F,F,F,F,S,F,F,F,F,F,F,F,F,F,F,6,S,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,1,3,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1},
				   {1,F,F,5,F,F,F,F,S,F,F,1,F,F,F,1,F,B,F,F,F,F,F,6,F,F,B,F,F,F,F,F,F,F,F,1,3,1},
				   {1,F,F,3,F,7,6,F,F,F,1,F,F,8,F,F,1,F,F,F,F,8,F,F,3,F,F,8,F,F,F,F,F,F,1,F,F,1},
				   {1,F,F,F,F,F,F,F,F,1,F,F,F,F,G,F,F,1,F,F,F,F,F,F,F,F,F,F,G,F,F,F,F,1,F,F,F,1},
				   {1,F,F,F,F,F,F,F,1,F,F,F,F,F,5,F,F,F,1,F,F,F,S,F,F,5,F,F,F,F,F,F,1,F,F,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,7,F,6,F,F,6,F,1,F,8,F,7,F,F,F,8,F,F,F,1,F,F,7,F,1,1},
				   {1,F,F,F,F,F,2,F,S,F,F,F,F,F,F,F,F,F,F,F,2,F,F,F,F,F,F,F,F,F,2,F,F,F,F,F,F,X},
				   {1,F,F,F,F,1,F,F,F,F,F,F,F,F,3,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1,1},
				   {1,F,F,F,1,F,6,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,1},
				   {1,F,F,1,4,F,F,F,F,F,F,F,F,8,F,F,F,F,F,F,F,F,F,1,F,F,F,1,F,F,8,F,F,F,F,F,F,1},
				   {1,F,1,B,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,F,1,3,1,F,F,F,F,F,F,F,S,F,F,1},
				   {1,F,1,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,F,1,F,F,F,6,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,1,F,F,F,F,F,8,F,F,F,F,F,F,F,F,F,F,F,F,F,S,F,1,3,1,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,1,F,F,F,F,F,F,F,F,F,F,G,F,F,7,F,F,F,F,F,1,F,F,F,1,F,F,F,F,F,9,F,9,F,1},
				   {1,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,6,F,B,F,1,F,F,F,F,3,F,F,F,1},
				   {1,F,F,F,3,1,F,F,S,F,F,F,F,3,5,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,F,6,9,F,1},
				   {1,F,F,8,F,F,2,F,F,F,F,F,F,F,6,F,F,F,F,F,1,F,F,6,F,5,F,F,F,F,2,F,F,F,F,F,F,1},
				   {1,F,F,F,4,7,F,1,F,F,F,F,F,F,F,F,F,B,F,1,F,F,F,F,F,F,8,F,F,F,F,1,F,F,F,6,F,1},
				   {1,F,F,F,F,8,F,F,1,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,8,F,F,F,F,F,1,6,F,F,F,1},
				   {1,F,F,5,F,F,F,F,S,1,F,F,F,8,F,F,F,2,F,F,8,F,S,F,F,F,F,F,F,F,F,F,F,1,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,3,1},
				   {1,F,F,F,3,8,F,F,F,F,F,1,F,F,F,1,4,F,F,F,F,F,F,F,F,4,F,F,F,F,8,F,F,F,F,1,F,1},
				   {1,F,F,B,F,F,6,F,F,F,F,F,1,3,1,F,F,B,F,F,F,F,F,3,F,F,F,F,F,F,F,F,F,F,F,F,1,1},
				   {1,F,F,5,F,F,F,F,F,F,F,F,F,1,6,F,F,F,F,F,F,F,F,F,F,F,F,F,G,F,F,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   };
				   
				   case 15:  //level 15: Arena 3: Big open room full of enemies on some walls to cover yourself
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,6,F,9,6,1,F,F,F,F,F,F,B,F,F,F,4,F,F,6,F,F,S,4,4,S,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,9,F,9,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,1},
				   {1,F,F,F,F,1,F,1,F,F,F,F,F,F,1,1,1,1,1,1,1,F,F,F,F,F,F,F,F,1,F,F,4,6,4,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,4,4,F,1,F,F,6,F,F,F,5,F,1},
				   {1,F,F,F,5,F,F,1,F,F,F,F,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,1},
				   {1,F,5,F,F,F,F,1,F,F,F,F,F,F,1,1,1,1,1,1,1,F,F,F,F,F,1,F,F,F,F,F,S,4,4,S,F,1},
				   {1,F,F,4,6,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,8,F,F,F,F,1,F,F,1,1,1,1,1,1,1,F,F,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,4,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,5,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,1,1,1,1,1,1,1,F,4,4,4,4,F,F,F,1,F,F,5,F,F,F,F,F,W,W,W,W,W,W,W,G,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,8,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,4,F,F,6,F,F,F,1,4,F,4,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,1},
				   {1,F,F,F,W,W,W,W,W,W,W,F,F,F,F,1,F,F,F,F,F,F,1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,4,4,4,F,F,4,1,F,F,F,F,F,F,F,1,F,F,F,6,F,F,1,F,F,F,F,B,F,F,1},
				   {1,F,F,F,F,F,4,F,F,1,F,F,F,F,F,F,F,F,F,B,F,F,1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,6,1,F,F,F,F,5,F,F,F,F,F,F,F,F,1,F,F,F,F,6,F,1,F,F,F,F,F,F,1,1},
				   {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,S,S,S,S,F,1,F,F,F,F,F,F,1,F,F,F,F,F,F,G,X},
				   {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1,F,F,F,F,F,F,1,1},
				   {1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,1,F,F,F,F,F,F,1,F,F,S,4,4,4,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,1},
				   {1,F,F,5,F,F,F,F,F,F,F,F,F,F,8,8,8,G,F,F,F,F,4,F,S,S,S,S,F,F,F,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   };
					 
					 case 16: //level 16: key hunt 2. 5 open rooms with keys that we have to find to open all the doors that keep the exit.
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,3,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,3,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,4,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,G,S,B,7,8,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,G,S,B,7,8,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,G,S,B,7,8,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,G,S,B,7,8,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,5,F,F,6,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,F,F,F,5,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,G,S,B,7,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,G,S,B,7,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,3,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1,1,1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,6,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,1,X,1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,3,1},
				   {1,3,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1,2,1,F,4,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,F,F,F,4,F,F,F,F,F,F,F,F,1,F,F,F,F,1,2,1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,3,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,2,1,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,1},
				   {1,F,F,F,F,F,4,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,G,S,B,7,8,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,1,F,F,F,F,F,G,S,B,7,8,F,F,F,F,5,4,F,1},
				   {1,F,F,F,9,F,F,F,F,F,F,F,5,F,F,F,F,F,F,1,F,F,F,F,F,G,S,B,7,8,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,9,F,4,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,8,F,F,F,F,1},
				   {1,F,F,F,9,F,F,F,F,F,F,6,F,F,F,F,F,F,F,1,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,3,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,3,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   };
					 
					 
					 
					 
				
				case 17:  //level 17: big water level
				return new int[][]{
				 {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,X,W,W,W,W,W,W},
				 {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,F,W,W,W,W,W},
				 {W,W,F,4,5,6,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,W,W,W,W,W},
				 {W,W,F,F,F,F,F,F,F,5,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,W,W,W,W,W},
				 {W,W,F,S,F,F,7,F,F,B,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,4,F,F,F,W,W,W},
				 {W,W,F,F,F,F,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,F,F,F,F,W,W,W},
				 {W,W,F,F,F,6,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,G,F,F,F,F,W,W,W},
				 {W,W,W,F,F,W,W,W,6,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,5,F,F,F,F,F,W,W,W},
				 {W,W,W,F,F,W,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,F,F,F,8,W,W,W},
				 {W,W,W,4,F,W,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,F,S,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,W,W,W,W,W},
				 {W,W,W,F,5,W,W,W,F,F,W,W,W,F,F,F,F,6,F,F,F,G,W,W,W,W,W,W,W,W,W,F,F,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,F,F,W,W,W,F,F,7,F,8,F,F,F,F,W,W,W,W,W,W,W,W,W,4,F,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,F,F,F,F,F,F,F,5,F,F,F,F,F,F,W,W,W,W,W,W,W,W,W,F,F,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,F,G,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,W,W,W,W,W,F,4,F,F,8,F,F,F,F,F,F,F,F,4,F,6,F,F,F,F,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,W,W,W,W,W,F,F,F,F,6,F,F,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,W,W,W,W,W,F,F,F,F,F,F,F,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,6,F,9,F,W,W,W,W,W,W,W,W,W,W},
				 {W,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,5,9,F,F,W,W,W,W,W,F,5,W,W,W},
				 {W,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,9,F,F,F,F,F,F,F,F,W,W,W},
				 {W,W,W,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,F,F,F,W,W,W,W,W,F,4,W,W,W},
				 {W,F,F,F,F,F,7,F,F,F,F,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,F,W,W,W,W},
				 {W,F,F,F,F,F,6,F,F,F,S,W,W,W,W,W,W,W,W,W,W,6,6,W,W,W,W,W,W,W,W,W,W,F,4,W,W,W},
				 {W,F,F,F,5,F,F,F,F,F,F,W,W,W,W,W,W,W,W,W,F,F,F,F,W,W,W,W,W,W,W,W,W,F,W,W,W,W},
				 {W,F,G,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,W,W,4,W,W,4,W,W,F,F,4,W,W,W},
				 {W,F,F,F,F,F,7,F,F,F,F,W,W,W,W,W,W,W,W,W,F,F,F,F,F,F,F,F,F,F,F,8,F,F,F,W,W,W},
				 {W,F,F,F,F,4,F,F,F,F,F,W,W,W,W,W,W,W,W,W,5,F,F,F,W,W,W,W,W,W,W,W,7,F,5,W,W,W},
				 {W,F,F,F,F,F,6,F,F,F,F,W,W,W,W,W,W,W,W,W,W,6,6,W,W,W,W,W,W,W,W,W,W,W,F,W,W,W},
				 {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				 {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				 {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
				};
					 
					 case 18:  //Final level: Final Arena, with key hunt.
				   return new int[][]{
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,F,B,F,F,F,F,F,F,F,1},
				   {1,F,3,B,F,F,F,B,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,4,F,F,F,F,F,3,F,6,F,1},
				   {1,F,F,F,B,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,3,F,F,F,F,F,F,F,F,F,F,S,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,3,F,F,1},
				   {1,F,F,B,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,4,F,F,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,F,F,F,6,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,1},
				   {1,F,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,6,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,6,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,9,F,9,F,6,F,F,F,F,F,F,F,4,F,F,F,F,3,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,9,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,7,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,F,F,F,F,7,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,7,F,F,F,5,F,F,3,F,1},
				   {1,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,F,1,1,1,1,1,1,1,1,1,1,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,6,F,F,F,F,F,F,F,F,F,F,F,F,G,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,B,F,F,6,F,F,F,F,5,F,F,F,F,F,F,G,F,F,F,F,F,F,F,4,F,F,F,F,6,B,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,7,F,B,F,F,F,F,F,F,1},
				   {1,F,F,3,B,F,F,F,F,F,F,F,F,G,F,F,F,F,F,F,F,F,G,F,7,1,2,1,7,F,F,F,F,B,F,F,F,1},
				   {1,F,F,F,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,G,G,F,F,F,7,1,7,1,7,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,G,7,1,7,1,7,F,B,F,F,F,F,B,F,1},
				   {1,3,F,B,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,7,1,X,1,7,F,F,F,5,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				   
				   
           };
             
          
        
        

		}
		
		return new int[][] {{}};
	}
}