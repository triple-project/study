package com.triple.finalp.mem.dao;

import org.apache.ibatis.annotations.Mapper;

import com.triple.finalp.mem.vo.MemVo;

@Mapper
public interface MemDao {
	public void join(MemVo memVo);
	public Integer c_heart(String mem_id);
	public Integer c_plan(String mem_id);
}
