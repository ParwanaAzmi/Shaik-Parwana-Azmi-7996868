import java.io.File;
import java.io.IOException;
import java.util.Scanner;
public class ReadFile {
    public static void main(String[] args) {
        try {
            File targetFile = new File("output.txt");
            Scanner reader = new Scanner(targetFile);
            while (reader.hasNextLine()) {
                String line = reader.nextLine();
                System.out.println("File Contents: " + line);
            }
            reader.close();
        } catch (IOException e) {
            System.out.println("Error: Could not locate the file.");
        }
    }
}