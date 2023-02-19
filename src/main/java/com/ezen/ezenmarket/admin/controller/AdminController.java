package com.ezen.ezenmarket.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdminController {

	@GetMapping(value={"/main1"})
	public String index() {
		
		
	return "admin/userlist";
	}
	@GetMapping(value={"/main2"})
	public String index2() {
		
		
		return "admin/postlist";
	}
	@GetMapping(value={"/main3"})
	public String index3() {
		
		
		return "admin/chattinglist";
	}
	@GetMapping(value={"/main4"})
	public String index4() {
		
		
		return "admin/ReportList";
	}
	@GetMapping(value={"/main5"})
	public String index5() {
		
		
		return "admin/ReportList";
	}
}
