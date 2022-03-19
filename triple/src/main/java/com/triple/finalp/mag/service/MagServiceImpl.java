package com.triple.finalp.mag.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.triple.finalp.mag.dao.MagDao;
import com.triple.finalp.mag.vo.MagVo;
import com.triple.finalp.pro.vo.ProductVo;

@Service("magService")
public class MagServiceImpl implements MagSerivce{

	
	@Autowired
	MagDao magDao;

	@Override
	public void save(MagVo magVo) {
		// TODO Auto-generated method stub
		System.out.println(magVo);
		magDao.save(magVo);
	}

	@Override
	public void view(Model model) {
		// TODO Auto-generated method stub
		ArrayList<MagVo> maglist = magDao.view();
		System.out.println(maglist);
		model.addAttribute("maglist",maglist);
	}

	

}
