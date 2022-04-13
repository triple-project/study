package com.triple.finalp.search.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.mag.dao.MagDao;
import com.triple.finalp.mag.vo.MagVo;
import com.triple.finalp.mem.dao.MemDao;
import com.triple.finalp.pro.dao.ProductDao;
import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.pro.vo.UltiProVo;
import com.triple.finalp.search.dao.SearchDao;
import com.triple.finalp.tag.vo.TagTagVo;

@Service
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	SearchDao searchdao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	MemDao memDao;

	@Override	//상단 검색 창 시작
	public String search(String main, String city, String cate, Model model) {
		// TODO Auto-generated method stub
		
		if (main.equals("여행지 검색")) {
			HashMap<String,ArrayList<ProductVo>> proS = new HashMap<String,ArrayList<ProductVo>>();
			//System.out.println("프로덕트다");
			if (city.equals("전체")) {
				//System.out.println("전체도시다");
				if (cate.equals("전체")) {
					//System.out.println("전체상품이다");
					//프전전
					List<String> clist = searchdao.citylist();
					ArrayList<ProductVo> plist = searchdao.psearch();
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
						
						ArrayList<ProductVo> mList = new ArrayList<ProductVo>();
						int b = plist.size(); 
						for (int j = 0; j < plist.size(); j++) {
							if(plist.get(j).getProduct_city().contains(a)) {
								mList.add(plist.get(j));
								plist.remove(j);
								j--;
							}						
						}
						/* //System.out.println(mList); */
						proS.put(a,mList);
					}
					model.addAttribute("proS",proS);
					return "category";
					/* //System.out.println("proS = "+model.getAttribute("proS")); */
				} else {
					//System.out.println(cate + "다");
					//프전선
					List<String> clist = searchdao.citylist();
					ArrayList<ProductVo> plist = searchdao.pcsearch(cate);
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
				
						ArrayList<ProductVo> mList = new ArrayList<ProductVo>();
						for (int j = 0; j < plist.size(); j++) {
							if(plist.get(j).getProduct_city().contains(a)) {
								mList.add(plist.get(j));
								plist.remove(j);
								j--;
							}						
						}
						proS.put(a,mList);
					}
					model.addAttribute("proS",proS);
					return "category";
					/* //System.out.println("proS = "+model.getAttribute("proS")); */		
				}
			} else {
				//System.out.println(city + "다");
				if (cate.equals("전체")) {
					//System.out.println("전체상품이다");
					//프선전
					List<String> clist = searchdao.catelist();
					ArrayList<ProductVo> plist = searchdao.pcatesearch(city);
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
						
						ArrayList<ProductVo> mList = new ArrayList<ProductVo>();
						for (int j = 0; j < plist.size(); j++) {
							if(plist.get(j).getProduct_category().contains(a)) {
								mList.add(plist.get(j));
								plist.remove(j);
								j--;
							}						
						}
						proS.put(a,mList);
					}
					model.addAttribute("proS",proS);
					return "category";
					/* //System.out.println("proS = "+model.getAttribute("proS")); */	
				} else {
					//System.out.println(cate + "다");
					//프선선
					//HashMap<ProductVo, TagTagVo> ulti = new HashMap<ProductVo, TagTagVo>();
					ArrayList<ProductVo> pList = searchdao.pccsearch(city,cate);
					ArrayList<TagTagVo> tList = new ArrayList<TagTagVo>();
					ArrayList<UltiProVo> uList = new ArrayList<UltiProVo>();
					
					for (int i = 0; i < pList.size(); i++) {
						UltiProVo uProVo = new UltiProVo();
						uProVo.setProduct_id(pList.get(i).getProduct_id());
						uProVo.setProduct_img1(pList.get(i).getProduct_img1());
						uProVo.setProduct_img2(pList.get(i).getProduct_img2());
						uProVo.setProduct_img3(pList.get(i).getProduct_img3());
						uProVo.setProduct_img4(pList.get(i).getProduct_img4());
						uProVo.setProduct_img5(pList.get(i).getProduct_img5());
						uProVo.setProduct_address(pList.get(i).getProduct_address());
						uProVo.setProduct_name(pList.get(i).getProduct_name());
						uProVo.setProduct_shortword(pList.get(i).getProduct_shortword());
						uProVo.setProduct_subcontent(pList.get(i).getProduct_subcontent());
						uProVo.setPd_price(productDao.getpdp(pList.get(i).getProduct_id()));
						tList = productDao.gettag(pList.get(i).getProduct_id());
						//uProVo = new UltiProVo((pList.get(i)),tList.get(i));
						for (int j = 0; j < tList.size(); j++) {
							if (tList.get(j)!=null) {
								if (j==0) {
									uProVo.setTag_tag1(tList.get(j).getTag_tag());
								}else if(j==1){
									uProVo.setTag_tag2(tList.get(j).getTag_tag());
								}else if(j==2){
									uProVo.setTag_tag3(tList.get(j).getTag_tag());
								}else if(j==3){
									uProVo.setTag_tag4(tList.get(j).getTag_tag());
								}else if(j==4){
									uProVo.setTag_tag5(tList.get(j).getTag_tag());
								}
							}
							
						}
						uProVo.setHeart_count(memDao.heartcount(pList.get(i).getProduct_id()));
						uList.add(uProVo);
					}
					//System.out.println(uList);
					model.addAttribute("proS",uList);
					return "categoryList";
					
				}
			}
		} else {
			//System.out.println("매거진이다");
			HashMap<String,ArrayList<MagVo>> magS = new HashMap<String,ArrayList<MagVo>>();
			if (city.equals("전체")) {
				//System.out.println("전체도시다");
				if (cate.equals("전체")) {
					//System.out.println("전체상품이다");
					//메전전
					List<String> clist = searchdao.citylist();
					ArrayList<MagVo> plist = searchdao.msearch();
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
						
						ArrayList<MagVo> mList = new ArrayList<MagVo>();
						for (int j = 0; j < plist.size(); j++) {
							if(plist.get(j).getMgz_city().contains(a)) {
								mList.add(plist.get(j));
								plist.remove(j);
								j--;
							}						
						}
						magS.put(a,mList);
					}
					model.addAttribute("magS",magS);
					return "category2";
				} else {
					//System.out.println(cate + "다");
					//매전선
					List<String> clist = searchdao.citylist();
					ArrayList<MagVo> mlist = searchdao.mcsearch(cate);
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
						
						ArrayList<MagVo> mList = new ArrayList<MagVo>();
						for (int j = 0; j < mlist.size(); j++) {
							if(mlist.get(j).getMgz_city().contains(a)) {
								mList.add(mlist.get(j));
								mlist.remove(j);
								j--;
							}						
						}
						magS.put(a,mList);
					}
					model.addAttribute("magS",magS);
					return "category2";
				}
			} else {
				//System.out.println(city + "다");
				if (cate.equals("전체")) {
					//System.out.println("전체상품이다");
					//매선전
					List<String> clist = searchdao.catelist();
					ArrayList<MagVo> plist = searchdao.mcatesearch(city);
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
						
						ArrayList<MagVo> mList = new ArrayList<MagVo>();
						for (int j = 0; j < plist.size(); j++) {
							if(plist.get(j).getMgz_category().contains(a)) {
								mList.add(plist.get(j));
								plist.remove(j);
								j--;
							}						
						}
						magS.put(a,mList);
					}
					model.addAttribute("magS",magS);
					return "category2";
				} else {
					//System.out.println(cate + "다");
					//매선선
					ArrayList<MagVo> mList = searchdao.mccsearch(city,cate);
					model.addAttribute("magS",mList);
					return "categoryList2";
				}
			}
		}
	}
	//상단 검색 창 끝

	@Override
	public String search2(String main, String city, String cate, Model model, String ds) {
		// TODO Auto-generated method stub
		if (main.equals("여행지 검색")) {
			HashMap<String,ArrayList<ProductVo>> proS = new HashMap<String,ArrayList<ProductVo>>();
			//System.out.println("프로덕트다");
			if (city.equals("전체")) {
				//System.out.println("전체도시다");
				if (cate.equals("전체")) {
					//System.out.println("전체상품이다");
					//프전전
					List<String> clist = searchdao.citylist();
					ArrayList<ProductVo> plist = searchdao.psearch2(ds);
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
						
						ArrayList<ProductVo> mList = new ArrayList<ProductVo>();
						int b = plist.size(); 
						for (int j = 0; j < plist.size(); j++) {
							if(plist.get(j).getProduct_city().contains(a)) {
								mList.add(plist.get(j));
								plist.remove(j);
								j--;
							}						
						}
						/* //System.out.println(mList); */
						proS.put(a,mList);
					}
					model.addAttribute("proS",proS);
					return "category";
					/* //System.out.println("proS = "+model.getAttribute("proS")); */
				} else {
					//System.out.println(cate + "다");
					//프전선
					List<String> clist = searchdao.citylist();
					ArrayList<ProductVo> plist = searchdao.pcsearch2(cate,ds);
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
				
						ArrayList<ProductVo> mList = new ArrayList<ProductVo>();
						for (int j = 0; j < plist.size(); j++) {
							if(plist.get(j).getProduct_city().contains(a)) {
								mList.add(plist.get(j));
								plist.remove(j);
								j--;
							}						
						}
						proS.put(a,mList);
					}
					model.addAttribute("proS",proS);
					return "category";
					/* //System.out.println("proS = "+model.getAttribute("proS")); */		
				}
			} else {
				//System.out.println(city + "다");
				if (cate.equals("전체")) {
					//System.out.println("전체상품이다");
					//프선전
					List<String> clist = searchdao.catelist();
					ArrayList<ProductVo> plist = searchdao.pcatesearch2(city,ds);
					for (int i = 0; i < clist.size(); i++) {
						String a = clist.get(i);
						
						ArrayList<ProductVo> mList = new ArrayList<ProductVo>();
						for (int j = 0; j < plist.size(); j++) {
							if(plist.get(j).getProduct_category().contains(a)) {
								mList.add(plist.get(j));
								plist.remove(j);
								j--;
							}						
						}
						proS.put(a,mList);
					}
					model.addAttribute("proS",proS);
					return "category";
					/* //System.out.println("proS = "+model.getAttribute("proS")); */	
				} else {
					//System.out.println(cate + "다");
					//프선선
					//HashMap<ProductVo, TagTagVo> ulti = new HashMap<ProductVo, TagTagVo>();
					ArrayList<ProductVo> pList = searchdao.pccsearch2(city,cate,ds);
					ArrayList<TagTagVo> tList = new ArrayList<TagTagVo>();
					ArrayList<UltiProVo> uList = new ArrayList<UltiProVo>();
					
					for (int i = 0; i < pList.size(); i++) {
						UltiProVo uProVo = new UltiProVo();
						uProVo.setProduct_id(pList.get(i).getProduct_id());
						uProVo.setProduct_img1(pList.get(i).getProduct_img1());
						uProVo.setProduct_img2(pList.get(i).getProduct_img2());
						uProVo.setProduct_img3(pList.get(i).getProduct_img3());
						uProVo.setProduct_img4(pList.get(i).getProduct_img4());
						uProVo.setProduct_img5(pList.get(i).getProduct_img5());
						uProVo.setProduct_address(pList.get(i).getProduct_address());
						uProVo.setProduct_name(pList.get(i).getProduct_name());
						uProVo.setProduct_shortword(pList.get(i).getProduct_shortword());
						uProVo.setProduct_subcontent(pList.get(i).getProduct_subcontent());
						tList = productDao.gettag(pList.get(i).getProduct_id());
						//uProVo = new UltiProVo((pList.get(i)),tList.get(i));
						for (int j = 0; j < tList.size(); j++) {
							if (tList.get(j)!=null) {
								if (j==0) {
									uProVo.setTag_tag1(tList.get(j).getTag_tag());
								}else if(j==1){
									uProVo.setTag_tag2(tList.get(j).getTag_tag());
								}else if(j==2){
									uProVo.setTag_tag3(tList.get(j).getTag_tag());
								}else if(j==3){
									uProVo.setTag_tag4(tList.get(j).getTag_tag());
								}else if(j==4){
									uProVo.setTag_tag5(tList.get(j).getTag_tag());
								}
							}
							
						}
						uProVo.setHeart_count(memDao.heartcount(pList.get(i).getProduct_id()));
						uList.add(uProVo);
					}
					//System.out.println(uList);
					model.addAttribute("proS",uList);
					return "categoryList";
					
				}
			}
		
		}else {
			return null;
		}

	}

}
