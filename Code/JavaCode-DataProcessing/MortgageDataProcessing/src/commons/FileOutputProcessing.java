package commons;

import java.io.FileWriter;
import java.io.IOException;

public class FileOutputProcessing {
	public static void outputFile(String fileName, String input) {
		try (FileWriter writer = new FileWriter(fileName)) {
            // Write the input string to the CSV file
            writer.write(input);
            System.out.println("CSV file created successfully: " + fileName);
        } catch (IOException e) {
            System.out.println("An error occurred while creating the CSV file: " + e.getMessage());
        }
	}
}
