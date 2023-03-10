package com.ezen.ezenmarket.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.ezenmarket.product.dto.PagingVO;
import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.mapper.ProductMapper;
import com.ezen.ezenmarket.product.service.ProductService;
import com.ezen.ezenmarket.user.dto.User;
import com.ezen.ezenmarket.user.mapper.UserMapper;
import com.ezen.ezenmarket.user.service.UserService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class ProductController {
	
	@Autowired
	ProductMapper productMapper;
	
	@Autowired
	UserService userService;
	
	@Autowired
	UserMapper usermapper;
	
	@Autowired
	ProductService productService;
	
	
	@GetMapping(value="/product")
	public String productDetail(String id, Model model) {
		
		model.addAttribute("post", productMapper.selectProduct(id));
		
		return "product/product_detail";
	}
	
	@GetMapping(value="/register")
	public String registerProduct() {
		
		return "product/product_register";
	}
	
	@GetMapping(value="/productchat")
	public String chattingProduct() {
		
		return "chat/chat";
	}
	
	@PostMapping(value="/insert")
	public String insertProduct(HttpServletRequest req, String post_address, String title, String post_content, Integer category_id, Integer price) {
		
		
		String user_id = userService.getUserId(req);
		User user = usermapper.getUserInfo(user_id);
		int user_number = user.getUser_Number();
		
		Post post = new Post (user_number, post_address, title, post_content, category_id, price);
		
		productMapper.insertProduct(post);
		
		// main을 /로 해놔서 main으로 가게 한다는 의미
		return "redirect:/";
	}
	
	// 검색기능 구현
	@GetMapping(value="/search")
	public String searchProduct(HttpServletRequest req, HttpServletResponse resp) {
		
		 String title = req.getParameter("search");
		 req.setAttribute("products", productMapper.searchProduct(title));
		
		 return "product/product_search"; 
	}
	
	// 검색기능 + 페이지네이션 구현
	@GetMapping("/searchPagenation")
	public String searchProductList(@Param("vo")PagingVO vo, @Param("title") String title, Post post, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, String type) {

		int total = productMapper.countProduct(title);
				
		// 이게 이해가 잘 안됨
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "15";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "15";
		}
		
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo); // 페이지네이션
		model.addAttribute("keyword", title); // 검색한 키워드 
		
		// 검색어가 없을 때 없다고 화면에 나오게 하려고 이렇게 만듬
				List<Post> list = productMapper.getProductWithPaging(title, vo);
				
				if(!list.isEmpty()) {
					model.addAttribute("title", list);
					System.out.println("검색어가 있는 경우 출력");
				} else {
					model.addAttribute("searchKeyword", "empty");
					System.out.println("검색어가 없는 경우 출력 제발!!!");
				}
				
				
		if (type == null) {
			model.addAttribute("title", list);
						
		} else if (type.equals("low")) {
			
			model.addAttribute("title", productMapper.getProductLowPrice(title, vo)); 
	
		} else if (type.equals("high")) {
			model.addAttribute("title", productMapper.getProductHighPrice(title, vo)); 
			
		} else if (type.equals("latest")){
			model.addAttribute("title", list);
		}
		
//		model.addAttribute("title", productMapper.getProductWithPaging(title, vo)); 
				
		return "product/product_search";
	}
	
	
	

}
