package com.triple.finalp.tag.service;

import java.util.List;

import org.springframework.ui.Model;

public interface TagService {

	Object getList(String tag_cate);

	void updatet(List<String> utag, String tpid);

}
