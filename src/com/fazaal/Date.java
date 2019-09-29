package com.fazaal;


import java.time.LocalDate;  // import the LocalDate class
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class Date {  
	public static  LocalDate getData ()throws Exception{
	    LocalDate date = LocalDate.now();
		return date; 
}
	
	
	public static  String gettime ()throws Exception{
		//Create formatter
		DateTimeFormatter FOMATTER = DateTimeFormatter.ofPattern("hh:mm a");
		 
		//Local time instance
		LocalTime localTime = LocalTime.now();
		 
		//Get formatted String
		String localTimeString = FOMATTER.format(localTime);
		 
		
		return localTimeString;
		
}
}