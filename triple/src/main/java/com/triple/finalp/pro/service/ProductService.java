package com.triple.finalp.pro.service;

import java.util.List;

import org.springframework.ui.Model;

import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.pro.vo.ProductVo;

public interface ProductService {
	public void find(String id,Model model);
	void register(ProductVo pvo, List<String> tag_list_h); // 상품등록-업주
	void registerDetail(ProductDetailVo pdvo); // 상품디테일 등록-업주
	void  getProId(String admin_id,Model model); // 내가 등록한 상품목록 -업주
	//ProductDetailVo getProDId(String product_id); // 내가(업주) 등록한 상품의 디테일들
	void getAllProList(Model model); // 상품전체목록 -고객
	public void goDetail(String product_id,Model model); // 상품클릭시 보여줌 - 고객

	public void findp(String product_id, Model model);

	public void showPro(String product_id, Model model);
	public void showProDetail(String product_id,String pd_name, Model model);
	public void getProId2(String aid, Model model, int page);
	public Boolean mypro(String product_id, String admin_id, Model model);
	public void updateProduct(ProductVo pvo);
	public void updateProductD(ProductDetailVo pdvo);
	public void getdetail(String pd_id, Model model);
	public void index(Model model);
	public void popList(Model model);
	
}
