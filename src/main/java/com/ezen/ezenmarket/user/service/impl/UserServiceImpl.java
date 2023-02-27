package com.ezen.ezenmarket.user.service.impl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.user.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Override
	public String getUserId(HttpServletRequest req) {
		
		Cookie[] cookies = req.getCookies();
		
		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user_id")) {
					return cookie.getValue();
				}
			}  
		}
		
		return null;
	}
}
