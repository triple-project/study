package com.triple.finalp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.triple.finalp.mag.service.MagSerivce;
import com.triple.finalp.mag.vo.MagVo;
import com.triple.finalp.pro.service.ProductService;

@Controller
public class TripleController {
	@Autowired
	ProductService productService;
	
	@Autowired
	MagSerivce magSerivce;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String test0316() {
		//인덱스로 보내기
		return "index";
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
	public String testsave(MagVo magVo) {
		//작성글 저장
		//mhsr 사용,이동후 file서비스를 사용하는 방식으로
		magSerivce.save(magVo);
		return "test/mag/testmagwrite";
	}
	
	@RequestMapping(value = "/tmv", method = RequestMethod.GET)
	public String testmagview(Model model) {
		//작성결과
		magSerivce.view(model);
		return "test/mag/testmagview";
	}
	
}
