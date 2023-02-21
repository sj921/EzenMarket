package com.ezen.ezenmarket.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.ezen.ezenmarket.admin.dto.UserListDTO;

public interface AdminMapper{

	@Select("SELECT * FROM userlist ORDER BY user_number")
	List<UserListDTO> getUser();
}
