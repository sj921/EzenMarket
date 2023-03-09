package com.ezen.ezenmarket.product.mapper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.dto.Wishlist;


@Mapper
public interface ProductMapper {


	public List<Post> selectAllProducts();
	
	public Post selectProduct(String id);
	
	/* 여기부터 내가 만든 것! 위의 것은 건들지 말기!!*/
	
	/* 카테고리별로 조회 */
	 public List<Post> getCateList(Integer category_id);

	 /* 상품 상세페이지(상품정보 + 상품이미지정보 + 판매자정보) */
	 public Post getDetails(Integer post_id);
	 
	 /* 판매자가 등록한 상품 개수 가져오기 */
	 public int cntProdBySeller(Integer user_number);
	 
	/* 판매자가 등록한 연관상품 목록 가져오기 */
	 public List<Post> getRelatedProd(@Param("user_number") Integer user_number
			 							, @Param("post_id") Integer post_id);

	/* 조회수 가져오기 */
	 public Integer plusView(Integer post_id);
	 
	 /* 찜 개수 가져오기 */
	 public int cntWishlist (Integer post_id);
//	 
//	 /* 상세페이지에서 찜하기 */
//	 public int insertWish(@Param("wishlist") Wishlist wishlist);
//	 
//	 /* 상세페이지에서 찜취소 */
//	 public int deleteWish(@Param("wishlist") Wishlist wishlist);
//	
//	 /* 찜여부 확인 */
//	 public String isSavedWish(@Param("user_number") Integer user_number
//										, @Param("post_id") Integer post_id);

	 
	 
	// 찜 여부 확인하기
	public Integer countNumOfZzim(@Param("user_number")Integer user_number, @Param("post_id")Integer post_id);
	    
	// 찜 등록
	public void insertZzim(@Param("user_number")Integer user_number, @Param("post_id")Integer Post_id);
	
	// 찜 삭제
	public void deleteZzim(@Param("user_number")Integer user_number, @Param("post_id")Integer Post_id);

	 

	 
	 
	 
	 
	 
}
