package src.tests;

public class TestApp {
	
	public static void main(String[] args) {
		
		System.out.println("Hello World !!");
		System.out.println("Testing sonar qube !!");
		
		for(int i=1; i>=1; i++){
            System.out.println("The value of i is: "+i);
       }
	   
	   int j;
		while (true) { // Noncompliant; end condition omitted
		  j++;
		}
	}

}
