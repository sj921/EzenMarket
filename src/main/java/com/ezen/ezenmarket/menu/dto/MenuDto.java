package com.ezen.ezenmarket.menu.dto;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

//@Component
//@AllArgsConstructor
//@NoArgsConstructor
//@Data

public class MenuDto extends PostImageDto {

   private Integer post_id;
   private Integer user_number; 
   private String post_address;
   private String title;
   private Integer category_id;
   private Integer price; 
   private String created;
   private Date updated;
   private Integer post_view;
   
   
   public String getCreatedTimeAgo() {
      
       LocalDateTime pastTime = LocalDateTime.parse(created, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
       ZoneId zoneId = ZoneId.systemDefault();
       ZonedDateTime zdt = pastTime.atZone(zoneId);
      
       System.out.println(LocalDateTime.now());
       return Time.timeAgo(zdt.toLocalDateTime());
   }
}
   


