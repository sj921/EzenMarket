package com.ezen.ezenmarket.product.dto;

import java.sql.Date;

import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor 
@Data
public class Post{
	
	
	private Integer post_id;
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
	 
}
