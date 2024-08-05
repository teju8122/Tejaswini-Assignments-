package Assignment3;

public class Calcofarray 
{
	
	public static void main(String[] args) 
	{
		int rows=3; int columns=3;
		
		int[][] MatrixA = {{10,22,39},{13,20,19},{24,32,30}};
		int[][] MatrixB = {{22,3,10},{12,8,3},{25,12,31}};
		
		
		//Sum
		int[][] sum = new int[rows][columns];
		for(int i = 0; i<rows; i++) 
		{
			for(int j = 0; j<columns; j++)
			{
				sum[i][j] = MatrixA[i][j] + MatrixB[i][j];
			}
		}
		System.out.println("Sum of the given Matrix: ");
		for(int i = 0; i<rows; i++) 
		{ 
			for(int j = 0; j<columns; j++)
			{
				System.out.print(sum[i][j]+ " ");
			}
		    System.out.println(" ");
		}
		
		//sub
		int[][] sub = new int[rows][columns];
		for(int i = 0; i<rows; i++) 
		{
			for(int j = 0; j<columns; j++)
			{
				sum[i][j] = MatrixA[i][j] - MatrixB[i][j];
			}
		}
		System.out.println("Sub of the given Matrix: ");
		for(int i=0; i<rows; i++) 
		{ 
			for(int j=0; j<columns; j++) 
			{
				System.out.print(sub[i][j]+ "  ");
			}
		    System.out.println();
		}
		
		
		//division
		int[][] div = new int[rows][columns];
		for(int i = 0; i<rows; i++) 
		{
			for(int j = 0; j<columns; j++)
			{
				sum[i][j] = MatrixA[i][j] / MatrixB[i][j];
			}
		}
		System.out.println("Division of the given Matrix: ");
		for(int i=0; i<rows; i++) 
		{ 
			for(int j=0; j<columns; j++) 
			{
				System.out.print(div[i][j]+ "  ");
			}
		    System.out.println();
		}
	}
}
