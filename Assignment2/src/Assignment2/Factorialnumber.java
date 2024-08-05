package Assignment2;

public class Factorialnumber {
	public static void main(String[] args) {
		int a = 4;
		long factorial = factorial(a);
		System.out.println("Factorial of" + a + " is:" + factorial);
	}
	public static long factorial(int n) {
		if (n == 0) {
			return 1;
		}
		else {
			return n * factorial(n-1);
		}
	}

}
