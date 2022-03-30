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
	public Map<String, Integer> info(Model model, String mem_id) {
		Map<String, Integer> info = new HashMap<String, Integer>();
		info.put("heart",memDao.c_heart(mem_id));
		info.put("plan",memDao.c_plan(mem_id));

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

}
