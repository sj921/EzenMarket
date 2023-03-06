package com.ezen.ezenmarket.product.dto;

import java.time.LocalDateTime;


import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class Time {

   public static String timeAgo(LocalDateTime pastTime) {
       long minutes = ChronoUnit.MINUTES.between(pastTime, LocalDateTime.now());
       
       if (minutes < 1) {
           return "just now";
       } else if (minutes < 60) {
           return String.format("%d minute%s ago", minutes, minutes == 1 ? "" : "s");
       } else if (minutes < 1440) {
           return String.format("%d hour%s ago", minutes / 60, minutes / 60 == 1 ? "" : "s");
       } else {
           return pastTime.format(DateTimeFormatter.ofPattern("MMM dd, yyyy"));
       }
   }
}