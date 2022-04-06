package com.triple.finalp.review.service;

import org.springframework.ui.Model;

import com.triple.finalp.review.vo.ReviewVo;

public interface ReviewService {

   
   void review(ReviewVo reviewvo);
   void isSuitable(String mem_id, String product_id);
   void showReview(String mem_id, String product_id, Model model);
}