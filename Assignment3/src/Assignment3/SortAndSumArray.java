package Assignment3;

import java.util.Arrays;
import java.util.Scanner;

public class SortAndSumArray {
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		
		int[] array = {2, 4, 6, 1, 0, 7, 9, 8, 3, 11, 10, 18};
		
		Arrays.sort(array);
		
		int sum = 0;
		for(int num : array)
		{
			sum += num;
		}
		
	    System.out.print("Sorted array: ");
	    
	    for(int num : array) 
	    {
	    	System.out.print(num + " ");
	    }
	    
	    System.out.println();
		System.out.println("Sum of the array element: " + sum);
		sc.close();	
	}
}
