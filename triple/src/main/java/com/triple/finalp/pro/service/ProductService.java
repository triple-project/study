package com.triple.finalp.pro.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.triple.finalp.pro.vo.ProductVo;

public interface ProductService {
	public void find(String id,Model model);
}
