package commons;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class DataProcessing {

	public static Map<String, Double> parseInput(String input) {
        Map<String, Double> mortgageRates = new HashMap<>();
        String[] lines = input.split("\n");

        for (int i = 1; i < lines.length; i++) { // Start from index 1 to skip the header line
            String[] parts = lines[i].split(",");
            try {
                SimpleDateFormat inputDateFormat = new SimpleDateFormat("M/d/yyyy");
                SimpleDateFormat outputDateFormat = new SimpleDateFormat("yyyy-MM");
                Date date = inputDateFormat.parse(parts[0]);
                String monthYear = outputDateFormat.format(date);
                double rate = Double.parseDouble(parts[1]);
                mortgageRates.put(monthYear, rate);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        return mortgageRates;
    }

    public static String calculateThreeMonthsLater(String monthYear) {
        String[] parts = monthYear.split("-");
        int year = Integer.parseInt(parts[0]);
        int month = Integer.parseInt(parts[1]);

        // Adding 3 months
        month += 3;
        if (month > 12) {
            month -= 12;
            year += 1;
        }

        // Format the month and year back to the desired format
        String formattedMonth = String.format("%02d", month);
        return year + "-" + formattedMonth;
    }
    
    public static String calculateSixMonthsLater(String monthYear) {
    	String[] parts = monthYear.split("-");
        int year = Integer.parseInt(parts[0]);
        int month = Integer.parseInt(parts[1]);

        // Adding 6 months
        month += 6;
        if (month > 12) {
            month -= 12;
            year += 1;
        }

        // Format the month and year back to the desired format
        String formattedMonth = String.format("%02d", month);
        return year + "-" + formattedMonth;
    }
    
    public static String calculateTwelveMonthsLater(String monthYear) {
    	String[] parts = monthYear.split("-");
        int year = Integer.parseInt(parts[0]);
        int month = Integer.parseInt(parts[1]);

        // Adding 12 months
        month += 12;
        if (month > 12) {
            month -= 12;
            year += 1;
        }

        // Format the month and year back to the desired format
        String formattedMonth = String.format("%02d", month);
        return year + "-" + formattedMonth;
    }
    
    public static String computeMonthlyAverages(String inputData) {
    	 String[] lines = inputData.split("\n");

         // Map to store monthly total and count of MORTGAGE30US values
         Map<String, Double> monthlyTotal = new HashMap<>();
         Map<String, Integer> monthlyCount = new HashMap<>();

         // Skip the header row (index 1)
         for (int i = 1; i < lines.length; i++) {
             String[] data = lines[i].split(",");
             String[] dateParts = data[0].split("/");
             String monthYear = dateParts[0] + "/1/" + dateParts[2];

             // Extract and accumulate MORTGAGE30US values
             double mortgageRate = Double.parseDouble(data[1]);
             if (monthlyTotal.containsKey(monthYear)) {
                 monthlyTotal.put(monthYear, monthlyTotal.get(monthYear) + mortgageRate);
                 monthlyCount.put(monthYear, monthlyCount.get(monthYear) + 1);
             } else {
                 monthlyTotal.put(monthYear, mortgageRate);
                 monthlyCount.put(monthYear, 1);
             }
         }

         // Calculate monthly averages and return the results
         String result = "﻿observation_date,MORTGAGE30US\n";
         for (String monthYear : monthlyTotal.keySet()) {
             double average = monthlyTotal.get(monthYear) / monthlyCount.get(monthYear);
             result += monthYear + "," + average + "\n";
         }
         return result;
    }
}
