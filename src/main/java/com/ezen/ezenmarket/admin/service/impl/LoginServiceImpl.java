package com.ezen.ezenmarket.admin.service.impl;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.admin.dto.AdminDTO;
import com.ezen.ezenmarket.admin.mapper.LoginMapper;
import com.ezen.ezenmarket.admin.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	
	
	@Autowired
	LoginMapper loginMapper;
	
	
	@Override
	public boolean login(String admin_id, String admin_pw, HttpServletRequest req, HttpServletResponse resp) {
		
		List<AdminDTO> adminList = loginMapper.getAdmin();
		
		HttpSession session = req.getSession();
				
		for (AdminDTO admin : adminList) {
			if (admin_id.equals(admin.getAdmin_id()) && admin_pw.equals(admin.getAdmin_pw())) {

				session.setAttribute("Admin_login", "yes");
				session.setAttribute("nickname", admin.getAdmin_id());
				

				Cookie cookie = new Cookie("admin_id)", admin_id);
				cookie.setPath(req.getContextPath());
				resp.addCookie(cookie);
				
				return true;
 
			} else {
				
				session.setAttribute("errorMsg", "�α��� ������ �ùٸ��� �ʽ��ϴ�.");
			}
		}
		return false;
		
	}
	
	
	@Override
	public void logout(HttpServletRequest req, HttpServletResponse resp) {
		
		
		req.getSession().invalidate();
		
		
	}
	

	
}