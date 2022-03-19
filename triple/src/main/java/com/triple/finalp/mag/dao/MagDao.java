package com.triple.finalp.mag.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.triple.finalp.mag.vo.MagVo;
import com.triple.finalp.pro.vo.ProductVo;

@Mapper
public interface MagDao {
	public void save(MagVo magVo);

	public ArrayList<MagVo> view();
}
