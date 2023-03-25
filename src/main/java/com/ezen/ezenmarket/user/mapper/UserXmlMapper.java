package com.ezen.ezenmarket.user.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.ezen.ezenmarket.user.dto.User;

public interface UserXmlMapper {
	
	public Integer userSignUp(User user);
	
	public Integer idCheck(String id);
	
	public Integer nickCheck(String nickName);

	

}