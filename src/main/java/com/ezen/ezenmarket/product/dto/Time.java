package com.ezen.ezenmarket.product.dto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;



public class Time {


	public static String timeAgo(LocalDateTime pastTime) {
	    long minutes = ChronoUnit.MINUTES.between(pastTime, LocalDateTime.now());
	    
	    if (minutes < 1) {
	        return "방금 전";
	    } else if (minutes < 60) {
	        return String.format("%d분 전", minutes);
	    } else if (minutes < 1440) {
	        return String.format("%d시간 전", minutes / 60);
	    } else {
	        return pastTime.format(DateTimeFormatter.ofPattern("MMM dd, yyyy"));
	    }
	}
}