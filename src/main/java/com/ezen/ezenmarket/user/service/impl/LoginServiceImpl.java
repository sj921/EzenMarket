package com.ezen.ezenmarket.user.service.impl;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.user.controller.LogOutController;
import com.ezen.ezenmarket.user.dto.User;
import com.ezen.ezenmarket.user.mapper.UserMapper;
import com.ezen.ezenmarket.user.service.LoginService;


@Service
public class LoginServiceImpl implements LoginService{
	
	
	@Autowired
	UserMapper userMapper;
	
	
	@Override
	public boolean login(String user_id, String user_pw, HttpServletRequest req, HttpServletResponse resp) {
		
		List<User> userList = userMapper.getUserList();
		
		HttpSession session = req.getSession();
				
		for (User user : userList) {
			if (user_id.equals(user.getUser_ID()) && user_pw.equals(user.getUser_PW())) {
		    	// getSession()은 세션이 있으면 있는 세션을 반환하고, 없으면 신규 세션을 생성한다
				 // 세션의 로그인 회원 정보를 보관한다
				session.setAttribute("login", "yes");
				session.setAttribute("nickname", user.getNickname());
				
				// 쿠키에 user_id 넣음
				Cookie cookie = new Cookie("user_id", user_id);
				cookie.setPath(req.getContextPath());
				resp.addCookie(cookie);
				
				return true;
 
			} else {
				
				session.setAttribute("errorMsg", "로그인 정보가 올바르지 않습니다.");
			}
		}
		return false;
		
	}
	
	
	@Override
	public void logout(HttpServletRequest req, HttpServletResponse resp) {
		
		
		req.getSession().invalidate();
		
		
	}
	

	
}
