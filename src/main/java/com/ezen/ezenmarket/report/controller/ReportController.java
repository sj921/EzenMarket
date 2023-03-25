package com.ezen.ezenmarket.report.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.ezenmarket.chat.dto.ChattingRoom;
import com.ezen.ezenmarket.chat.mapper.ChatMapper;
import com.ezen.ezenmarket.chat.service.ChatService;
import com.ezen.ezenmarket.mypage.service.MyPageServiceImpl;
import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.mapper.ProductMapper;
import com.ezen.ezenmarket.product.service.ProductService;
import com.ezen.ezenmarket.report.dto.ReportDto;
import com.ezen.ezenmarket.report.mapper.ReportMapper;

@Controller
public class ReportController {
	
	@Autowired
	ReportMapper reportmapper;
	
	@Autowired
	ProductMapper productMapper;
	
	@Autowired
	MyPageServiceImpl service;

		
	@GetMapping(value="/report")
	public String paramTest(@RequestParam Integer report_type, @RequestParam Integer report_detail, 
	    @RequestParam Integer user_number, @RequestParam String report_content,
	    @RequestParam(required = false) String etc) {
	    
	    if (etc != null) {
	        report_content = report_content + "  " + etc;
	    } 
	    
	    reportmapper.insertReport(report_type, report_detail, user_number, report_content);
	    
	    System.out.println("사용자번호: " + user_number);
	    
	    return "redirect:/";
	}



}
