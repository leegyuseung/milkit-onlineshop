package com.acorn.project.mealkit.service;


import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface MealkitService {
	
	public void allList(HttpServletRequest request);
	public void cList(HttpServletRequest request);
	public void jList(HttpServletRequest request);
	public void kList(HttpServletRequest request);
	public void wList(HttpServletRequest request);
	public void getDetail(ModelAndView mView, String productId);

}
