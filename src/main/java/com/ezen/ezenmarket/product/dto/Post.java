package com.ezen.ezenmarket.product.dto;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.Locale;

import org.springframework.cglib.core.Local;

import java.text.SimpleDateFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@RequiredArgsConstructor
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Post extends PostImage {
	
	private Integer post_id;
	@NonNull
	private Integer user_number;
	@NonNull
	private String post_address;
	@NonNull
	private String title;
	@NonNull
	private String post_content;
	@NonNull
	private Integer category_id;
	@NonNull
	private Integer price;
	
	private Date created;
	private Date updated;
	private Integer post_view;

	private PostImage postImage;
	private Integer post_image_id; 
	private String image_url;
	
	
//	static DateTimeFormatter dateTimeFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");

	private static SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA);
//	private static SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm", Locale.KOREA);
	
	   public String getCreationDateTime() {
		 
		// Date -> LocalDateTime으로 바꿔주기
	    // java.sql.Date의 toLocalDateTime()를 사용하기 위해서는 다운캐스팅이 필요
//		 LocalDateTime updateTime = 
//				 ((java.sql.Date)created).toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime(); 
		 
		 LocalDate creationDate = ((java.sql.Date)created).toLocalDate();
		
		 // 날짜
		 LocalDate today = LocalDate.now();
		 
		 // 시간
//		 LocalTime time = LocalTime.now();
		 
		 System.out.println("그 전인가요?" + creationDate.isBefore(today));
		
		 // 날짜
	 	 long days = ChronoUnit.DAYS.between(creationDate, LocalDate.now());
	 	 
	 	 // 시간
//	 	 long minutes = ChronoUnit.MINUTES.between(creationDate, LocalTime.now());

	 	 
	      String word =""; 
	      
	       if (days < 1) {
	    	   
	    	   word= "하루 전";
	      // 결과를 false로 나오게 만듬
	       } else if (days < 7) {
	    	   
	    	   word = creationDate.isEqual(today) ? dayFormat.format(created): created.toString().format("%d일 전", days);
	    	   
	       } else if (days < 28) { 

	    	   word = creationDate.isEqual(today) ? dayFormat.format(created): created.toString().format("%d주 전", days / 7);
	   
	       } else if (days < 40) {
	    	   
	    	   word = creationDate.isEqual(today) ? dayFormat.format(created): created.toString().format("%d달 전", days / 30);
	    	   	    	   
	       } else {
	    	   
	    	   word =  dayFormat.format(created);
	       }
	      
	       return word;
	   }
	   
		   public String getUpdateDateTime() {
			 
	 	 
		       return dayFormat.format(updated);
		   }
	}
	 
