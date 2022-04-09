package com.triple.finalp.qna.vo;

import lombok.Data;

@Data
public class QnaVo {
   private String q_id; 
   private String q_title;
   private String q_content;
   private String q_img;
   private String q_check;
   private String mem_id;
}