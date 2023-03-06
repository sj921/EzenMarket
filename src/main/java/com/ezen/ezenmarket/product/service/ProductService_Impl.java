package com.ezen.ezenmarket.product.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.mapper.ProductMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ProductService_Impl implements ProductService {
		
	@Autowired
	ProductMapper productMapper;
	
	@Override
	public List<Post> getCateList(Integer category_id) {
		return productMapper.getCateList(category_id);
	}

	@Override
	public String paging (HttpServletRequest req, int category_id) {
		String pageStr = req.getParameter("page");

		List<Post> boards = new ArrayList<>();

		if (category_id > 0) {
				boards = productMapper.getCateList(category_id);
				boards.add(new Post());	
		}  

		int page;
		
		if (pageStr == null) {
			page = 1;
		} else {
			page = Integer.parseInt(pageStr);
		}

		int page_size = 10;		
		int board_size = boards.size() - 1;	
		int start_index = (page - 1) * page_size;	
		int end_index = page * page_size;
		end_index = end_index > board_size ? board_size : end_index;
				
		System.out.println("***********************************************페이지 정보...!!" + pageStr);		
		System.out.println("boards ::::::::::::::::" + boards);
		System.out.println("board_size :::::::::::::::::::::::::::: " + board_size);
				
		System.out.printf("현재 페이지는 %d페이지이고, 시작 인덱스는 %d, 마지막 인덱스는 %d입니다.\n",
				page, start_index, end_index);

		int max_page = board_size % page_size == 0 ? 
				board_size / page_size : board_size / page_size + 1;

		int pagination_start = (page / page_size) * page_size + 1 ;
		int pagination_end = (page / page_size + 1) * page_size;
		pagination_end = pagination_end > max_page ? 
				max_page : pagination_end;
		
		System.out.printf("현재 페이지는 %d이고, 페이지 네비게이션 시작 숫자는 %d, 마지막 숫자는 %d입니다.\n",
				 page, pagination_start, pagination_end);
				
		req.setAttribute("page", page);
		req.setAttribute("boards", boards.subList(start_index, end_index));		
		req.setAttribute("pagination_start", pagination_start);	
		req.setAttribute("pagination_end", pagination_end);	
				
		return "product/product_menu";
	}
	
	
	 /* 상품 상세페이지(상품정보 + 상품이미지정보 + 판매자정보) */
	@Override
	public Post getDetails(Integer post_id) {

		return productMapper.getDetails(post_id);
	}

	 /* 판매자가 등록한 상품 개수 가져오기 */
	@Override
	public int cntProdBySeller(Integer user_number) {

		return productMapper.cntProdBySeller(user_number);
	}

	/* 판매자가 등록한 연관상품 목록 가져오기 */
	@Override
	public List<Post> getRelatedProd(Integer user_number, Integer post_id) {
		
		if(productMapper.getRelatedProd(user_number, post_id) != null) {
			return productMapper.getRelatedProd(user_number, post_id);
		}
		return null;
	}

	/* 찜 개수 가져오기 */
	@Override
	public int cntWishlist (Integer post_id) {
		// TODO Auto-generated method stub
		return productMapper.cntWishlist(post_id);
	}

	/* 조회수 가져오기 */
	@Override
	public Post clickTitle(Integer post_id, HttpServletRequest request, HttpServletResponse response) {
			
		Cookie[] cookies = request.getCookies();		
		boolean viewed = false;		
		Cookie viewCookie = null;
		
		if (cookies != null) {
			for (Cookie cookie : cookies) {				
				if (cookie != null && cookie.getName().equals("viewed")) {
					// 같은 쿠키를 찾았다면 쿠키를 넣어줌?
					viewCookie = cookie;
					
					// "33/3456/44/11/55/.." 쿠키 값은 4096 bytes 한계가 있다
					String ids = cookie.getValue();
					
					// split한 배열을 리스트로 만들어주기
					String[] splited = ids.split("/");
					List<String> idList = Arrays.asList(splited);					
					viewed = idList.contains(post_id.toString());					
				}
			}
		}
		
		if (!viewed) {
			productMapper.plusView(post_id);
			if (viewCookie == null) {
				// 본 적도 없고 쿠키도 없는 경우
				viewCookie = new Cookie("viewed", post_id.toString());				
			} else {
				// 쿠키는 있지만 이 글은 처음 보는 경우 (맨 뒤에 새 id를 추가)
				viewCookie.setValue(viewCookie.getValue() + "/" + post_id);
			}
			viewCookie.setPath(request.getContextPath() + "/service/board");			
			response.addCookie(viewCookie);
		}
				
		return productMapper.getDetails(post_id);

	}

}