package com.ezen.ezenmarket.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.ezenmarket.admin.mapper.AdminMapper;

@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	AdminMapper adminMapper;
	
	
	@GetMapping("/error")
	public String error() {
		return "admin/error";
	}

	@GetMapping(value={"/userlist"})
	public String index(Model model) {
		model.addAttribute("userlist", adminMapper.getUser());
		
		return "admin/userlist";
	}
	
	@GetMapping(value={"/reportlist"})
	public String index4(Model model) {
		model.addAttribute("report", adminMapper.getReport());
		
		return "admin/reportlist";
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
