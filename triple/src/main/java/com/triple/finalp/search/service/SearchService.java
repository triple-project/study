package com.triple.finalp.search.service;

import org.springframework.ui.Model;

public interface SearchService {

	public void search(String main, String city, String cate, Model model);
	
}
