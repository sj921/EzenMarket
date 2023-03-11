package com.ezen.ezenmarket.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.ezenmarket.admin.dto.ReportDTO;
import com.ezen.ezenmarket.admin.dto.UserListDTO;
import com.ezen.ezenmarket.admin.mapper.AdminMapper;
import com.ezen.ezenmarket.admin.service.AdminMainPageService;

@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	AdminMapper adminMapper;
	
	@Autowired
	private AdminMainPageService adminMainPageService;
	
	@GetMapping("/error")
	public String error() {
		return "admin/error";
	}

	@GetMapping(value={"/userlist"})
	public String userlist(Model model) {
		model.addAttribute("userlist", adminMapper.getUser());
		
		return "admin/userlist";
	}
	@GetMapping(value={"/userlist/ban"})
	public String banUser(UserListDTO userlist) {
		adminMapper.banUser(userlist);
		
		return "redirect:/admin/userlist";
	}
	
	@GetMapping(value={"/userlist/unban"})
	public String unbanUser(UserListDTO userlist) {
		adminMapper.unbanUser(userlist);
		
		return "redirect:/admin/userlist";
	}
	
	@GetMapping(value={"/reportlist/modify"})
	public String modifyReport(ReportDTO report) {
		adminMapper.updateReport(report);
		
		return "redirect:/admin/reportlist";
	}
	
	@GetMapping("/reportlist/deletePost")
	public String deletePost(Integer post_id) {
		adminMapper.deletePost(post_id);
		return "redirect:/admin/reportlist";
	
	}
	
	@GetMapping("/reportlist/deleteReview")
	public String deleteReview(Integer review_id) {
		adminMapper.deleteReview(review_id);
		return "redirect:/admin/reportlist";
	
	}
	
	@GetMapping(value={"/reportlist"})
	public String reportlist(Model model) {
		model.addAttribute("report", adminMapper.getReport());
		
		return "admin/reportlist";
	}

	
	@GetMapping(value={"/mainpage"})
	public String mainpage(Model model) {
		
		int reportCount = adminMainPageService.getReportCount();
		int postCount = adminMainPageService.getPostCount();
	    model.addAttribute("reportCount", reportCount);
	    model.addAttribute("postCount", postCount);
		
		return "admin/mainpage";
	}
	
	@GetMapping(value={"/login"})
	public String login() {
		
		
		return "admin/login";
	}
	
	
}
