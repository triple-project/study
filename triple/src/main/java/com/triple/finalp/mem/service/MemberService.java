package com.triple.finalp.mem.service;

import java.util.Map;

import org.springframework.ui.Model;

import com.triple.finalp.mem.vo.MemVo;

public interface MemberService {
	public void join(MemVo memVo);
	
	public Map<String, Integer> info(Model model, String id);
}
