package Assignment2;

import java.util.Scanner;

public class FibonacciSeries {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the value of n: ");
        int n = scanner.nextInt();
        scanner.close();

        int[] Series = new int[n];
        Series[0] = 0;
        Series[1] = 1;

        for (int i = 2; i < n; i++) {
            switch (i) {
                case 2:
                    Series[i] = Series[i - 1] + Series[i - 2];
                    break;
                default:
                    Series[i] = Series[i - 1] + Series[i - 2];
            }
        }

        System.out.print("The Fibonacci series up to " + n + " terms is: ");
        for (int i = 0; i < n; i++) {
            System.out.print(Series[i] + " ");
        }
    }
}