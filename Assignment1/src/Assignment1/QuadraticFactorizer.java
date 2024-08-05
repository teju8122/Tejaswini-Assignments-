package Assignment1;


public class QuadraticFactorizer {
    public static void main(String[] args) {
        int a = 6;
        int b = -18;
        int c = -3;

        findFactors(a, b, c);
    }

    public static void findFactors(int a, int b, int c) {
        int determinant = b * b - 4 * a * c;

        if (determinant > 0) {
            double root1 = (-b + Math.sqrt(determinant)) / (2 * a);
            double root2 = (-b - Math.sqrt(determinant)) / (2 * a);

            System.out.println("The factors are: (" + a + "x + " + (-root1) + ") and (" + a + "x + " + (-root2) + ")");
        } else if (determinant == 0) {
            double root = -b / (2 * a);
            System.out.println("The factor is: (" + a + "x + " + (-root) + ")^2");
        } else {
            System.out.println("The equation has no real roots.");
 }
}
}