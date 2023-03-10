package com.ezen.ezenmarket.mypage.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@AllArgsConstructor
@Data
public class Enddeal {
			
	private Integer enddeal_id;
	private Integer seller_user_number;
	private Integer buyer_user_number;
	private Integer post_id;

}
