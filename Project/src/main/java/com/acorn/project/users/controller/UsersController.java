package com.acorn.project.users.controller;


import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.users.dto.UsersDto;
import com.acorn.project.users.service.UsersService;



@Controller
public class UsersController {
	@Autowired
	private UsersService service;
	
	//회원 탈퇴 요청 처리
	@RequestMapping("/users/private/delete")
	public ModelAndView delete(HttpSession session, ModelAndView mView) {

		service.deleteUser(session, mView);

		mView.setViewName("users/delete");
		return mView;
	}
	
	//회원 추방
	@RequestMapping("/staff/delete2")
	public ModelAndView delete2(String id, ModelAndView mView) {
		service.deleteUser2(id);
		mView.setViewName("redirect:/staff/usersList.do");
		return mView;
	}

	//개인정보 수정 반영 요청 처리
	@RequestMapping(value = "/users/private/update", method=RequestMethod.POST)
	public String update(UsersDto dto, HttpSession session) {
		//서비스를 이용해서 개인정보를 수정하고 
		service.updateUser(dto, session);
		//개인정보 보기로 리다일렉트 이동 시틴다
		return "redirect:/users/private/info.do";
	}
	
	
	//회원정보 수정폼 요청처리
	@RequestMapping("/users/private/updateform")
	public ModelAndView updateForm(ModelAndView mView, HttpSession session) {
		service.getInfo(session, mView);
		mView.setViewName("users/updateform");
		return mView;
	}
	
	@RequestMapping("/users/private/pwd_update")
	public ModelAndView pwdUpdate(UsersDto dto, 
			ModelAndView mView, HttpSession session) {
		//서비스에 필요한 객체의 참조값을 전달해서 비밀번호 수정 로직을 처리한다.
		service.updateUserPwd(session, dto, mView);
		//view page 로 forward 이동해서 작업 결과를 응답한다.
		mView.setViewName("users/pwd_update");
		return mView;
	}

	@RequestMapping("/users/private/pwd_updateform")
	public String pwdUpdateForm() {

		return "users/pwd_updateform";
	}

	@RequestMapping("/users/private/info")
	public ModelAndView info(HttpSession session, ModelAndView mView) {
		service.getInfo(session, mView);
		mView.setViewName("users/info");
		return mView;
	}
	
	@RequestMapping(value = "/users/signup_form", method = RequestMethod.GET)
	public String signupForm() {
		
		return "users/signup_form";
	}
	
	@RequestMapping("/users/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("id");
		session.removeAttribute("user");
		return "users/logout";
	}
	//아이디 중복 확인을 해서 json 문자열을 리턴해주는 메소드 
	@RequestMapping("/users/checkid")
	@ResponseBody
	public Map<String, Object> checkid(@RequestParam String inputId){
		//UsersService 가 리턴해주는 Map 을 리턴해서 json 문자열을 응답한다. 
		return service.isExistId(inputId);
	}
	
	//회원 가입 요청 처리 ( post 방식 요청은 요청 method 를 명시하는것이 좋다.
	@RequestMapping(value = "/users/signup", method = RequestMethod.POST)
	public ModelAndView signup(ModelAndView mView, UsersDto dto) {
		
		service.addUser(dto);
		
		mView.setViewName("users/signup");
		return mView;
	}

	//로그인 폼 요청 처리
	@RequestMapping("/users/loginform")
	public String loginform() {

		return "users/loginform";
	}
	//로그인 요청 처리
	@RequestMapping("/users/login")
	public ModelAndView login(ModelAndView mView, UsersDto dto,
			@RequestParam String url, HttpSession session) {

		service.loginProcess(dto, session);

		String encodedUrl=URLEncoder.encode(url);
		mView.addObject("url", url);
		mView.addObject("encodedUrl", encodedUrl);

		mView.setViewName("users/login");
		return mView;
	}
	
	@RequestMapping("/staff/usersList")
	public ModelAndView list(ModelAndView mView) {
		service.getList(mView);
		mView.setViewName("staff/usersList");
		return mView;
	}
	
	//userList 에서 user type 수정요청 처리
	@RequestMapping("/staff/updateUserType")
	public ModelAndView updateUserType(ModelAndView mView,UsersDto dto) {
		service.updateUsertype(dto);
		mView.setViewName("redirect:/staff/usersList.do");
		return mView;
	}
}
