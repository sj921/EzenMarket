package com.ezen.ezenmarket.product.dto;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.springframework.stereotype.Component;

import com.ezen.ezenmarket.user.dto.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class Post {
	
	private Integer post_id;
	private Integer user_number;
	private String post_address;	// 컬럼명 수정
	private String title;
	private String post_content;		// 컬럼 추가
	private Integer category_id;
	private Integer price;
	private String created;
	private Date updated;
	private Integer post_view;
	
	private PostImage postImage;
	private Integer post_image_id;
	private String image_url;
		
	/* 여기부터 내가 추가한 것! 위의 것은 건들지 말기!!*/
	
	private Category category;
	private String category_name;

	private Wishlist wishlist;
	private Integer wishlist_id;
	
	private User user;	
	private String nickname;
	private String user_image;

	
	public String getCreatedTimeAgo() {		
		
		LocalDateTime pastTime = LocalDateTime.parse(created, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		ZoneId zoneId = ZoneId.systemDefault();
		ZonedDateTime zdt = pastTime.atZone(zoneId);
      
		System.out.println(LocalDateTime.now());
		return Time.timeAgo(zdt.toLocalDateTime());
		
	}
	
}