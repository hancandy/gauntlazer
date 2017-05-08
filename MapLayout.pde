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
					{1,F,9,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,1},
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
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				    {1,F,F,F,F,F,1,F,F,F,F,F,F,8,F,8,F,F,F,F,F,F,F,F,1,F,F,F,F,4,F,F,8,F,3,F,F,F,F,F,F,1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				    {1,F,9,F,F,F,1,F,F,F,4,F,F,F,F,F,F,F,F,F,3,F,F,F,1,F,F,F,F,F,F,F,8,F,F,F,F,F,F,F,F,1,8,F,F,F,F,F,F,F,F,5,F,F,F,F,F,1,1,1},
				    {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,8,F,F,F,8,F,F,F,F,1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				    {1,F,9,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,5,F,1,F,F,F,F,F,F,F,F,F,4,F,F,F,F,5,F,1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				    {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,4,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,8,F,F,F,F,1,8,F,F,F,F,F,F,F,F,F,F,F,4,F,F,1,1,1},
				    {1,F,9,F,F,F,2,F,F,F,3,F,F,F,F,F,F,F,F,4,F,F,F,F,2,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				    {1,F,F,F,F,F,1,F,F,F,F,8,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				    {1,F,F,F,F,3,1,F,F,F,F,F,F,8,F,F,F,F,F,6,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,8,F,F,F,F,2,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,2,X,1},
				    {1,F,F,F,F,4,1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,4,F,F,F,F,4,F,F,F,F,F,F,1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				    {1,F,F,F,F,5,1,4,4,3,F,F,1,F,F,F,F,F,F,F,F,F,F,8,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,8,F,F,F,F,F,F,F,F,F,F,F,3,F,F,1,1,1},
				    {1,F,F,F,F,6,1,F,F,F,F,F,1,1,1,1,1,1,1,2,1,1,1,1,1,F,F,F,F,F,F,F,8,F,F,F,F,F,F,5,F,1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				    {1,F,F,F,F,F,1,F,F,F,F,F,1,6,F,6,F,6,F,F,F,F,8,F,1,F,F,F,F,F,F,F,8,F,F,F,F,F,F,F,F,1,8,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,1,1},
				    {1,F,F,F,F,F,1,F,F,F,F,F,1,F,4,F,4,F,F,F,F,5,F,F,1,F,F,F,F,F,F,F,8,F,F,F,F,F,F,F,F,1,8,F,F,F,F,F,F,F,F,6,F,F,F,F,F,1,1,1},
				    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				};

			case 3:
				return new int[][]{
					{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
					{1,1,1,1,1,1,F,9,F,9,F,9,F,F,F,1,1,1,1,1},
					{1,1,1,1,1,1,F,F,F,F,F,F,F,F,F,1,1,1,1,1},
					{1,1,1,1,1,1,F,F,F,F,F,F,F,F,F,1,1,1,1,1},
					{1,1,1,1,1,1,4,F,F,F,F,F,F,F,5,1,1,1,1,1},
				   {1,1,1,1,1,1,6,F,F,F,F,F,F,F,3,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1},
				   {1,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,6,F,F,7,F,F,F,F,F,F,F,7,F,F,F,F,1},
				   {1,7,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,7,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,4,F,7,F,F,F,7,F,F,F,7,F,F,4,F,1},
				   {1,3,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,1},
				   {1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1},
				   {1,F,5,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,7,F,F,F,F,F,F,F,7,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,7,F,F,7,F,7,F,F,7,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,7,F,F,F,3,F,F,F,F,F,F,F,F,F,7,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,F,7,F,7,F,F,F,F,F,F,F,F,F,7,F,F,F,F,1},
				   {1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1},
				   {1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,F,F,F,F,F,1,1,1,1,1,1,1},
				   {1,1,1,1,1,1,1,1,X,X,X,X,X,1,1,1,1,1,1,1},
				}
				
				         case 4:
           return new int[][]{
              {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
              {1,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,9,F,F,F,9,F,F,9,F,F,F,F,F,F,F,F,F,F,F,1,1},
              {1,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,1},
              {1,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,1},
              {1,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,6,F,1,F,F,F,1},
              {1,F,F,F,F,1,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1},
              {1,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,6,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,1,1,1,1,1,1,1,F,F,F,1,1,1,1,1,1,1,1,F,8,F,6,F,F,F,F,5,1},
              {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,F,1},
              {1,3,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,3,1},
              {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,W,W,W,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,F,F,F,F,F,F,F,W,W,W,F,F,F,F,F,F,F,F,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,F,F,F,F,F,F,F,W,W,W,F,F,F,F,F,F,F,F,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,F,F,F,F,F,F,F,W,W,W,F,F,F,F,F,F,F,F,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,7,F,F,1,F,6,F,F,F,F,F,F,F,F,F,F,F,6,F,F,1,F,8,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,4,F,F,F,1,1,1,1,1,1,1,F,F,F,1,1,1,1,1,1,1,1,F,8,F,F,F,4,F,F,F,1},
              {1,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,F,1,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,F,1},
              {1,F,F,F,F,F,1,F,F,4,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,F,1},
              {1,F,F,F,F,1,F,6,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,1,F,F,F,F,1},
              {1,5,F,F,1,F,F,F,3,F,F,F,F,7,F,8,F,7,F,8,F,7,F,8,F,F,F,F,F,6,F,5,F,1,F,F,F,1},
              {1,F,F,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,F,F,1},
              {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
              {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
              {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,X,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
              
              
              
              
             
             
             
           };
		}
		
		return new int[][] {{}};
	}
}