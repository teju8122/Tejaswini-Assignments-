package Assignment3;

import java.util.Scanner;

public class Arraysearch
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		int[] number = {1,2,3,4,5,6,7,8,9,20};
		System.out.println("Enter the number to search: ");
		int element =sc.nextInt();
		
		boolean found= searchElement(number, element);
		
		if(found)
		{
			System.out.println("Element " + element +  "is present in the array: ");
		}
		else
		{
			System.out.println("Element " + element +  "is  not present in the array: ");
		}
	}
	public static boolean searchElement(int[] array, int element) {
		for(int i : array)
		{
			if(i == element)
			{
				return true;
			}
		}
		return false;
	}

}