package com.triple.finalp;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.util.WebUtils;

import com.triple.finalp.mag.service.FileService;
import com.triple.finalp.mag.service.MagSerivce;
import com.triple.finalp.mag.vo.MagVo;
import com.triple.finalp.mem.service.MemberService;
import com.triple.finalp.mem.vo.MemVo;
import com.triple.finalp.pro.service.ProductService;

@Controller
public class TripleController {
	@Autowired
	ProductService productService;
	
	@Autowired
	MagSerivce magSerivce;
	
	@Autowired
	FileService fileService;
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Authentication authentication,Model model) {
		//인덱스로 보내기
		
		/*
		 * if(authentication==null) { return "index"; }else{ String id =
		 * authentication.getName(); memberService.info(model,id); }
		 */
		
		return "index";
	}
	
	@RequestMapping(value = "/it", method = RequestMethod.GET)
	public String it(Authentication authentication,Model model) {
		//테스ㅡㅌ용
		return "NewFile";
	}
	
	/*
	 * @RequestMapping(value = "/info", method = RequestMethod.POST) public String
	 * testinfo(@RequestParam("mem_id") String id, Model model,Authentication
	 * authentication) { System.out.println(authentication.getName());
	 * 
	 * memberService.info(model,id);
	 * 
	 * return "index"; }
	 */
	
	@RequestMapping(value = "/tl", method = RequestMethod.GET)
	public String testlogin() {
		//인덱스로 보내기
		return "test/member/login";
	}
	
	@RequestMapping(value = "/tj", method = RequestMethod.GET)
	public String testjoin() {
		//인덱스로 보내기
		return "test/member/join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String testjoinjoin(MemVo memVo) {
		memberService.join(memVo);
		return "redirect:tl";
	}
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String cate() {
		//카테고리로 보내기
		return "category";
	}
	
	@RequestMapping(value = "/testview/{id}", method = RequestMethod.GET)
	public String testcate(@PathVariable("id") String id, Model model) {
		// 카테고리 클릭시 조회페이지
		// id << jsp 페이지에서 클릭시 보내주는 값
		System.out.println(id);	//확인
		model.addAttribute("main",id);	//main에 id값을 삽입
		productService.find(id, model);	//id값에 대한 조회 > 서비스 > dao > mapper
		return "test/testview";			//조회결과에 사용할 jsp주소
	}
	
	@RequestMapping(value = "/tm", method = RequestMethod.GET)
	public String testmag() {
		//매거진 작성폼으로 보내기
		return "test/mag/testmagwrite";
	}
	
	@RequestMapping(value = "/test/mag/magiframe", method = RequestMethod.GET)
	public String testiframe() {
		//글작성 옵션
		return "test/mag/magiframe";
	}
	
	@RequestMapping(value = "/writesave", method = RequestMethod.POST)
	public String testsave(MagVo magVo, MultipartHttpServletRequest mhsr,Model model) throws IllegalStateException, IOException {
		//작성글 저장
		//mhsr 사용,이동후 file서비스를 사용하는 방식으로
		magSerivce.save(magVo);
		fileService.save(mhsr);
		//magSerivce.view(model);
		return "redirect:tmv";
	}
	
	@RequestMapping(value = "/tmv", method = RequestMethod.GET)
	public String testmagview(Model model) {
		//작성결과
		magSerivce.view(model);
		return "test/mag/testmagview";
	}
	
	@GetMapping("/login")
	public String Login(HttpServletRequest request, HttpServletResponse response) {
		RequestCache requestCache = new HttpSessionRequestCache();
		SavedRequest savedRequest = requestCache.getRequest(request, response); 
		try {
			//여러가지 이유로 이전페이지 정보가 없는 경우가 있음.
			//https://stackoverflow.com/questions/6880659/in-what-cases-will-http-referer-be-empty
			request.getSession().setAttribute("prevPage", savedRequest.getRedirectUrl());
		} catch(NullPointerException e) {
			request.getSession().setAttribute("prevPage", "/");
		}
		return "login";
	}
	
}
