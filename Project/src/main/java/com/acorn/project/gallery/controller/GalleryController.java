package com.acorn.project.gallery.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GalleryController {
	
	@Autowired
	private GalleryService service;
	
	//gallery list 페이지로 이동
	@RequestMapping(value= "gallery/list")
	public String getList(HttpServletRequest request) {
		//view 페이지에 사용될 데이터는 request 영역에 담는다.
		service.getList(request);
		
		return "gallery/list";
	}
	
	//gallery 사진 업로드 form 페이지로 이동
	@RequestMapping(value= "/gallery/private/upload_form")
	public String uploadForm() {
		return "gallery/upload_form";
	}
	
	//gallery 사진 업로드 & DB 저장
	@RequestMapping(value = "/gallery/private/upload")
	public String upload(GalleryDto dto, HttpServletRequest request) {
		//form 에서 dto로 데이터 받아옴
		//dto : caption, MultipartFile image를 가지고 있다.
		//request : imagePath 만드는데 사용, session 영역의 id 가져오는데 사용
		service.saveImage(dto, request);
		
		return "gallery/upload";
	}
}
