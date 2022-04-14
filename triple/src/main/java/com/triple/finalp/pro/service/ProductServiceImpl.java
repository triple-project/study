package com.triple.finalp.pro.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.data.vo.PageVo;
import com.triple.finalp.mem.dao.MemDao;
import com.triple.finalp.pro.dao.ProductDao;
import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.pro.vo.UltiProVo;
import com.triple.finalp.review.dao.ReviewDao;
import com.triple.finalp.review.vo.ReviewVo;
import com.triple.finalp.search.dao.SearchDao;
import com.triple.finalp.tag.dao.TagDao;
import com.triple.finalp.tag.vo.TagTagVo;
import com.triple.finalp.tag.vo.TagVo;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	TagDao tagDao;
	
	@Autowired
	MemDao memDao;
	
	@Autowired
	ReviewDao reviewDao;
	
	@Autowired
	SearchDao searchDao;


	@Override
	public void find(String id,Model model) {
		// TODO Auto-generated method stub
		ArrayList<ProductVo> findlist = productDao.find(id);
		//System.out.println(findlist);
		model.addAttribute("mainlist",findlist);
	}
	
	@Override // <!-- 상품등록 (업주)-->
	public void  register(ProductVo pvo,List<String> tag_list_h) {
		String tag_id = pvo.getProduct_id();
		//String tag_id = "1";
		for (int i = 0; i < tag_list_h.size(); i++) {
			String tag_tag = tag_list_h.get(i);			
			tagDao.insertTag(tag_id,tag_tag);
		}
		productDao.register(pvo);
	}
	@Override // <!-- 상품디테일등록 (업주)-->	
	public void  registerDetail(ProductDetailVo pdvo) { 
		productDao.registerDetail(pdvo);
	}
	@Override // <!-- 상품 목록들 (업주) -->
	public void getProId(String admin_id,Model model) {
		ArrayList<ProductVo> myList =  productDao.getProId(admin_id);
		PageVo pageVo = new PageVo();
		int page = 1;
		int pageC = productDao.getProIdC(admin_id);
		if (pageC%10==0) {
			pageVo.setPageC(pageC/10);
		}else {
			pageVo.setPageC((pageC/10)+1);
		}		
		pageVo.setPageS((page*10)-10);
		pageVo.setPageE((page*10)-1);
		pageVo.setPageO(page);
		model.addAttribute("myList", myList);
		model.addAttribute("page", pageVo);
	}
	
	@Override
	public void getProId2(String admin_id, Model model, int page) {
		// TODO Auto-generated method stub
		ArrayList<ProductVo> myList =  productDao.getProId(admin_id);
		PageVo pageVo = new PageVo();
		int pageC = productDao.getProIdC(admin_id);
		if (pageC%10==0) {
			pageVo.setPageC(pageC/10);
		}else {
			pageVo.setPageC((pageC/10)+1);
		}		
		pageVo.setPageS((page*10)-10);
		pageVo.setPageE((page*10)-1);
		pageVo.setPageO(page);	
		model.addAttribute("myList", myList);
		model.addAttribute("page", pageVo);
	}
	
	@Override //<!-- 전체상품리스트 - 고객 -->
	public void getAllProList(Model model) {
		// TODO Auto-generated method stub
		ArrayList<ProductVo> pList =  productDao.getAllProList();
		model.addAttribute("pList", pList);
	}
	@Override // 상품클릭시
	public void goDetail(String product_id, Model model) {
		System.out.println("product_id"+product_id);
		ArrayList<ProductDetailVo> glist = productDao.goDetail(product_id);
		model.addAttribute("glist",glist);
		
	}

	@Override
	public void findp(String product_id, Model model) {
		// TODO Auto-generated method stub
		//System.out.println("product_id"+product_id);
		ProductVo pvo = productDao.findp(product_id);
		//System.out.println("pvo"+pvo);
		model.addAttribute("fp",pvo);
	}

	@Override
	public void showPro(String product_id, Model model) {
		ProductVo pvo = productDao.findp(product_id);
		ArrayList<ProductDetailVo> dList = productDao.goDetail(product_id);
		ArrayList<TagTagVo> tList = productDao.gettag(product_id);
		ArrayList<TagVo> tcl = tagDao.getList2(pvo.getProduct_category());
		int hc = memDao.heartcount(product_id);
		
		ArrayList<ReviewVo> reviewList = reviewDao.showReview(product_id);
	    model.addAttribute("reviewList",reviewList);
		
		model.addAttribute("heartcount",hc);
		model.addAttribute("pvo",pvo);
		model.addAttribute("dList",dList);
		model.addAttribute("tList",tList);
		model.addAttribute("tcl",tcl);
		model.addAttribute("stc",pvo.getProduct_category());
	}	
	
	@Override
	public void showProDetail(String product_id,String pd_name,Model model) {
		//System.out.println(product_id+"=====:::"+pd_name+"=====");
		ProductDetailVo pdvo = productDao.findpd(product_id);
		ArrayList<ProductDetailVo> pdList = productDao.Ddetail(pd_name);
		model.addAttribute("pdvo",pdvo);
		model.addAttribute("pdList",pdList);
	}
	
	//내상품이 맞는지 확인
	@Override
	public Boolean mypro(String product_id,String product_admin_id,Model model) {
		// TODO Auto-generated method stub
		int a = productDao.mypro(product_id,product_admin_id);
		if(a==1) {
			model.addAttribute("product_id",product_id);
			return true;
		}else {
			return false;
		}
	}
	
	@Override
	   public void updateProduct( ProductVo pvo) {
	      // TODO Auto-generated method stub
	      productDao.updateProduct(pvo);
	   }

	@Override
	public void updateProductD(ProductDetailVo pdvo) {
		// TODO Auto-generated method stub
		productDao.updateProductD(pdvo);
	}

	@Override
	public void getdetail(String pd_id,Model model) {
		// TODO Auto-generated method stub
		ProductDetailVo pdvo = productDao.getdetail(pd_id);
		model.addAttribute("pdvo",pdvo);
	}

	@Override
	public void index(Model model) {
		// TODO Auto-generated method stub
		ArrayList<UltiProVo> ultListH = productDao.indexH();
		
		List<String> clist = searchDao.catelist();
		ArrayList<UltiProVo> ultListL = new ArrayList<UltiProVo>();
		ArrayList<UltiProVo> ultListL2 = new ArrayList<UltiProVo>();
		for (int i = 0; i < clist.size(); i++) {
			ultListL2 = productDao.indexL(clist.get(i));
			ultListL.addAll(ultListL2);
		}
		//ultListL = productDao.indexL();
		//System.out.println(ultListL);
		model.addAttribute("ultListH",ultListH);
		model.addAttribute("ultListL",ultListL);
		
	}

	@Override
	public void popList(Model model) {
		// TODO Auto-generated method stub
		ArrayList<UltiProVo> ultListH = productDao.popList();
		model.addAttribute("ultListH",ultListH);
	}


}
