package com.triple.finalp.search.service;

import org.springframework.ui.Model;

public interface SearchService {

	public String search(String main, String city, String cate, Model model);

	public String search2(String main, String city, String cate, Model model, String ds);
	
}
