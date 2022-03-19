package com.triple.finalp;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/rest")
public class TripleRestController {
	
	@RequestMapping("test/img")
	public void testimg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String a = "<img src=\"resources/img/testimg.jpg\">";
		response.getWriter().print(a);
	}
	
}
