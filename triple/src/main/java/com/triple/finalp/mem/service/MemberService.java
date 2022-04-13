package com.triple.finalp.mem.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.ui.Model;

import com.triple.finalp.data.vo.PayVo;
import com.triple.finalp.mem.vo.HeartVo;
import com.triple.finalp.mem.vo.MemVo;
import com.triple.finalp.mem.vo.MyPlanVo;
import com.triple.finalp.mem.vo.MyproductVo;
import com.triple.finalp.mem.vo.PlanConVo;
import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.review.vo.ReviewVo;

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

	public ArrayList<ProductVo> freview(String mem_id);

	public ArrayList<ReviewVo> freview_info(String mem_id, String product_id);

	public PayVo payinfo(String product_id, String pd_id, String mem_id);

	public String inMy(MyproductVo myproductVo);

	public void mySave(Model model, String name);

	public void mySave2(Model model, String name, int page);

	public void mypro(Model model, String name);

	public void myMSave(Model model, String name);

	public void myMSave2(Model model, String name, int page);

	public String bimil(MemVo memVo);

	public String bimil2(MemVo memVo);

	public String idche(MemVo memVo);
}
