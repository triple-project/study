package com.triple.finalp;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.triple.finalp.mag.service.MagSerivce;
import com.triple.finalp.mag.vo.MagVo;

/**
 * Handles requests for the application home page.
 */
//@Controller
public class HomeController {
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//테스트용 컨트롤러입니다
	
	/*
	 * @Autowired MagSerivce magSerivce;
	 * 
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String home()
	 * { //model.addAttribute( magSerivce.test()); //magSerivce.test(model); return
	 * "index"; }
	 * 
	 * //@PostMapping("write")
	 * 
	 * @RequestMapping(value = "write", method = RequestMethod.POST) public String
	 * writeForm(MagVo magVo,Model model) { System.out.println(magVo.getId12());
	 * System.out.println(magVo.getName12()); magSerivce.write(magVo);
	 * magSerivce.test(model); return "test"; }
	 */
	
}
