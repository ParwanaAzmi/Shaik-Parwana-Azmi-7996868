public class Exceptions {
    public static void main(String[] args) {
        int dividend = 10;
        int divisor = 0;
        try {
            int result = dividend / divisor; 
            System.out.println("Result: " + result);
        } catch (ArithmeticException e) {
            System.out.println("Error: You cannot divide a number by zero!");
        }
        System.out.println("App is still running safely!");
    }
}