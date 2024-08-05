package Assignment1;

import java.util.Scanner;

public class Swapping2 {
    // Function with arguments 
    public static void interchangeWithoutThirdVariable(int a, int b) {
        a = a + b;
        b = a - b;
        a = a - b;
        System.out.println("After interchange (without third variable):");
        System.out.println("a = " + a);
        System.out.println("b = " + b);
    }

    // Function without arguments 
    public static void interchangeInput() {
        try (Scanner scanner = new Scanner(System.in)) {
			System.out.println("Enter the value of a:");
			int a = scanner.nextInt();
			System.out.println("Enter the value of b:");
			int b = scanner.nextInt();
			interchangeWithoutThirdVariable(a, b);
		}
    }

    public static void main(String[] args) {
        interchangeInput();
    }
}
