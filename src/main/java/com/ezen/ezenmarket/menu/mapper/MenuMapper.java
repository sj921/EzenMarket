package com.ezen.ezenmarket.menu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.ezenmarket.menu.dto.MenuDto;
import com.ezen.ezenmarket.menu.dto.PageDto;

@Mapper
public interface MenuMapper {
	
	/* 전체 상품 조회 */
	public List<MenuDto> getAllList();

	/* 카테고리 1개 지정해서 조회 */
	 public List<MenuDto> getCateList(Integer category_id);
	
	/* 게시물 총 개수 */
	public int countList();
	
	/* 페이징 처리 상품 조회 */
	public List<PageDto> pagingList(PageDto pageDto);


//	public PageDto getCateList(Integer category_id);


	
}
