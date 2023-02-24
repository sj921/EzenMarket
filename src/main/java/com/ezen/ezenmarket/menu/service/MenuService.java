package com.ezen.ezenmarket.menu.service;

import java.util.List;

import com.ezen.ezenmarket.menu.dto.MenuDto;
import com.ezen.ezenmarket.menu.dto.PageDto;

public interface MenuService {


	public List<MenuDto> getAllList();
	
	public List<MenuDto> getCateList(Integer category_id);

	public List<PageDto> pagingList(PageDto pageDto);

	public int countList();

//	public PageDto getCateList(Integer category_id);
	

	
}
