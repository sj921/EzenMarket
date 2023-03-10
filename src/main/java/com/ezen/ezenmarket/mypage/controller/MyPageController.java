package com.ezen.ezenmarket.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.ezenmarket.mypage.mapper.mypageMapper;
import com.ezen.ezenmarket.product.dto.PagingVO;
import com.ezen.ezenmarket.product.dto.Post;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping(value="/mypage")
public class MyPageController {
	
	@Autowired
	mypageMapper mypageMapper;

	

	@GetMapping(value={"/", "/sales_list"})
	public String salesList() {
		
		return "mypage/sales_list";
	}
	
	@GetMapping(value="/buy_list")
	public String buyList() {
		
		return "mypage/buy_list";
	}
	
	@GetMapping(value="/zzim")
	public String zzim() {
		
		return "mypage/zzim";
	}
	
	@GetMapping(value="/review")
	public String review() {
		
		return "mypage/starReview";
	}
	
	@GetMapping(value="/storeManagingWithPaging")
	public String sellingProducts(@Param("vo")PagingVO vo, @Param("myPageTitle") String myPageTitle, 
			Post post, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage, HttpServletRequest req) {
		
		
		
		HttpSession session =  req.getSession();
		Integer user_number = Integer.parseInt(session.getAttribute("user_number").toString());
		
		int total = mypageMapper.countMyPageProduct(myPageTitle, user_number);
		
		
		
		// 이게 이해가 잘 안됨
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}

		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo); // 페이지네이션
		model.addAttribute("keyword", myPageTitle); // 검색한 키워드
		model.addAttribute("myPageTitle", mypageMapper.mypageManaging(user_number, myPageTitle, vo));
		
		
		
		
		return "mypage/storeManaging";
		
		
		
	}
	

	
}
