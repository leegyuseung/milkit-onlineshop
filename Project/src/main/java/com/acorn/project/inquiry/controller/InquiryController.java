package com.acorn.project.inquiry.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.project.inquiry.dto.InquiryCommentDto;
import com.acorn.project.inquiry.dto.InquiryDto;
import com.acorn.project.inquiry.service.InquiryService;

@Controller
public class InquiryController {
	@Autowired
	private InquiryService service;

	@RequestMapping("/inquiry/list")
	public String getList(HttpServletRequest request) {

		service.getList(request);

		return "inquiry/list";
	}
	
	@RequestMapping("/inquiry/private/insertform")
	public String insertForm() {

		return "inquiry/insertform";
	}
	
	//새글 저장 요청 처리 
	@RequestMapping("/inquiry/private/insert")
	public String insert(InquiryDto dto, HttpSession session) {
		//글 작성자는 세션에서 얻어낸다. 
		String id=(String)session.getAttribute("id");
		//InquiryDto 객체에 글 작성자도 담기
		dto.setWriter(id);
		service.saveContent(dto);

		return "inquiry/insert";
	}
	//글 자세히 보기 요청 처리
	@RequestMapping("/inquiry/detail")
	public String detail(HttpServletRequest request) {
		service.getDetail(request);
		return "inquiry/detail";
	}
	//새로운 댓글 저장 요청 처리
	@RequestMapping("/inquiry/private/comment_insert")
	public String commentInsert(HttpServletRequest request, 
			@RequestParam int ref_group) {

		service.saveComment(request);

		return "redirect:/inquiry/detail.do?num="+ref_group;
	}
	//댓글 더보기 요청 처리
	@RequestMapping("/inquiry/ajax_comment_list")
	public String ajaxCommentList(HttpServletRequest request) {

		service.moreCommentList(request);

		return "inquiry/ajax_comment_list";
	}
	//댓글 삭제 요청 처리
	@RequestMapping("/inquiry/private/comment_delete")
	@ResponseBody
	public Map<String, Object> commentDelete(HttpServletRequest request) {
		service.deleteComment(request);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("isSuccess", true);
		// {"isSuccess":true} 형식의 JSON 문자열이 응답되도록 한다. 
		return map;
	}
	//댓글 수정 요청처리 (JSON 을 응답하도록 한다)
	@RequestMapping("/inquiry/private/comment_update")
	@ResponseBody
	public Map<String, Object> commentUpdate(InquiryCommentDto dto){
		service.updateComment(dto);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("isSuccess", true);
		// {"isSuccess":true} 형식의 JSON 문자열이 응답되도록 한다. 
		return map;
	}
	//카페글 삭제 요청 처리 
	@RequestMapping("/inquiry/private/delete")
	public String delete(@RequestParam int num, HttpServletRequest request) {

		service.deleteContent(num, request);

		return "redirect:/inquiry/list.do";
	}
	@RequestMapping("/inquiry/private/updateform")
	public String updateForm(HttpServletRequest request) {

		service.getData(request);

		return "inquiry/updateform";
	}
}
