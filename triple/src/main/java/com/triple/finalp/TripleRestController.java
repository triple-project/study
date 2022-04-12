package com.triple.finalp;

import java.io.IOException;
import java.security.Principal;

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
import com.triple.finalp.data.vo.PayVo;
import com.triple.finalp.data.vo.TrainVo;
import com.triple.finalp.mem.service.MemberService;
import com.triple.finalp.mem.vo.HeartVo;
import com.triple.finalp.mem.vo.MyPlanVo;
import com.triple.finalp.mem.vo.PlanConVo;
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
	
	@RequestMapping(value =  "/ci",method = RequestMethod.POST)
	public void ci(HttpServletRequest request, HttpServletResponse response,TrainVo trainVo) throws IOException {
		
		String trainList = dataService.train(trainVo);
		response.getWriter().print(trainList);
		response.getWriter().flush(); 
	}
	
	@RequestMapping(value = "/flightInfo", method = RequestMethod.POST) // 항공권 정보 
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
	public void testtravel(MyPlanVo myPlanVo, HttpServletResponse response)
			throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper(); // 여행등록 서비스 Object user =
		//System.out.println(myPlanVo);	
		memberService.inplan(myPlanVo);
		// response.getWriter().print(mapper.writeValueAsString(user));
		// response.getWriter().flush();
	}
	
	@RequestMapping(value = "/ftravel", method = RequestMethod.POST)
	public void ftravel(@RequestParam("mem_id")String mem_id, HttpServletResponse response)
			throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper(); 
		//System.out.println(mem_id);	
		Object mpl = memberService.fplan(mem_id);
		response.getWriter().print(mapper.writeValueAsString(mpl));
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/travel_del", method = RequestMethod.POST)
	public void ftravel_del(MyPlanVo myPlanVo, HttpServletResponse response)
			throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper(); 
		//System.out.println(mem_id);	
		Object mpl = memberService.dplan(myPlanVo);
		response.getWriter().print(mapper.writeValueAsString(mpl));
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/freview", method = RequestMethod.POST)
	public void freview(@RequestParam("mem_id")String mem_id, HttpServletResponse response)
			throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper(); 
		//System.out.println(mem_id);	
		Object mpl = memberService.freview(mem_id);
		response.getWriter().print(mapper.writeValueAsString(mpl));
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/freview_info", method = RequestMethod.POST)
	public void freview_info(@RequestParam("mem_id")String mem_id,@RequestParam("product_id")String product_id, HttpServletResponse response)
			throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper(); 
		////System.out.println(plan_id);	
		Object mpl = memberService.freview_info(mem_id,product_id);
		response.getWriter().print(mapper.writeValueAsString(mpl));
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/tagList", method = RequestMethod.POST)
	public void tagList(@RequestParam("tag_cate") String tag_cate,HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		Object tl = tagService.getList(tag_cate);	
		response.getWriter().print(mapper.writeValueAsString(tl));
		response.getWriter().flush();		
	}
	
	@RequestMapping(value = "/ftravelinfo", method = RequestMethod.POST)
	public void ftravelinfo(@RequestParam("plan_id")String plan_id, HttpServletResponse response)
			throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper(); 
		////System.out.println(plan_id);	
		Object mpl = memberService.fplanc(plan_id);
		response.getWriter().print(mapper.writeValueAsString(mpl));
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/travin", method = RequestMethod.POST)
	public void travin(PlanConVo planConVo, HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException {
		// 여행에 추가하기
		ObjectMapper mapper = new ObjectMapper();
		memberService.travin(planConVo);
		Object wan = "wan";
		response.getWriter().print(mapper.writeValueAsString(wan));
		response.getWriter().flush();			
	}
	
	@RequestMapping(value = "/hearton", method = RequestMethod.POST)
	public void hearton(@RequestParam("cheart")String cheart, HeartVo heartVo, HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException {
		// 여행에 추가하기
		ObjectMapper mapper = new ObjectMapper();
		String wan = memberService.hearton(heartVo,cheart);
		//Object wan = "hwan";
		
		response.getWriter().print(mapper.writeValueAsString(wan));
		response.getWriter().flush();			
	}
	
	@RequestMapping(value = "/payinfo", method = RequestMethod.POST)
	public void payinfo(@RequestParam("product_id")String product_id,@RequestParam("pd_id")String pd_id , HttpServletResponse response,Principal principal) throws JsonGenerationException, JsonMappingException, IOException {
		// 결제정보 가져오기
		String mem_id = principal.getName();
		ObjectMapper mapper = new ObjectMapper();
		PayVo payvo = memberService.payinfo(product_id,pd_id,mem_id);
		
		response.getWriter().print(mapper.writeValueAsString(payvo));
		response.getWriter().flush();			
	}

}
