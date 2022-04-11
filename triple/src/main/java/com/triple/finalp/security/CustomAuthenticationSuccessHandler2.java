package com.triple.finalp.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

import com.triple.finalp.mem.dao.MemDao;

public class CustomAuthenticationSuccessHandler2 implements AuthenticationSuccessHandler{
	
	@Autowired
	MemDao memDao;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
				RequestCache requestCache = new HttpSessionRequestCache();
				SavedRequest savedRequest = requestCache.getRequest(request, response);
				
				/*	//경로저장
				String uri = request.getContextPath();
				//경우1 일 경우 uri에 경로 저장
				if(savedRequest!=null) uri = savedRequest.getRedirectUrl();
							
				response.sendRedirect(uri);
				*/
				//System.out.println("자동로그인");
				response.sendRedirect("/");
	}

}
