package com.acorn.project.users.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.users.dao.UsersDao;
import com.acorn.project.users.dto.UsersDto;



@Service
public class UsersServiceImpl implements UsersService{
   @Autowired
   private UsersDao dao;

   @Override
   public Map<String, Object> isExistId(String inputId) {
      Map<String, Object> map= new HashMap<String, Object>();
      map.put("isExist", dao.isExist(inputId));
      return map;
   }

   @Override
   public void addUser(UsersDto dto) {
      String pwd= dto.getPwd();
      BCryptPasswordEncoder encoder= new BCryptPasswordEncoder();
      String encodedPwd=encoder.encode(pwd);
      dto.setPwd(encodedPwd);
      
      dao.insert(dto);
      
   }

   @Override
   public void loginProcess(UsersDto dto, HttpSession session) {
      boolean isVaild=false;
      
      UsersDto result= dao.getData(dto.getId());
      if(result != null) {
         String encodedPwd= result.getPwd();
         String inputPwd= dto.getPwd();
         isVaild= BCrypt.checkpw(inputPwd, encodedPwd);
      }
      
      if(isVaild) {
         session.setAttribute("id", dto.getId());
      }
      
   }

   @Override
   public void getInfo(HttpSession session, ModelAndView mView) {
      String id=(String)session.getAttribute("id");
      UsersDto dto= dao.getData(id);
      mView.addObject("dto", dto);
      
   }

   @Override
   public void updateUserPwd(HttpSession session, UsersDto dto, ModelAndView mView) {
      //세션 영역에서 로그인된 아이디 읽어오기
      String id=(String)session.getAttribute("id");
      //DB 에 저장된 회원정보 얻어오기
      UsersDto resultDto=dao.getData(id);
      //DB 에 저장된 암호화된 비밀 번호
      String encodedPwd=resultDto.getPwd();
      //클라이언트가 입력한 비밀번호
      String inputPwd=dto.getPwd();
      //두 비밀번호가 일치하는지 확인
      boolean isValid=BCrypt.checkpw(inputPwd, encodedPwd);
      //만일 일치 한다면
      if(isValid) {
         //새로운 비밀번호를 암호화 한다.
         BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
         String encodedNewPwd=encoder.encode(dto.getNewPwd());
         //암호화된 비밀번호를 dto 에 다시 넣어준다.
         dto.setNewPwd(encodedNewPwd);
         //dto 에 로그인된 아이디도 넣어준다.
         dto.setId(id);
         //dao 를 이용해서 DB 에 수정 반영한다.
         dao.updatePwd(dto);
         //로그아웃 처리
         session.removeAttribute("id");
      }
      //작업의 성공여부를 ModelAndView 객체에 담아 놓는다(결국 HttpServletRequest 에 담긴다)
      mView.addObject("isSuccess", isValid);
      //로그인된 아이디도 담아준다.
      mView.addObject("id", id);
   }


   @Override
   public void updateUser(UsersDto dto, HttpSession session) {
      String id=(String)session.getAttribute("id");
      dto.setId(id);
      
      dao.update(dto);
   }

   @Override
   public void deleteUser(HttpSession session, ModelAndView mView) {
      String id=(String)session.getAttribute("id");
      dao.delete(id);
      session.removeAttribute("id");
      mView.addObject("id", id);
   }

   @Override
   public void getList(ModelAndView mView) {
      List<UsersDto> list=dao.getList();
      mView.addObject("list", list);   
   }

}