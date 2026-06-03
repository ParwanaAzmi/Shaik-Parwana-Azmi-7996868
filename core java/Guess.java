public class Guess {
    public static void main(String[] args) {
        int target = 42; 
        int guess = 0;
        while (guess != target) {
            System.out.println("Guessing...");
            guess = 42; 
        }
        System.out.println("Correct Guess!");
    }
}