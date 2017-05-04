class MapLayout
{
	int[][] getLayout(int lv)
	{
		switch(lv)
		{
			case 1: 
		        return new int[][]{
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					{1,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,9,F,1,F,F,F,F,F,4,F,1,F,9,F,F,F,F,F,3,F,F,F,1},
					{1,F,F,F,1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,1,1,2,1,1,1,1,1,1,F,F,F,F,F,F,F,F,F,5,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,3,F,F,F,F,F,F,F,F,4,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,1,1,1,1,1,2,1,1,1,1,1,1,F,F,F,F,F,F,6,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,4,4,3,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,8,F,F,F,F,F,F,F,1,1,1,1,1,1,1,2,1,1,1,1,1},
					{1,1,1,1,1,2,1,1,1,1,1,1,1,F,8,F,F,F,F,F,4,4,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,8,F,F,F,F,4,4,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,5,F,F,F,F,8,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,5,F,F,F,7,F,8,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,6,F,F,F,F,F,F,8,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,6,F,F,F,F,F,F,F,8,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{X,F,F,F,F,F,F,F,F,2,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,3,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
				};
				
			case 2:
				return new int[][]{
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,9,F,F,F,F,F,F,F,4,F,F,F,9,F,F,F,F,F,3,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,3,F,F,F,F,F,F,F,F,4,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,1,1,1,1,1,2,1,1,1,1,1,1,F,F,F,F,F,F,6,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,4,4,3,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,8,F,F,F,F,F,F,F,1,1,1,1,1,1,1,2,1,1,1,1,1},
					{1,1,1,1,1,2,1,1,1,1,1,1,1,F,8,F,F,F,F,F,4,4,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,8,F,F,F,F,4,4,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,5,F,F,F,F,8,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,5,F,F,F,7,F,8,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,6,F,F,F,F,F,F,8,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,6,F,F,F,F,F,F,F,8,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{X,F,F,F,F,F,F,F,F,2,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,3,F,F,F,F,1},
					{1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}	
				};
		}
		
		return new int[][] {{}};
	}
}