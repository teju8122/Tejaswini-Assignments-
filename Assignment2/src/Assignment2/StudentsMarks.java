package Assignment2;

import java.util.Scanner;

public class StudentsMarks {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String[] subjects = {"Maths", "Physics", "Chemistry", "Computer Programming","BEE","Mechanics"};
		int[] marks =new int[6];
		
		System.out.println("Enter the marks obtain by the student in each subjects: ");
		
		for(int i = 0; i < 6; i++) {
			System.out.print("Enter marks in" +subjects[i]+ ":");
			marks[i] = sc.nextInt();
		}
		
		int sum = 0;
		int failcount = 0;
		String failSubjects = "";
		
		for(int i = 0; i < 6; i++) {
			sum += marks[i];
			
			if(marks[i] < 40) {
				failcount++;
				failSubjects += subjects[i] + ",";
			}
		}
		
		double persentage = (sum / 600.0) * 100;
		
		System.out.println("Sum of marks:" +sum);
		
		System.out.println("persentage: " +persentage + "%");
		
		if(failcount == 0) {
			System.out.println("Result: Pass");
		}
		
		else {
			System.out.println("Result: Fail");
			System.out.println("Failed in" +failcount+ "subjects:" + failSubjects.substring(0, failSubjects.length() -2));
		}
			
	}
}
