package Assignment6;

import java.util.Scanner;

//import java.util.Scanner;

//import Assignment6.TreeDemo.Node;

//import javax.swing.tree.Node;

public class TreeNode{
	int data;
	TreeNode left;
	TreeNode right;
	
	public TreeNode(int data) {
		this.data = data;
		this.left = null;
		this.right = null;
	}
public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();
		
		System.out.println("Enter the any numbwer");
	}
	
	TreeNode root;
	public void Tree() {
		this.root = null;
	}
	
	 void addNode(int value) {
		TreeNode newNode = new TreeNode(value);
		
		if(root == null) {
			root = newNode;
			return;
		}
		
		TreeNode current = root;
		TreeNode parent = null;
		
		while(true) {
			parent = current;
			if(value < current.data) {
				}
			 else{
				current = current.right;
				
				if(current == null) {
					parent.right = newNode;
					return;
				}
			}
		}
		//System.out.println("Enter the any number: ");
	}
	
}