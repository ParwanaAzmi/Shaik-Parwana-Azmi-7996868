public class Palindrome {
    public static void main(String[] args) {
        String original = "radar";
        String reversed = new StringBuilder(original).reverse().toString();
        if (original.equals(reversed)) {
            System.out.println("It is a Palindrome");
        } else {
            System.out.println("Not a Palindrome");
        }
    }
}