package com.triple.finalp.mem.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.triple.finalp.mem.vo.MemVo;
import com.triple.finalp.mem.vo.MyPlanVo;
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
}
