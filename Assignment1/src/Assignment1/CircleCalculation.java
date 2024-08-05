package Assignment1;

public class CircleCalculation{

    // Function to calculate the area of a circle
    public static double calculateArea(int radius) {
        return Math.PI * radius * radius;
    }

    // Function to calculate the circumference of a circle
    public static double calculateCircumference(int radius) {
        return 2 * Math.PI * radius;
    }

    public static void main(String[] args) {
        // Test data
        int radius = 5;

        // Calculating area and circumference
        int area = (int) calculateArea(radius);
        int circumference = (int) calculateCircumference(radius);

        // Displaying the results
        System.out.println("For a circle with radius: " + radius);
        System.out.println("Area: " + area);
        System.out.println("Circumference: " + circumference);
}
}