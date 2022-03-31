package com.triple.finalp.mag.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FileService {
	public static final String IMAGE_REPO_PATH = "C:\\Users\\Haze\\git\\study\\triple\\src\\main\\webapp\\resources\\img\\upload";
//	public static final String IMAGE_REPO_PATH = "C:\\Users\\Haze\\final\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\triple\\resources\\img";
	public void save(MultipartHttpServletRequest mhsr, List<String> image_file_name_h) throws IllegalStateException, IOException;
	public void join(MultipartHttpServletRequest mhsr, String image_file_name_h) throws IllegalStateException, IOException;
}
