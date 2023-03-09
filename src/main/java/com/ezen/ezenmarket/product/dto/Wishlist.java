package com.ezen.ezenmarket.product.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Wishlist {
	
	private Integer wishlist_id;
	private Integer user_number = 2;
	private Integer post_id;
	
	private Post post;
	private String title;
	private Integer price;
	
	private PostImage postImage;
	private String image_url;

	
	
		
}
