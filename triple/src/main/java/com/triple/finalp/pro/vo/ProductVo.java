package com.triple.finalp.pro.vo;

import lombok.Data;

@Data
public class ProductVo {
	private String product_id;
	private String admin_id;
	private String product_img1; 
	private String product_img2;
	private String product_img3; 
	private String product_img4;
	private String product_img5; 
	private String pro_category; 
	private String product_address; 
	private String product_city; 
	private String product_name; 
	private String product_state;
	private String product_locationx;   // api사용 때문에 넣었나 ? 
	private String product_locationy;   // api사용 때문에 넣었나 ? 
}
