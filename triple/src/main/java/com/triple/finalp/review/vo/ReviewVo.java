package com.triple.finalp.review.vo;

import lombok.Data;

@Data
public class ReviewVo {
   private String mem_id;
   private String product_id;
   private String r_comment;
   private int r_star;
   private String r_img1;
   private String r_date;
   private String mem_img;
}