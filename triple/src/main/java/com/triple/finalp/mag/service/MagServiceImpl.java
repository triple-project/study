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
		magDao.save(magVo);
		//0415 작성이슈확인용
		//System.out.println(magVo);
	}

	@Override
	public void view(Model model) {
		// TODO Auto-generated method stub
		ArrayList<MagVo> maglist = magDao.view();
		model.addAttribute("maglist",maglist);
	}

	@Override
	public void showmag(String mgz_id, Model model) {
		// TODO Auto-generated method stub
		MagVo mVo = magDao.showmag(mgz_id);
		model.addAttribute("mvo",mVo);
	}



	

}
