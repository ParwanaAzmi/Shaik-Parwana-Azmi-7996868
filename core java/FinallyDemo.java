public class FinallyDemo {
    public static void main(String[] args) {
        try {
            int data = 25 / 5;
            System.out.println("Data: " + data);
        } catch (NullPointerException e) {
            System.out.println(e);
        } finally {
            System.out.println("The finally block always runs to clean up resources.");
        }
    }
}