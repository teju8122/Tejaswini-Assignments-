package Assignment3;

public class SumofArray 
{
	public static void main (String[] args) 
	{
		int a[] = new int[] {1,3,6,4,8,1,7,2,5,7};
		int sum = 0;
		for(int i=0; i<a.length;i++) 
		{
			sum = sum + a[i];
		}
		System.out.println("Sum of all the elementof an array: " +sum);
	}
}
