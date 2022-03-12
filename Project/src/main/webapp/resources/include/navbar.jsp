<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

    <%
       // thisPage 라는 파라미터명으로 전달되는 문자열을 얻어와 본다. 
       // null or "file" or "cafe"
       String thisPage=request.getParameter("thisPage");
       // thisPage 가 null 이면 index.jsp 페이지에 포함된 것이다. 
       //System.out.println(thisPage);
       //만일 null 이면 
       if(thisPage==null){
          //빈 문자열을 대입한다. (NullPointerException 방지용)
          thisPage="";
       }
       //로그인 된 아이디 읽어오기 
       String id=(String)session.getAttribute("id");
    %>
   <nav class="navbar navbar-light bg-light navbar-expand-lg">
      <div class="container-fluid">
          <a class="navbar-brand" href="<%=request.getContextPath() %>/">
               <img src="https://getbootstrap.com/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
               	홈페이지
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
             data-bs-target="#navbarNav">
               <span class="navbar-toggler-icon"></span>
          </button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav me-auto">
                	<li>
                		<c:if test="${user.usertype == 1 }">
                			<a class="nav-link <%=thisPage.equals("staff") ? "active" : "" %>" href="${pageContext.request.contextPath}/staff/home.do">관리자 페이지</a>
                		</c:if>
                	</li>
               	</ul>
               	<c:choose>
					<c:when test="${ empty id}">
				 		<a class="btn btn-outline-primary btn-sm me-2" href="${pageContext.request.contextPath}/users/signup_form.do">회원가입</a>
                  		<a class="btn btn-outline-success btn-sm me-2" href="${pageContext.request.contextPath}/users/loginform.do">로그인</a>
					</c:when>
				 	<c:otherwise>
					  	<span class="navbar-text me-2">
	                    	<a href="${pageContext.request.contextPath}/users/private/info.do">${id }</a> 로그인중...
		                </span>
		                <a class="btn btn-outline-danger btn-sm me-2" href="${pageContext.request.contextPath}/users/logout.do">로그아웃</a>
				 	</c:otherwise>
				</c:choose>
          </div>
      </div>
   </nav>




