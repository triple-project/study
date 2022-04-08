package com.triple.finalp.mem.service;

import java.util.Map;

import org.springframework.ui.Model;

import com.triple.finalp.mem.vo.MemVo;
import com.triple.finalp.mem.vo.MyPlanVo;

public interface MemberService {
	public void join(MemVo memVo);
	
	public Map<String, String> info(String id);

	public void updateProfile(MemVo memVo);

	public Map<String, String> mv(String id);

	public void updatePw(MemVo memVo);

	public void inplan(MyPlanVo myPlanVo);
}
