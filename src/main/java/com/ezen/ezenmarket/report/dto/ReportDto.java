package com.ezen.ezenmarket.report.dto;

import org.springframework.stereotype.Component;

import com.ezen.ezenmarket.product.dto.PostImage;
import com.ezen.ezenmarket.chat.dto.ChattingRoom;
import com.ezen.ezenmarket.mypage.dto.Review;
import com.ezen.ezenmarket.product.dto.Post;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ReportDto {
		
	private Integer report_id;
	private Integer report_type;
	private Integer report_detail;
	private Integer user_number;
	private String report_content;
	private Integer report_status;
	
	private Review review;
	private Integer enddeal_id;
		
	private Post post;
	private Integer post_id;
	
	private ChattingRoom chattingRoom;
	private Integer chattingRoom_id;
	private Integer buyer_user_number;
	
}