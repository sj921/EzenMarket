package com.ezen.ezenmarket.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.product.dto.PagingVO;
import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.mapper.ProductMapper;
import com.ezen.ezenmarket.product.service.ProductService;


@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductMapper productMapper;
	
	@Override
	public int countProduct(String title) {
		System.out.println("countProduct...............");
		
		return productMapper.countProduct(title);
	}
	
	@Override
	public List<Post> getProductWithPaging(String title, PagingVO vo) {
		System.out.println("getProductWithPaging............");
		
		return productMapper.getProductWithPaging(title, vo);
	}
	
}
