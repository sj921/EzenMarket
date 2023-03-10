package com.ezen.ezenmarket.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.product.dto.PagingVO;
import com.ezen.ezenmarket.product.dto.Post;

public interface ProductMapper {
	
	public List<Post> selectAllProducts();
	
	public Post selectProduct(String id);
	
	public void insertProduct(Post post); 
	
	public List<Post> searchProduct(String title);

	// 총 게시글 수를 가져옴
	public int countProduct(String title); 
	
	// 페이징 처리 상품 조회
	public List<Post> getProductWithPaging(@Param("title") String title, @Param("vo")PagingVO vo);
	
	// 가격 높은순으로 정렬
	public List<Post> getProductHighPrice(@Param("title") String title, @Param("vo")PagingVO vo);
	
	// 가격 낮은순으로 정렬
	public List<Post> getProductLowPrice(@Param("title") String title, @Param("vo")PagingVO vo);



}
