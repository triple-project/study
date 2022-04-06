package com.triple.finalp.pro.vo;

import lombok.Data;

@Data
public class ProductDetailVo { // 상품상세객체
	private String product_id; // 상품 아이디 (공통)
	private String pd_contents; // 상품내용
	private String pd_img1; // 상품상세이미지 1~3
	private String pd_img2;
	private String pd_img3;
	private String pd_name; // 상품이름
	private String pd_price; // 상품가격
}
