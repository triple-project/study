package com.triple.finalp.mem.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.mem.dao.MemDao;
import com.triple.finalp.mem.vo.MemVo;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemDao memDao;
	
	
	/*
	 * @Autowired BCryptPasswordEncoder bCryptPasswordEncoder;
	 */
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	
	


	@Override
	public Map<String, String> info(String mem_id) {
		Map<String, String> info = new HashMap<String, String>();
		info.put("heart",memDao.c_heart(mem_id));
		info.put("plan",memDao.c_plan(mem_id));
		info.put("pro_mem_img",memDao.pi(mem_id));
		return info;
	}
	
	@Override
	   public void join(MemVo memVo) {
	      // TODO Auto-generated method stub
	      String pw = memVo.getMem_pw();
	      pw = "{bcrypt}"+ passwordEncoder.encode(pw);
	      memVo.setMem_pw(pw);
	      memDao.join(memVo);
	   }

	@Override
	public void updateProfile(MemVo memVo) {
		// TODO Auto-generated method stub
		
	      memDao.updateProfile(memVo);
	}

	@Override
	public Map<String, String> mv(String mem_id) {
		// TODO Auto-generated method stub
		Map<String, String> mv = new HashMap<String, String>();
		MemVo mvo = memDao.mv(mem_id);
		
		String e = mvo.getE_mail();
		String[] e2 = e.split("@");		
		/* mv.put("plan", ); */
		mv.put("e_mail",e2[0]);
		mv.put("e_mail2",("@" + e2[1]));
		mv.put("tel",mvo.getTel());
		mv.put("mem_img",mvo.getMem_img());
		mv.put("mem_id",mvo.getMem_id());
		return mv;
	}

	@Override
	public void updatePw(MemVo memVo) {
		String mem_pw = memVo.getMem_pw();
		mem_pw = "{bcrypt}"+ passwordEncoder.encode(mem_pw);
	      memVo.setMem_pw(mem_pw);
	    String mem_id = memVo.getMem_id();
	      memDao.updatePw(mem_id,mem_pw);
		
	}

}
