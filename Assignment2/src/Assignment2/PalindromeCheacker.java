package Assignment2;

import java.util.Scanner;

public class PalindromeCheacker {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Enter a number: ");
		int a = sc.nextInt();
		sc.close();
		
		if(isPalindrome(a)) {
			System.out.println(a + "is a palindrome.");	
		}
		else {
			System.out.println(a + "is not a palidrome.");
		}
	}
	public static boolean isPalindrome(int a) {
		int s = a;
		int r = 0;
		
		while (a != 0) {
			int digit = a % 10;
			r = r * 10 + digit;
			a /=10;
		}
		return s == r;
	}
}
