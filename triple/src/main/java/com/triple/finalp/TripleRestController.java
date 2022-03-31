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

import com.triple.finalp.mem.service.MemberService;


@RestController
@RequestMapping("/rest")
public class TripleRestController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping("/ci")
	public void ci(HttpServletRequest request, HttpServletResponse response) throws IOException {
		 StringBuilder urlBuilder = new StringBuilder("http://openapi.tago.go.kr/openapi/service/TrainInfoService/getStrtpntAlocFndTrainInfo"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=50kpvF4A6C3KKNrHUp%2BQYGPE8qlyf8mDIe2IICEh5eJDVivH5O%2F2mjOVnSYhDOP%2B5gekbjk9iWeryiVMciLd4g%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
	        urlBuilder.append("&" + URLEncoder.encode("depPlaceId","UTF-8") + "=" + URLEncoder.encode("NAT010000", "UTF-8")); /*출발기차역ID*/
	        urlBuilder.append("&" + URLEncoder.encode("arrPlaceId","UTF-8") + "=" + URLEncoder.encode("NAT011668", "UTF-8")); /*도착기차역ID*/
	        urlBuilder.append("&" + URLEncoder.encode("depPlandTime","UTF-8") + "=" + URLEncoder.encode("20201201", "UTF-8")); /*출발일*/
	        urlBuilder.append("&" + URLEncoder.encode("trainGradeCode","UTF-8") + "=" + URLEncoder.encode("00", "UTF-8")); /*차량종류코드*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	        System.out.println(sb.toString());
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
	 

}
