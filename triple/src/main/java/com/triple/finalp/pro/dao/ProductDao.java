package com.triple.finalp.pro.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.pro.vo.ProductVo;

@Mapper
public interface ProductDao {
	public ArrayList<ProductVo> find(String id);
	void register(ProductVo pvo); //상품등록 -업주
	void registerDetail(ProductDetailVo pdvo); //상품디테일등록 - 업주
	ArrayList<ProductVo> getProId(String admin_id); // admin에 맞는 상품 목록 - 업주
	//ProductDetailVo getProDId(String product_id); //  상품 디테일목록
	ArrayList<ProductVo> getAllProList(); // 전체상품목록 -고객
	public ArrayList<ProductDetailVo> goDetail(String product_id); // 상품크릭시 보여주는정보 - 고객

	public ProductVo findp(String product_id);
	
	public ProductDetailVo findpd(String product_id); 

	public ArrayList<ProductDetailVo> Ddetail(String pd_name);
}
