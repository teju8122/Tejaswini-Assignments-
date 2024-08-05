package Assignment1;


import java.util.Scanner;

public class Swapping1 {
  // Function with arguments 
  public static void interchangeWithThirdVariable(int a, int b) {
      int temp = a;
      a = b;
      b = temp;
      System.out.println("After interchange (with third variable):");
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
			interchangeWithThirdVariable(a, b);
		}
  }

  public static void main(String[] args) {
      interchangeInput();
}
}