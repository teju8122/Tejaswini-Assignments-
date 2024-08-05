package Assignment6;

import java.util.Scanner;

public class QueueDemo {
	 int end = -1;
	    int size = 5;
	    int[] que = new int[5];

	    void push(int value) {
	        if (isFull() == 1) {
	            System.out.println("Queue is Full");
	        } else {
	            end++;
	            que[end] = value;
	            display();
	        }
	    }

	    void display() {
	        if (isEmpty() == 1) {
	            System.out.println("Queue is Empty");
	        } else {
	            for (int i = 0; i <= end; i++) {
	                System.out.print(que[i] + " ");
	            }
	            System.out.println();
	        }
	    }

	    void pop() {
	        if (isEmpty() == 1) {
	            System.out.println("Queue is Empty");
	        } else {
	            for (int i = 0; i < end; i++) {
	                que[i] = que[i + 1];
	            }
	            end--;
	            display();
	        }
	    }

	    int isEmpty() {
	        if (end < 0) {
	            return 1;
	        } else {
	            return 0;
	        }
	    }

	    int isFull() {
	        if (end == size - 1) {
	            return 1;
	        } else {
	            return 0;
	        }
	    }

	    public static void main(String[] args) {
	        String ch1 = "y";
	        int ch2;
	        QueueDemo qd = new QueueDemo();
	        Scanner sc = new Scanner(System.in);
	        while (ch1.equals("y")) {
	            System.out.println("1.Push \n2.Pop \n3.Display");
	            ch2 = sc.nextInt();

	            switch (ch2) {
	                case 1: {
	                    int v;
	                    System.out.println("Enter value to push in Queue:");
	                    v = sc.nextInt();
	                    qd.push(v);
	                    break;
	                }
	                case 2: {
	                    qd.pop();
	                    break;
	                }
	                case 3: {
	                    qd.display();
	                    break;
	                }
	                default: {
	                    System.out.println("Wrong Choice...!");
	                    break;
	                }
	            }
	            System.out.println("Do you want to perform the operation again?(y/n):");
	            ch1 = sc.next();
	        }
	        sc.close();
	    }
	}
