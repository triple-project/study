package com.triple.finalp.security;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.util.WebUtils;

import com.triple.finalp.mem.dao.MemDao;
import com.triple.finalp.mem.service.MemberService;
import com.triple.finalp.mem.vo.MemVo;


@Component
public class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
	@Autowired
	MemDao memDao;
	
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		
		ObjectMapper mapper = new ObjectMapper(); // JSON 변경용

		ResponseDataDTO responseDataDTO = new ResponseDataDTO();
		responseDataDTO.setCode(ResponseDataCode.SUCCESS);
		responseDataDTO.setStatus(ResponseDataStatus.SUCCESS);
		
		
		//String prevPage = request.getSession().getAttribute("prevPage").toString(); // 이전 페이지 가져오기

		Map<String, String> items = new HashMap<String, String>();
		//items.put("url", prevPage); // 이전 페이지 저장
		items.put("login_id",authentication.getName());
		String id = authentication.getName();
		responseDataDTO.setItem(items);

		response.setCharacterEncoding("UTF-8");
		response.setStatus(HttpServletResponse.SC_OK);
		response.getWriter().print(mapper.writeValueAsString(responseDataDTO));
		response.getWriter().flush();
	}
	
}
