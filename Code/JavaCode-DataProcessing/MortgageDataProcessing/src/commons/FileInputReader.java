package commons;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class FileInputReader {
	
	String fileContent = "";
	
	public FileInputReader(String filePath) {
		try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
	        String line;
	        while ((line = br.readLine()) != null) {
	            this.fileContent += line + "\n";
	        }
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
	
	public String getFile() {
		return fileContent;
	}

}
