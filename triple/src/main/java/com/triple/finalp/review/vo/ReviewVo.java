package com.triple.finalp.review.vo;

import lombok.Data;

@Data
public class ReviewVo {
   private String mem_id;
   private String product_id;
   private String comment;
   private int star_ranking;
   private String r_img1;
   private String r_img2;
   private String r_img3;
}