package com.triple.finalp;

import java.io.IOException;
import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.triple.finalp.mag.service.FileService;
import com.triple.finalp.mag.service.MagSerivce;
import com.triple.finalp.mag.vo.MagVo;
import com.triple.finalp.mem.service.MemberService;
import com.triple.finalp.mem.vo.MemVo;
import com.triple.finalp.pro.service.ProductService;
import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.search.service.SearchService;

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
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Authentication authentication,Model model) {
		//인덱스로 보내기
		
		/*
		 * if(authentication==null) { return "index"; }else{ String id =
		 * authentication.getName(); memberService.info(model,id); }
		 */
		
		return "index";
	}
	
	
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
	   public String testjoinjoin(MemVo memVo,MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException {
	      memberService.join(memVo);
	      fileService.join(mhsr);
	      return "redirect:/";
	   }
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String cate() {
		//카테고리로 보내기
		return "category";
	}
	
	@RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
	public String category(@PathVariable("id") String id, Model model) {
		// 카테고리 클릭시 조회페이지
		// id << jsp 페이지에서 클릭시 보내주는 값
		System.out.println(id);	//확인
		model.addAttribute("main",id);	//main에 id값을 삽입
		productService.find(id, model);	//id값에 대한 조회 > 서비스 > dao > mapper
		return "category";			//조회결과에 사용할 jsp주소
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
		/* tagService.tagadd(magVo.getMgz_id(),magvo.getTag()); */
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
	
	//상품등록 - 업주
		@GetMapping("product/pr") 
		//@RequestMapping(value = "/pr", method = RequestMethod.GET)
		public String registerGet() {
			return "/product/proRegister"; 
		}
		@RequestMapping(value = "/product/proRegister", method = RequestMethod.POST)
		public String register(ProductVo pvo) {
			System.out.println("3"+pvo);
			productService.register(pvo);
			return "redirect:/product/myList";
		} 
	
	//상품상세등록 - 업주
	@GetMapping("/product/pdr")
	//@RequestMapping(value = "/pdr", method = RequestMethod.GET)
	public String registerDGet() {
		return "/product/proDetailRegister"; 
	}
	@RequestMapping(value = "/product/pdr/proDetailRegister", method = RequestMethod.POST)
	public String registerDetail(ProductDetailVo pdvo) {
		productService.registerDetail(pdvo);
		return "redirect:/product/myList";
	}
	// 상품디테일등록	// url경로
	@RequestMapping(value = "/product/pdr/{product_id}", method = RequestMethod.GET)
	public String goDetail(@PathVariable("product_id") String product_id, Model model) {
		productService.findp(product_id,model);
		return "/product/proDetailRegister";	//.jsp경로		
	}
	// 나의(업주)의 상품리스트
	@GetMapping("/product/myList") 
	public void view(Model model) {
		String admin_id = "ad1";
		productService.getProId(admin_id, model);
	}
	 //상품전체 -고객
	@GetMapping("/product/list")
	public void list(Model model) {
		productService.getAllProList(model);
	}

	//고객의 상품상세조회
	@RequestMapping(value="product/list/{product_id}",method = RequestMethod.GET)
	public String cusDetail(@PathVariable("product_id") String product_id, Model model) {
		productService.showPro(product_id,model);
		return "/product/showPro";
	}
	
	//상품의상세의상세
	@RequestMapping(value = "product/list/showPro/{product_id}/{pd_name}", method = RequestMethod.GET)
	public String showProDetail( @PathVariable("product_id") String product_id,@PathVariable("pd_name") String pd_name,Model model) {
		productService.showProDetail(product_id,pd_name,model);
		return "/product/showProDetail";	
	}
	
	//상단검색바
	@PostMapping("/top_search")
	public String top_search(@RequestParam("main_search") String main, @RequestParam("city_search") String city,
			@RequestParam("cate_search") String cate, Model model) {
		System.out.println("종류 : " + main);
		System.out.println("도시 : " + city);
		System.out.println("카테고리 : " + cate);
		
		searchService.search(main,city,cate,model);
		model.addAttribute("main_search",main);
		model.addAttribute("city_search",city);
		model.addAttribute("cate_search",cate);
		
		//if main 이 여행지면 categoryA 아니면 categoryB로 보내면서 해결해야할듯
		return "category";
	}
	
	
}
