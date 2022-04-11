package com.triple.finalp.mag.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.triple.finalp.mag.vo.MagVo;
import com.triple.finalp.pro.vo.ProductVo;

public interface MagSerivce {

	public void save(MagVo magVo);

	public void view(Model model);

	public void showmag(String mgz_id, Model model);

	//public void memshowmag(String mem_id, String mgz_id, Model model);
	
}
