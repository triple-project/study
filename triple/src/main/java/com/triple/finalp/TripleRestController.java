package com.triple.finalp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.triple.finalp.data.service.DataService;
import com.triple.finalp.data.vo.FlightVo;
import com.triple.finalp.data.vo.TrainVo;
import com.triple.finalp.mem.service.MemberService;
import com.triple.finalp.tag.service.TagService;


@RestController
@RequestMapping("/rest")
public class TripleRestController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	DataService dataService;
	
	@Autowired
	TagService tagService;
	
	@RequestMapping("/ci")
	public void ci(HttpServletRequest request, HttpServletResponse response,TrainVo trainVo) throws IOException {
		
		String trainList = dataService.train(trainVo);
		response.getWriter().print(trainList);
		response.getWriter().flush(); 
	}
	
	@RequestMapping("/flightInfo") // 항공권 정보 
	   public void flightInfo(HttpServletRequest request, HttpServletResponse response,FlightVo flightVo) throws IOException {
	      
	      String flightList = dataService.flight(flightVo);
	      response.getWriter().print(flightList);
	      response.getWriter().flush();
	   }

	@RequestMapping("test/img")
	public void testimg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String a = "<img src=\"resources/img/testimg.jpg\">";
		response.getWriter().print(a);
	}

	
	@RequestMapping(value = "/info", method = RequestMethod.POST)
	public void info(@RequestParam("mem_id") String id,HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		Object user = memberService.info(id);	
		response.getWriter().print(mapper.writeValueAsString(user));
		response.getWriter().flush();		
	}
	
	@RequestMapping(value = "/info2", method = RequestMethod.POST)
	public void info2(@RequestParam("mem_id") String id,HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		Object mv = memberService.mv(id);		
		response.getWriter().print(mapper.writeValueAsString(mv));
		response.getWriter().flush();		
	}
	
	@RequestMapping(value = "/travel", method = RequestMethod.POST)
	public void testtravel(@RequestParam("mem_id") String id,@RequestParam("plan_name") String plan_name,
			@RequestParam("startdate") String startdate,@RequestParam("enddate") String enddate,Model model,HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException {
		
		/*
		 * ObjectMapper mapper = new ObjectMapper(); //여행등록 서비스 Object user =
		 * memberService.info(model, id);
		 * response.getWriter().print(mapper.writeValueAsString(user));
		 * response.getWriter().flush();
		 */
		 		
		System.out.println("아이디 : " + id);
		System.out.println("여행이름 : " + plan_name);
		System.out.println("시작일 : " + startdate);
		System.out.println("종료일 : " + enddate);
		
	}
	
	@RequestMapping(value = "/tagList", method = RequestMethod.POST)
	public void tagList(@RequestParam("tag_cate") String tag_cate,HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		Object tl = tagService.getList(tag_cate);	
		response.getWriter().print(mapper.writeValueAsString(tl));
		response.getWriter().flush();		
	}

}
