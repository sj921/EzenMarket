package com.ezen.ezenmarket.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdminController {

	@GetMapping(value={"/userlist"})
	public String index() {
		
		
	return "admin/userlist";
	}
	
	@GetMapping(value={"/postlist"})
	public String index2() {
		
		
		return "admin/postlist";
	}
	
	@GetMapping(value={"/chattinglist"})
	public String index3() {
		
		
		return "admin/chattinglist";
	}
	
	@GetMapping(value={"/reportlist"})
	public String index4() {
		
		
		return "admin/reportlist";
	}
	
	@GetMapping(value={"/reviewlist"})
	public String index5() {
		
		
		return "admin/reviewlist";
	}
	
	@GetMapping(value={"/mainpage"})
	public String index6() {
		
		
		return "admin/mainpage";
	}
	
	@GetMapping(value={"/login"})
	public String index7() {
		
		
		return "admin/login";
	}
	
}
