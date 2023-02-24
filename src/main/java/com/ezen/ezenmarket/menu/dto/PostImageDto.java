package com.ezen.ezenmarket.menu.dto;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Data
public class PostImageDto {

	private Integer post_image_id;
	private Integer post_id;
	private String image_url;

}
