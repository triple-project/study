package com.triple.finalp.tag.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.tag.dao.TagDao;

import netscape.javascript.JSObject;

@Service
public class TagServiceImpl implements TagService{

	@Autowired
	TagDao tagDao;
	
	@Override
	public Object getList(String tag_cate) {
		// TODO Auto-generated method stub
		
		List<String> tcList = tagDao.getCate();
		HashMap<String,List<String>> tnList = new HashMap<String, List<String>>();
			tnList.put(tag_cate, tagDao.getList(tag_cate));
			System.out.println(tnList);
			return tnList;
	}

}
