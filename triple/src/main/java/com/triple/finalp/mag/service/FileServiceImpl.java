package com.triple.finalp.mag.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class FileServiceImpl implements FileService {

	@Override
	public void save(MultipartHttpServletRequest mhsr,List<String> image_file_name_h) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = mhsr.getFileNames();
		int i = 0;
		while (fileNames.hasNext()) {
			String fname = fileNames.next();
			MultipartFile file = mhsr.getFile(fname);
			String oname = file.getOriginalFilename();
			fileList.add(oname);
			
			if (file.isEmpty()) {
				// 업로드 파일 없음 프로세스
				
			} else {
				
				File saveFile = new File(IMAGE_REPO_PATH + "/" + image_file_name_h.get(i));
				file.transferTo(saveFile);
				i++;
			}
		}

	}
	
	@Override
	public void join(MultipartHttpServletRequest mhsr,String image_file_name_h) throws IllegalStateException, IOException {
		Iterator<String> fileNames = mhsr.getFileNames();
		while (fileNames.hasNext()) {
			String fname = fileNames.next();
			MultipartFile file = mhsr.getFile(fname);
			String oname = file.getOriginalFilename();

			if (file.isEmpty()) {
				// 업로드 파일 없음 프로세스
			} else {
				File saveFile = new File(IMAGE_REPO_PATH + "/" + image_file_name_h);
				file.transferTo(saveFile);
			}
		}
	}
}


