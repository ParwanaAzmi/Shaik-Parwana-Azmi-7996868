public class Reverse {
    public static void main(String[] args) {
        String original = "Java";
        String reversed = new StringBuilder(original).reverse().toString();
        System.out.println("Original: " + original);
        System.out.println("Reversed: " + reversed);
    }
}