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
            	<img src="https://getbootstrap.com/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="30" height="30" class="d-inline-block align-text-top">
               	홈페이지
        	</a>
          	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            	<span class="navbar-toggler-icon"></span>
          	</button>
		  		<div class="collapse navbar-collapse" id="navbarNav">
				<div class="nav-item dropdown">
					<a class="btn btn-secondary dropdown-toggle" href="${pageContext.request.contextPath }/mealkit/mealkit_home.do" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown">
						밀키트 상품
					</a>
					<ul class="dropdown-menu">
					
						<li><a class="dropdown-item" href="${pageContext.request.contextPath }/mealkit/mealkit_home.do">전체</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/mealkit/mealkit_k.do">한식</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/mealkit/mealkit_c.do">중식</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/mealkit/mealkit_j.do">일식</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/mealkit/mealkit_w.do">양식</a></li>
					</ul>
				</div>
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
				<form class="d-flex me-2">
        			<input class="form-control me-2" type="search" placeholder="Search">
        			<button class="btn btn-outline-success" type="submit">Search</button>
      	  		</form>
      	  		
				<a class="navbar-brand" href="${pageContext.request.contextPath }/cart/private/carthome.do">
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
  						<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
					</svg>
			    </a>
          </div>
      </div>
   </nav>




