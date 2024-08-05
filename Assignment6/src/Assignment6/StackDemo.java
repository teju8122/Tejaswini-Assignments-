package Assignment6;

import java.util.Scanner;

public class StackDemo {
	int top = -1;
    int size = 5;
    int[] stk = new int[size];

    void push(int value) {
        if (isFull() == 1) {
            System.out.println("Stack is Full");
        } else {
            top++;
            stk[top] = value;
            display();
        }
    }

    void display() {
        if (isEmpty() == 1) {
            System.out.println("Stack is Empty");
        } else {
            for (int i = 0; i <= top; i++) {
                System.out.print(stk[i] + " ");
            }
            System.out.println();
        }
    }

    void pop() {
        if (isEmpty() == 1) {
            System.out.println("Stack is Empty");
        } else {
            top--;
            display();
        }
    }

    int isEmpty() {
        return (top < 0) ? 1 : 0;
    }

    int isFull() {
        return (top == size - 1) ? 1 : 0;
    }

    public static void main(String[] args) {
        String ch1 = "y";
        int ch2;
        StackDemo sd = new StackDemo();
        Scanner sc = new Scanner(System.in);
        while (ch1.equals("y")) {
            System.out.println("1.Push \n2.Pop \n3.Display");
            ch2 = sc.nextInt();

            switch (ch2) {
                case 1: {
                    int v;
                    System.out.println("Enter value to push in stack:");
                    v = sc.nextInt();
                    sd.push(v);
                    break;
                }
                case 2: {
                    sd.pop();
                    break;
                }
                case 3: {
                    sd.display();
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
