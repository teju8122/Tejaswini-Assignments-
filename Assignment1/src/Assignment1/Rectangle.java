package Assignment1;

import java.util.Scanner;

public class Rectangle 
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter the length of the rectangle: ");
		int length = sc.nextInt();
		
		System.out.println("Enter the width of thr rectangle: ");
		int width = sc.nextInt();
		
		int area = length * width;
		int perimeter = 2 * (length + width);
		
		System.out.println("Area of the rectangle: " +area);
		System.out.println("Perimeter of the rectangle: " +perimeter);
	}
}

