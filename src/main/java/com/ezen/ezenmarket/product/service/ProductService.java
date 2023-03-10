package com.ezen.ezenmarket.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.ezen.ezenmarket.product.dto.PagingVO;
import com.ezen.ezenmarket.product.dto.Post;

public interface ProductService {

	// 총 게시글 수를 가져옴
	public int countProduct(String title); 
	
	// 페이징 처리 게시글 조회
	public List<Post> getProductWithPaging(String title, PagingVO vo);
	


}
