package com.triple.finalp;

import java.io.Console;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticatedPrincipal;
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
import com.triple.finalp.mem.vo.PlanConVo;
import com.triple.finalp.pro.service.ProductService;
import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.review.service.ReviewService;
import com.triple.finalp.review.vo.ReviewVo;
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

	@Autowired
	ReviewService reviewService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Authentication authentication, Model model) {
		// 인덱스로 보내기

		/*
		 * if(authentication==null) { return "index"; }else{ String id =
		 * authentication.getName(); memberService.info(model,id); }
		 */

		return "index";
	}

	@RequestMapping(value = "/train", method = RequestMethod.GET)
	public String train() {
		// 인덱스로 보내기

		return "test/train";
	}

	@RequestMapping(value = "/flight", method = RequestMethod.GET)
	public String flight() {
		// 인덱스로 보내기

		return "test/flight";
	}
	@RequestMapping(value = "/myReserv", method = RequestMethod.GET)
	public String myReserv() {
		// 인덱스로 보내기

		return "myReservation";
	}
	@RequestMapping(value = "/mySave", method = RequestMethod.GET)
	public String mySave() {
		// 인덱스로 보내기

		return "mySave";
	}

	@RequestMapping(value = "/wea", method = RequestMethod.GET)
	public String wea() {
		// 인덱스로 보내기

		return "/product/review";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(@RequestParam("image_file_name_h") String image_file_name_h, MemVo memVo,
			MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException {
		memberService.join(memVo);
		fileService.join(mhsr, image_file_name_h);
		return "redirect:/";
	}

	@RequestMapping(value = "/updateProfile", method = RequestMethod.POST)
	public String updateProfile(@RequestParam("image_file_name_h") String image_file_name_h, MemVo memVo,
			MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException {
		memberService.updateProfile(memVo);
		////System.out.println(memVo);
		fileService.join(mhsr, image_file_name_h);
		return "redirect:/";
	}

	@RequestMapping(value = "/updatePw", method = RequestMethod.POST)
	public String updatePw(MemVo memVo, Principal principal) throws IllegalStateException, IOException {
		memVo.setMem_id(principal.getName());
		memberService.updatePw(memVo);
		return "redirect:/logout";
	}

	@RequestMapping(value = "/writesave", method = RequestMethod.POST)
	public String testsave(@RequestParam("mimage_file_name_h") List<String> image_file_name_h, MagVo magVo,
			MultipartHttpServletRequest mhsr, Model model,Principal principal) throws IllegalStateException, IOException {
		// 작성글 저장
		// mhsr 사용,이동후 file서비스를 사용하는 방식으로
		String mid = principal.getName() + magVo.getMgz_id();
		magVo.setMgz_id(mid);
		//magVo.setMgz_admin_id(principal.getName());
		
		fileService.save(mhsr, image_file_name_h);
		if(image_file_name_h.get(0)!=null) {
			magVo.setMgz_thub(image_file_name_h.get(0).toString());
		}
		magSerivce.save(magVo);

		/* tagService.tagadd(magVo.getMgz_id(),magvo.getTag()); */
		// magSerivce.view(model);
		return "redirect:/";
	}

	@GetMapping("/login")
	public String Login(HttpServletRequest request, HttpServletResponse response) {
		RequestCache requestCache = new HttpSessionRequestCache();
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		try {
			// 여러가지 이유로 이전페이지 정보가 없는 경우가 있음.
			// https://stackoverflow.com/questions/6880659/in-what-cases-will-http-referer-be-empty
			request.getSession().setAttribute("prevPage", savedRequest.getRedirectUrl());
		} catch (NullPointerException e) {
			request.getSession().setAttribute("prevPage", "/");
		}
		return "login";
	}

	@RequestMapping(value = "/proRegister", method = RequestMethod.POST)
	public String register(@RequestParam("image_h") List<String> image_h, ProductVo pvo,
			MultipartHttpServletRequest mhsr, @RequestParam("tag_list_h") List<String> tag_list_h, Principal principal)
			throws IllegalStateException, IOException {
		/*
		 * //System.out.println(pvo); //System.out.println(image_h);
		 * //System.out.println(tag_list_h);
		 */
		////System.out.println(pvo);
		String pid = principal.getName() + pvo.getProduct_id();
		pvo.setProduct_id(pid);
		pvo.setProduct_admin_id(principal.getName());
		productService.register(pvo, tag_list_h);
		fileService.save(mhsr, image_h);
		return "redirect:/admin/oL";
	}

	// 상품디테일등록
	@RequestMapping(value = "/proDetailRegister", method = RequestMethod.POST)
	public String registerDetail(@RequestParam("rimage_h") List<String> rimage_h, ProductDetailVo pdvo,
			MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException {
		////System.out.println(pdvo);
		productService.registerDetail(pdvo);
		fileService.save(mhsr, rimage_h);
		// 리턴을 확인하기페이지로 연결해주기
		return "redirect:/admin/oL";
	}

	// 상단검색바
	@GetMapping("/top_search")
	public String top_search(@RequestParam("main_search") String main, @RequestParam("city_search") String city,
			@RequestParam("cate_search") String cate, Model model) {
		/*
		 * //System.out.println("종류 : " + main); //System.out.println("도시 : " + city);
		 * //System.out.println("카테고리 : " + cate);
		 */

		String r = searchService.search(main, city, cate, model);
		model.addAttribute("main_search", main);
		model.addAttribute("city_search", city);
		model.addAttribute("cate_search", cate);

		return r;
	}
	
	@GetMapping("/ds")
	public String ds(@RequestParam("main_search") String main, @RequestParam("city_search") String city,
			@RequestParam("cate_search") String cate,@RequestParam("DS") String ds, Model model) {

		String r = searchService.search2(main, city, cate, model,ds);
		model.addAttribute("main_search", main);
		model.addAttribute("city_search", city);
		model.addAttribute("cate_search", cate);

		return r;
	}

	// 상단검색바
	@GetMapping("/cate_button/{cate}")
	public String cate_button(@PathVariable("cate") String cate, Model model) {

		//System.out.println("카테고리 : " + cate);
		String main = "여행지 검색";
		String city = "전체";
		String r = searchService.search(main, city, cate, model);
		model.addAttribute("main_search", main);
		model.addAttribute("city_search", city);
		model.addAttribute("cate_search", cate);

		return r;
	}

	// 상품눌렀을때 상세
	@RequestMapping(value = "/category/{product_id}", method = RequestMethod.GET)
	public String category(@PathVariable("product_id") String product_id, Model model, Authentication authentication) {
		// 카테고리 클릭시 조회페이지
		// id << jsp 페이지에서 클릭시 보내주는 값
		
		if (authentication == null) {
			productService.showPro(product_id, model);
			return "detailedPage";
		} else {
			String mem_id = authentication.getName();
			memberService.memshowPro(mem_id,product_id,model);
			return "detailedPage";
		}
		
	}
	
	@RequestMapping(value = "/mv/{mgz_id}", method = RequestMethod.GET)
	public String mv(@PathVariable("mgz_id") String mgz_id, Model model, Authentication authentication) {
		// 카테고리 클릭시 조회페이지
		// id << jsp 페이지에서 클릭시 보내주는 값
		
		if (authentication == null) {
			magSerivce.showmag(mgz_id,model);
			return "magview";
		} else {
			String mem_id = authentication.getName();
			memberService.memshowmag(mem_id,mgz_id,model);
			return "magview";
		}
		
	}

	// 리뷰등록
	@RequestMapping(value = "/review", method = RequestMethod.POST)
	public String review(@RequestParam("rimage_file_name_h")String rimage_file_name_h,ReviewVo reviewvo, Principal principal,MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException {
		reviewvo.setMem_id(principal.getName());
		//System.out.println(reviewvo);
		reviewService.review(reviewvo);
		fileService.join(mhsr, rimage_file_name_h);
		return "redirect:/category/" + reviewvo.getProduct_id();
	}

}
