package com.ezen.ezenmarket.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ezen.ezenmarket.admin.service.LoginService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@GetMapping(value="/signin")
	public String moveTosignInPage() {
		
		
		return "user/signin";
	}
	
	@PostMapping(value="/signin")
	public String signIn(String admin_id, String admin_pw, HttpServletRequest req, HttpServletResponse resp) {
		
		
		System.out.println("¾ÆÀÌµð" + admin_id);
		System.out.println("ÆÐ½º¿öµå" + admin_pw);
		if(loginService.login(admin_id, admin_pw, req, resp)) {
			
			return "redirect:/";
		}
		
		return "redirect:/signin";
	}

	
}
