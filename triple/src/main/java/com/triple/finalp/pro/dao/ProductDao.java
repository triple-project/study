package com.triple.finalp.pro.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.triple.finalp.pro.vo.ProductVo;

@Mapper
public interface ProductDao {
	public ArrayList<ProductVo> find(String id);
}
