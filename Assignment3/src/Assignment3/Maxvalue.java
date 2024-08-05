package Assignment3;

import java.util.Scanner;

public class Maxvalue 
{
	public static void main(String args[]) 
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the array elements: ");
		int arr[] = {2 , 4 , 6, 7 , 10 , 8};
				
		int a = arr[0];
		
		for(int i=0; i<arr.length; i++) 
		{
			
			if(a < arr[i]) 
			{
				a = arr[i];
			}
				
		}
		
		System.out.println(a);			
	}

}
