public class MinMax {
    public static void main(String[] args) {
        int[] numbers = {15, 42, 5, 89, 23};
        int min = numbers[0];
        int max = numbers[0];
        for (int num : numbers) {
            if (num > max) {
                max = num; 
            }
            if (num < min) {
                min = num; 
            }
        }
        System.out.println("Maximum: " + max);
        System.out.println("Minimum: " + min);
    }
}