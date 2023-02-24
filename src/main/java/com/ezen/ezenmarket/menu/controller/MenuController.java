package com.ezen.ezenmarket.menu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.ezenmarket.menu.dto.PageDto;
import com.ezen.ezenmarket.menu.service.MenuService;

import lombok.extern.log4j.Log4j2;

//@Log4j2
//@Controller
public class MenuController {
	
	@Autowired
	MenuService menuService;
		
//	@GetMapping(value={"/menu"})
//	public String salesList(Model model) {
//		model.addAttribute("postList", menuService.getAllList());
//		return "menu/menu";
//	}

	@GetMapping(value={"/category"})
	public String detail (
			@RequestParam("category_id") Integer category_id, Model model) {			
		model.addAttribute("cateList", menuService.getCateList(category_id));
		return "menu/menu";
	}
	
		
	@GetMapping(value={"/page"})
	public String pagingList(PageDto pageDto
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage
			, Model model) {
		
		int total = menuService.countList();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		
		pageDto = new PageDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pageDto);
		model.addAttribute("pagingList", menuService.pagingList(pageDto));
		
		System.out.println(menuService.pagingList(pageDto));

		
		return "menu/menu";
	}
	

	
	
	
	
}
