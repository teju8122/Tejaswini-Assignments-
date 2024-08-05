package Assignment1;

//package first;

public class arithmeticOperators{

 // Function to add two numbers
 public static int add(int a, int b) {
     return a + b;
 }

 // Function to subtract two numbers
 public static int subtract(int a, int b) {
     return a - b;
 }

 // Function to multiply two numbers
 public static int multiply(int a, int b) {
     return a * b;
 }

 // Function to divide two numbers
 public static double divide(int a, int b) {
     return  a / b;
 }

 public static void main(String[] args) {
     // Test data
     int num1 = 10;
     int num2 = 5;
      // Performing arithmetic operations
     int x = add(num1, num2);
     int y = subtract(num1, num2);
     int z = multiply(num1, num2);
     double t = divide(num1, num2);

     // Displaying the results
     System.out.println("Addition: " + num1 + " + " + num2 + " = " + x);
     System.out.println("Subtraction: " + num1 + " - " + num2 + " = " + y);
     System.out.println("Multiplication: " + num1 + " * " + num2 + " = " + z);
     System.out.println("Division: " + num1 + " / " + num2 + " ="+t);
}
}
