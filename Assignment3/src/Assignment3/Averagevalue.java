package Assignment3;

public class Averagevalue 
{
	public static void main(String[] args) 
	{
		int[] a = new int[] {20,30,25,37,67,-16,-100};
		
		int sum = 0;
		for(int i=0; i<a.length; i++) 
		{
			sum = sum + a[i];
		}
		int avg = sum/a.length;
		System.out.println("Average value of the array is: " +avg);		
	}

}
