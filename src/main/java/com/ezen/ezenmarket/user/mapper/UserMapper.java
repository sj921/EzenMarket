package com.ezen.ezenmarket.user.mapper;

import java.util.List;

import com.ezen.ezenmarket.user.dto.User;

public interface UserMapper {
	
	public User getUserInfo(String user_id);
	
	public List<User> getUserList();
	
}
