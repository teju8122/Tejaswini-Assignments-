package Assignment2;

import java.util.Scanner;

public class Power {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the value of a: ");
		int a = sc.nextInt();
		System.out.print("Enter the value of b: ");
		int b = sc.nextInt();
		sc.close();
		
		int result = 1;
		for(int i = 0; i < b; i++) {
			result *= a;
		}
		
		System.out.println("The value of "+a+" raised to the power of " +b+ "is:" +result);	
		}
}
