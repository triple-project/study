package com.triple.finalp.review.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.review.dao.ReviewDao;
import com.triple.finalp.review.vo.ReviewVo;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

   
   @Autowired
   ReviewDao reviewdao;
   
   @Override 
   public void review(ReviewVo reviewvo) {
      reviewdao.writeReview(reviewvo);
   }

   //리뷰 적합성 검사 ,, 결제 api 연결이후 활성화 시킬것
   @Override
   public void isSuitable(String mem_id, String product_id) {
      reviewdao.isSuitable(mem_id, product_id);
   }


   @Override
   public void showReview(String mem_id, String product_id, Model model) {
      ArrayList<ReviewVo> reviewList = reviewdao.showReview(product_id);
      model.addAttribute("reviewList",reviewList);
   }

}