package com.triple.finalp.review.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.review.vo.ReviewVo;

@Mapper
public interface ReviewDao {
	void writeReview(ReviewVo reviewvo);

	void isSuitable(@Param("mem_id") String mem_id, @Param("product_id") String product_id);

	ArrayList<ReviewVo> showReview(String product_id);

	ArrayList<ProductVo> freview(String mem_id);

	ArrayList<ReviewVo> freview_info(@Param("mem_id")String mem_id, @Param("product_id")String product_id);
}