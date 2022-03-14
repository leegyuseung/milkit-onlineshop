package com.acorn.project.cart.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acorn.project.cart.dao.CartDao;
import com.acorn.project.cart.dto.CartDto;

@Controller
public class CartController {
	
	@Inject
	CartDao dao;
	
	@RequestMapping("/cart/carthome")
	public String cart() {
		return "cart/carthome";
	}
	
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute CartDto dto, HttpSession session) {
		//@ModelAttribute는 submit된 form의 내용을 저장해서 전달받거나, 다시 뷰로 넘겨서 출력하기 위해 사용되는 오브젝트 이다.
        //도메인 오브젝트나 DTO의 프로퍼티에 요청 파라미터를 바인딩해서 한번에 받으면 @ModelAttribute 라고 볼 수 있다.
        //@ModelAttribute는 컨트롤러가 리턴하는 모델에 파라미터로 전달한 오브젝트를 자동으로 추가해준다.
		
		//로그인 여부를 체크하기 위해서 session에 저장된 id 확인
		String userid=(String)session.getAttribute("id");
		if(userid==null) {
			//로그인 안 돼있으면 로그인 화면으로 이동
			return "redirect:/users/login.do";
		}
		dto.setId(userid);
		dao.insert(dto);
		return "redirect:/cart/carthome.do";
	}
}
