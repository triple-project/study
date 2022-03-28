package com.triple.finalp.pro.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.pro.dao.ProductDao;
import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.pro.vo.ProductVo;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	ProductDao productDao;


	@Override
	public void find(String id,Model model) {
		// TODO Auto-generated method stub
		ArrayList<ProductVo> findlist = productDao.find(id);
		System.out.println(findlist);
		model.addAttribute("mainlist",findlist);
	}
	
	@Override // <!-- 상품등록 (업주)-->
	public void  register(ProductVo pvo) { 
		productDao.register(pvo);
	}
	@Override // <!-- 상품디테일등록 (업주)-->	
	public void  registerDetail(ProductDetailVo pdvo) { 
		productDao.registerDetail(pdvo);
	}
	@Override // <!-- 상품 목록들 (업주) -->
	public void getProId(String admin_id,Model model) {
		System.out.println("admin_id"+admin_id);
		ArrayList<ProductVo> myList =  productDao.getProId(admin_id);
		model.addAttribute("myList", myList);
	}
	/*
	@Override //<!-- 상품디테일 -->
	public ProductDetailVo getProDId(String product_id) {
		// TODO Auto-generated method stub
		return productDao.getProDId(product_id);
	} */
	@Override //<!-- 전체상품리스트 - 고객 -->
	public void getAllProList(Model model) {
		// TODO Auto-generated method stub
		ArrayList<ProductVo> pList =  productDao.getAllProList();
		model.addAttribute("pList", pList);
	}
	@Override // 상품클릭시
	public void goDetail(String product_id, Model model) {
		System.out.println("product_id"+product_id);
		ArrayList<ProductDetailVo> glist = productDao.goDetail(product_id);
		model.addAttribute("glist",glist);
		
	}

	@Override
	public void findp(String product_id, Model model) {
		// TODO Auto-generated method stub
		System.out.println("product_id"+product_id);
		ProductVo pvo = productDao.findp(product_id);
		System.out.println("pvo"+pvo);
		model.addAttribute("fp",pvo);
	}

	@Override
	public void showPro(String product_id, Model model) {
		ProductVo pvo = productDao.findp(product_id);
		ArrayList<ProductDetailVo> dList = productDao.goDetail(product_id);
		model.addAttribute("pvo",pvo);
		model.addAttribute("dList",dList);
	}	
	
	@Override
	public void showProDetail(String product_id,String pd_name,Model model) {
		System.out.println(product_id+"=====:::"+pd_name+"=====");
		ProductDetailVo pdvo = productDao.findpd(product_id);
		ArrayList<ProductDetailVo> pdList = productDao.Ddetail(pd_name);
		model.addAttribute("pdvo",pdvo);
		model.addAttribute("pdList",pdList);
	}


}
