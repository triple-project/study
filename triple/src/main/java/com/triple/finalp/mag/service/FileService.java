package com.triple.finalp.mag.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FileService {
	//로컬용
	public static final String IMAGE_REPO_PATH = "C:\\Users\\Haze\\git\\study\\triple\\src\\main\\webapp\\resources\\img\\upload";
	//aws 배포용
	//public static final String IMAGE_REPO_PATH = "/usr/local/tomcat8.5/webapps/triple/resources/img/upload";
	public void save(MultipartHttpServletRequest mhsr, List<String> image_file_name_h) throws IllegalStateException, IOException;
	public void join(MultipartHttpServletRequest mhsr, String image_file_name_h) throws IllegalStateException, IOException;
}
