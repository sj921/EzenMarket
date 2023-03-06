package com.ezen.ezenmarket.product.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.mapper.ProductMapper;
import com.ezen.ezenmarket.product.service.ProductService;
import com.ezen.ezenmarket.user.dto.User;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class ProductController {
	
	@Autowired
	ProductMapper productMapper;
	
	@Autowired
	ProductService productService;	// 내가 추가한 것
		
//	@GetMapping(value="/product")
//	public String productDetail(String id, Model model) {
//		
//		model.addAttribute("post", productMapper.selectProduct(id));
//		
//		return "product/product_detail";
//	}
	
	@GetMapping(value="/search")
	public String searchProduct() {
		
		return "product/product_search";
	}
	
	@GetMapping(value="/register")
	public String registerProduct() {
		
		return "product/product_register";
	}
	
	/* 여기부터 내가 만든 것! 위의 것은 건들지 말기!!*/
	
	/* 카테고리별로 상품 조회하기 (+페이징) */
	@GetMapping("/category")
	public String cateList(@RequestParam(required = false, defaultValue = "1") Integer category_id,
	                       @RequestParam(required = false, defaultValue = "1") Integer page,
	                       HttpServletRequest req, Model model) {
		model.addAttribute("id", productService.paging(req, category_id));
		model.addAttribute("cateList", req.getAttribute("boards"));		
		model.addAttribute("page",  req.getParameter("page"));
		model.addAttribute("pagination_start", req.getAttribute("pagination_start"));
		model.addAttribute("pagination_end", req.getAttribute("pagination_end"));
		log.info("--------------------category_id" + category_id);
		
		return "product/product_menu";
	}



//	/* 상품 상세페이지(상품 정보) */
//	@GetMapping(value="/product/{id}")
//	public String productDetail(@PathVariable("id") String post_id, Model model) {
//		
//		model.addAttribute("post", productMapper.selectProduct(post_id));
//
//		return "product/product_detail";
//	}
	
	
	 /* 상품 상세페이지(상품정보 + 상품이미지정보 + 판매자정보) */
	@GetMapping(value="/product")
	public String productDetail(@RequestParam("id") Integer post_id, 
			HttpServletRequest request, HttpServletResponse response, Model model) {
		
		
		model.addAttribute("postImages", productMapper.getPostImages(post_id));
		
		Post p =  productService.getDetails(post_id);	
		int cntProd = productService.cntProdBySeller(p.getUser_number());	
		model.addAttribute("cntProd", cntProd);	
		model.addAttribute("post", p); 	
			
		// 판매자가 등록한 연관상품 목록 가져오기
		
		List<Post> lists = productService.getRelatedProd(p.getUser_number(), p.getPost_id());
        if(lists != null && lists.size() > 4) {
           model.addAttribute("lists", lists.subList(0, 4));         
        } else if(lists != null){
           model.addAttribute("lists", lists);
        }
		
		// 찜목록 개수 가져오기
		int cntWishlist = productService.cntWishlist(p.getPost_id());
		model.addAttribute("cntWishlist", cntWishlist);
		
		// 조회수 가져오기		
		request.setAttribute("board", 
				productService.clickTitle(p.getPost_id(), request, response));
		
		
				
		return "product/product_detail";
	}

	
	
	
	
}
