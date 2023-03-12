package com.ezen.ezenmarket.mypage.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Post {
	private Integer post_Id;
	private String title;
	private Integer price;
	private String image_url;
	
	private String created;
	private Integer user_number;
}