package commons;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class Start {

	public static void main(String[] args) {
		FileInputReader r = new FileInputReader("C:\\Users\\themi.THEMIYAWS\\Desktop\\mgt-6203-source-data\\data-processing\\mortgage_dataset3.csv");
		System.out.println(r.getFile());
		
		FileInputReader m = new FileInputReader("C:\\Users\\themi.THEMIYAWS\\Desktop\\mgt-6203-source-data\\data-processing\\MORTGAGE30US.csv");
		String monthlyAverage = DataProcessing.computeMonthlyAverages(m.getFile());
		
		Map<String, Double> mortgageRates = DataProcessing.parseInput(monthlyAverage);
		
		List<String> rates = createValueList(r.getFile(),mortgageRates);
		String outputFile = createOutput(r.getFile(),"12monthForecast", rates);
		
		
		FileOutputProcessing.outputFile("C:\\Users\\themi.THEMIYAWS\\Desktop\\mgt-6203-source-data\\data-processing\\mortgage_dataset4.csv", outputFile);
	}
	
	public static String rateLookup(Map<String, Double> mortgageRates, String inputMonthYear) {
		if (mortgageRates.containsKey(inputMonthYear)) {
            
            if (mortgageRates.containsKey(inputMonthYear)) {
                double rateLookup = mortgageRates.get(inputMonthYear);
                return Double.toString(rateLookup);
            } else {
                return "N/A";
            }
        } else {
        	return "N/A";
        }
	}
	
	public static String createOutput(String input, String columnName, List<String> columnValues) {
		String[] dataSet = input.split("\n");
		String outputFile = "";
		int counter = 0;
		for (String x: dataSet) {
			if (counter == 0) {
				x += "," + columnName + "\n";
			}
			else {
				x += "," + columnValues.get(counter-1) + "\n";
			}
			counter++;
			outputFile += x;
		}
		
		return outputFile;
	}
	
	public static List<String> createValueList(String input, Map<String, Double> mortgageRates) {
		List<String> valueList = new ArrayList<String>();
		String[] dataSet = input.split("\n");
		int counter = 0;
		for (String x: dataSet) {
			if (counter!=0) {
				String date = x.split(",")[0];
				String value = rateLookup(mortgageRates,DataProcessing.calculateTwelveMonthsLater(date));
				valueList.add(value);
			}
			counter++;
		}
		return valueList;
	}

}
