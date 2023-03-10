package com.ezen.ezenmarket.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.product.dto.PagingVO;
import com.ezen.ezenmarket.product.dto.Post;

public interface mypageMapper {
	
	// 내 상점 관리
	public List<Post> mypageManaging(
									  @Param("user_number") Integer user_number,
									  @Param("myPageTitle") String myPageTitle, @Param("vo") PagingVO vo);
	
	// 총 상품 등록한 개수를 가져옴
	public int countMyPageProduct(@Param("myPageTitle") String mypageTitle, @Param("user_number") Integer user_number); 

}
