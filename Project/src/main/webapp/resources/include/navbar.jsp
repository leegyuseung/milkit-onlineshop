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
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #FFB94F;">
    	<div class="container px-4 px-lg-5">
        	<a class="navbar-brand" href="<%=request.getContextPath() %>/">	
        		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16">
  					<path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
				</svg>
				Daily Mealkit
			</a>
          	<button class="navbar-toggler" data-bs-toggle="collapse" type="button" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
		  		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		  		        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/home.do">Home</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Mealkit</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath }/mealkit/mealkit_home.do">전체</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/mealkit/mealkit_k.do">한식</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/mealkit/mealkit_c.do">중식</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/mealkit/mealkit_j.do">일식</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/mealkit/mealkit_w.do">양식</a></li>
                            </ul>
                        </li>
                    </ul>
            	<ul class="navbar-nav justify-content-end">
               	<c:choose>
					<c:when test="${ empty id}">
				 		<a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/users/signup_form.do">Sign up</a>
                  		<a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/users/loginform.do">Login</a>
					</c:when>
				 	<c:otherwise>
					  	<span class="navbar-text me-2">
	                    	<a href="${pageContext.request.contextPath}/users/private/info.do">${id }</a>
		                </span>
		                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/users/logout.do">Logout</a>
				 	</c:otherwise>
            	</c:choose>
            	         <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="${pageContext.request.contextPath}/users/private/info.do" role="button" data-bs-toggle="dropdown" aria-expanded="false">Mypage</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath }/orderHistory.do">주문내역</a></li>
                                <li><a class="dropdown-item" href="#!">고객센터</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath }/inquiry/list.do">Q & A</a></li>
                                <c:if test="${user.usertype == 1 }">
                				<li><a class="dropdown-item <%=thisPage.equals("staff") ? "active" : "" %>" href="${pageContext.request.contextPath}/staff/home.do">시스템관리</a></li>
                				</c:if>
                            </ul>
                        </li>
                      	<a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath }/cart/carthome.do">
	                      	<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
	  							<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
							</svg>
						</a>			
					</ul>
            	</div>    	
        </div>
    </nav>

