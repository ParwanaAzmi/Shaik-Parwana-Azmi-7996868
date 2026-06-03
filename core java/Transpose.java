public class Transpose {
    public static void main(String[] args) {
        int[][] original = { {1, 2, 3}, {4, 5, 6} };
        int[][] transposed = new int[3][2];
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                transposed[j][i] = original[i][j]; // The flip happens here
            }
        }
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(transposed[i][j] + " ");
            }
            System.out.println(); 
        }
    }
}