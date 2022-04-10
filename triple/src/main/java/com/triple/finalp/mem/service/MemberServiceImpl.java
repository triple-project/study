package com.triple.finalp.mem.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.mem.dao.MemDao;
import com.triple.finalp.mem.vo.HeartVo;
import com.triple.finalp.mem.vo.MemVo;
import com.triple.finalp.mem.vo.MyPlanVo;
import com.triple.finalp.mem.vo.PlanConVo;
import com.triple.finalp.pro.dao.ProductDao;
import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.tag.dao.TagDao;
import com.triple.finalp.tag.vo.TagTagVo;
import com.triple.finalp.tag.vo.TagVo;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemDao memDao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	TagDao tagDao;
		
	/*
	 * @Autowired BCryptPasswordEncoder bCryptPasswordEncoder;
	 */
	
	@Autowired
	PasswordEncoder passwordEncoder;

	@Override
	public Map<String, String> info(String mem_id) {
		Map<String, String> info = new HashMap<String, String>();
		info.put("heart",memDao.c_heart(mem_id));
		info.put("plan",memDao.c_plan(mem_id));
		info.put("pro_mem_img",memDao.pi(mem_id));
		return info;
	}
	
	@Override
	   public void join(MemVo memVo) {
	      // TODO Auto-generated method stub
	      String pw = memVo.getMem_pw();
	      pw = "{bcrypt}"+ passwordEncoder.encode(pw);
	      memVo.setMem_pw(pw);
	      memDao.join(memVo);
	   }

	@Override
	public void updateProfile(MemVo memVo) {
		// TODO Auto-generated method stub
		
	      memDao.updateProfile(memVo);
	}

	@Override
	public Map<String, String> mv(String mem_id) {
		// TODO Auto-generated method stub
		Map<String, String> mv = new HashMap<String, String>();
		MemVo mvo = memDao.mv(mem_id);
		
		String e = mvo.getE_mail();
		String[] e2 = e.split("@");		
		/* mv.put("plan", ); */
		mv.put("e_mail",e2[0]);
		mv.put("e_mail2",("@" + e2[1]));
		mv.put("tel",mvo.getTel());
		mv.put("mem_img",mvo.getMem_img());
		mv.put("mem_id",mvo.getMem_id());
		return mv;
	}

	@Override
	public void updatePw(MemVo memVo) {
		String mem_pw = memVo.getMem_pw();
		mem_pw = "{bcrypt}"+ passwordEncoder.encode(mem_pw);
	      memVo.setMem_pw(mem_pw);
	    String mem_id = memVo.getMem_id();
	      memDao.updatePw(mem_id,mem_pw);
		
	}

	@Override
	public void inplan(MyPlanVo myPlanVo) {
		// TODO Auto-generated method stub
		memDao.inplan(myPlanVo);
	}

	@Override
	public ArrayList<MyPlanVo> fplan(String mem_id) {
		// TODO Auto-generated method stub
		ArrayList<MyPlanVo> fplan = memDao.fplan(mem_id);
		return fplan;
	}

	@Override
	public ArrayList<ProductVo> fplanc(String plan_id) {
		// TODO Auto-generated method stub
		List<String> pil = memDao.fplanc(plan_id);
		ArrayList<ProductVo> pvl = new ArrayList<ProductVo>();
		for (int i = 0; i < pil.size(); i++) {
			pvl.add(memDao.pbyp(pil.get(i)));
		}
		//System.out.println(pvl);
		return pvl;
	}

	@Override
	public void travin(PlanConVo planConVo) {
		// TODO Auto-generated method stub
		memDao.travin(planConVo);
	}

	@Override
	public void memshowPro(String mem_id, String product_id, Model model) {
		// TODO Auto-generated method stub
		ProductVo pvo = productDao.findp(product_id);
		ArrayList<ProductDetailVo> dList = productDao.goDetail(product_id);
		ArrayList<TagTagVo> tList = productDao.gettag(product_id);
		ArrayList<TagVo> tcl = tagDao.getList2(pvo.getProduct_category());
		
		int h = memDao.hc(mem_id,product_id);
		int hc = memDao.heartcount(product_id);
		
		if(h>0) {
			model.addAttribute("heart","heart");
		}else {
			model.addAttribute("heart","noheart");			
		}
		
		model.addAttribute("heartcount",hc);
		model.addAttribute("pvo",pvo);
		model.addAttribute("dList",dList);
		model.addAttribute("tList",tList);
		model.addAttribute("tcl",tcl);
		model.addAttribute("stc",pvo.getProduct_category());
	}

	@Override
	public void hearton(HeartVo heartVo,String cheart) {
		// TODO Auto-generated method stub
		if (cheart.equals("heart")) {
			memDao.heartoff(heartVo);
		}else {
			memDao.hearton(heartVo);
		}
	
	}


}
