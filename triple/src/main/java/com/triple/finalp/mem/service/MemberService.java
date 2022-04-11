package com.triple.finalp.mem.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.ui.Model;

import com.triple.finalp.mem.vo.HeartVo;
import com.triple.finalp.mem.vo.MemVo;
import com.triple.finalp.mem.vo.MyPlanVo;
import com.triple.finalp.mem.vo.PlanConVo;
import com.triple.finalp.pro.vo.ProductVo;

public interface MemberService {
	public void join(MemVo memVo);
	
	public Map<String, String> info(String id);

	public void updateProfile(MemVo memVo);

	public Map<String, String> mv(String id);

	public void updatePw(MemVo memVo);

	public void inplan(MyPlanVo myPlanVo);

	public ArrayList<MyPlanVo> fplan(String mem_id);

	public ArrayList<ProductVo> fplanc(String plan_id);

	public void travin(PlanConVo planConVo);

	public void memshowPro(String mem_id, String product_id, Model model);

	public String hearton(HeartVo heartVo, String cheart);

	public void memshowmag(String mem_id, String mgz_id, Model model);

	public String dplan(MyPlanVo myPlanVo);
}
