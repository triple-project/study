package com.triple.finalp.mem.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.triple.finalp.data.vo.PayVo;
import com.triple.finalp.mem.vo.HeartVo;
import com.triple.finalp.mem.vo.MemVo;
import com.triple.finalp.mem.vo.MyPlanVo;
import com.triple.finalp.mem.vo.MyproductVo;
import com.triple.finalp.mem.vo.PlanConVo;
import com.triple.finalp.pro.vo.ProductVo;

@Mapper
public interface MemDao {
	public void join(MemVo memVo);
	public String c_heart(String mem_id);
	public String c_plan(String mem_id);
	public void updateProfile(MemVo memVo);
	public MemVo mv(String mem_id);
	public void updatePw(@Param("mem_id")String mem_id, @Param("mem_pw")String mem_pw);
	public String pi(String mem_id);
	public void inplan(MyPlanVo myPlanVo);
	public ArrayList<MyPlanVo> fplan(String mem_id);
	public List<String> fplanc(String plan_id);
	public ProductVo pbyp(String product_id);
	public void travin(PlanConVo planConVo);
	public int hc(@Param("mem_id")String mem_id,@Param("product_id") String product_id);
	public void hearton(HeartVo heartVo);
	public void heartoff(HeartVo heartVo);
	public int heartcount(String product_id);
	public int hc2(@Param("mem_id")String mem_id, @Param("mgz_id")String mgz_id);
	public int heartcount2(String mgz_id);
	public void dplan(MyPlanVo myPlanVo);
	public String c_review(String mem_id);
	public String pamo(@Param("product_id")String product_id, @Param("pd_id")String pd_id);
	public PayVo payinfo(@Param("product_id")String product_id, @Param("pd_id")String pd_id, @Param("mem_id")String mem_id);
	public void inMy(MyproductVo myproductVo);
	public List<String> mySave(String mem_id);
	public ProductVo fmySave(String string);
	public ArrayList<MyproductVo> mypro(String mem_id);
}
