package com.ezen.ezenmarket.user.mapper;

import java.util.List;

import com.ezen.ezenmarket.user.dto.User;

// 마이바티스(myBatis)에서 디비의 쿼리문을 적기 위해 Mapper를 만들어줘야 함
public interface UserMapper {
	
	public User getUserInfo(String user_id);
	
	public List<User> getUserList();
	
	

}
