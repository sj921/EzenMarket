package com.ezen.ezenmarket.product.dto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;



public class Time {


   public String timeAgo(LocalDateTime pastTime) {
	   
       long minutes = ChronoUnit.MINUTES.between(pastTime, LocalDateTime.now());
       
       if (minutes < 1) {
           return "방금 전";
       } else if (minutes < 60) {
           return String.format("%d분 전", minutes);
       } else if (minutes < 60 * 24) {
           return String.format("%d시간 전", minutes / 60);
       } else if (minutes < 60 * 24 * 7) {
    	   return String.format("%d일 전", minutes / 60 / 24);
       } else {
    	   return pastTime.format(DateTimeFormatter.ofPattern("MM월 dd일 yyyy년"));    	   
       }
   }
}

