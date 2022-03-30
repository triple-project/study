package com.triple.finalp.search.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.triple.finalp.mag.vo.MagVo;
import com.triple.finalp.pro.vo.ProductVo;

@Mapper
public interface SearchDao {

	List<String> citylist();

	ArrayList<ProductVo> psearch();

	ArrayList<MagVo> msearch();

	ArrayList<ProductVo> pcatesearch(String city);

	List<String> catelist();

	ArrayList<ProductVo> pccsearch(@Param("city") String city,@Param("cate") String cate);

	ArrayList<ProductVo> pcsearch(String cate);

	ArrayList<MagVo> mcsearch(String cate);

	ArrayList<MagVo> mcatesearch(String city);

	ArrayList<MagVo> mccsearch(@Param("city") String city,@Param("cate") String cate);

	
	

	
}
