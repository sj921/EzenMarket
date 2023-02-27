package com.ezen.ezenmarket.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.mapper.ProductMapper;
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

	
	
	@GetMapping(value="/product")
	public String productDetail(String id, Model model) {
		
		model.addAttribute("post", productMapper.selectProduct(id));
		
		return "product/product_detail";
	}
	
	@GetMapping(value="/search")
	public String searchProduct() {
		
		return "product/product_search";
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
	
	
}
