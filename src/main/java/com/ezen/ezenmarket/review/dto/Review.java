package com.ezen.ezenmarket.review.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class Review {
	
	@NonNull
	private Integer review_id;
	private Integer enddeal_id;
	@NonNull
	private Integer rating;
	private Integer user_number;
	@NonNull
	private String review_content;

}
