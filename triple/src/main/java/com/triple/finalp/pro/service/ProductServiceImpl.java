package com.triple.finalp.pro.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.pro.dao.ProductDao;
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

}
