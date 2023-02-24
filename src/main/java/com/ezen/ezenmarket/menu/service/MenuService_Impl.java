package com.ezen.ezenmarket.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.menu.dto.MenuDto;
import com.ezen.ezenmarket.menu.dto.PageDto;
import com.ezen.ezenmarket.menu.mapper.MenuMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MenuService_Impl implements MenuService {
	
	@Autowired
	MenuMapper menuMapper;
	
	@Override
	public List<MenuDto> getAllList() {
		return menuMapper.getAllList();
	}

	@Override
	public List<MenuDto> getCateList(Integer category_id){
		return menuMapper.getCateList(category_id);
	}

	@Override
	public int countList() {
		// TODO Auto-generated method stub
		return menuMapper.countList();
	}

	@Override
	public List<PageDto> pagingList(PageDto pageDto) {
		// TODO Auto-generated method stub
		return menuMapper.pagingList(pageDto);
	}

//	@Override
//	public PageDto getCateList(Integer category_id) {
//		// TODO Auto-generated method stub
//		return menuMapper.getCateList(category_id);
//	}


	
	
	
	
	
}
