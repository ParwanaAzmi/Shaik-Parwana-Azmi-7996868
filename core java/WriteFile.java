import java.io.FileWriter;
import java.io.IOException;
public class WriteFile {
    public static void main(String[] args) {
        try {
            FileWriter writer = new FileWriter("output.txt");
            writer.write("Hello from Azmi's Java Code!");
            writer.close(); 
            System.out.println("File saved successfully.");
        } catch (IOException e) {
            System.out.println("An error occurred while writing.");
        }
    }
}