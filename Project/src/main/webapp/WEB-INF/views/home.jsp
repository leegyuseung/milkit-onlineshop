<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/home.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
</head>
<body>
<div class="container">
	
	<c:choose>
		<c:when test="${ empty sessionScope.id}">
			<a href="${pageContext.request.contextPath}/users/loginform.do">로그인</a>
			<a href="${pageContext.request.contextPath}/users/signup_form.do">회원가입</a>
		</c:when>
		<c:otherwise>
		
			<p>
				<a href="${pageContext.request.contextPath}/users/private/info.do">${sessionScope.id }</a> 로그인중... 
				<a href="${pageContext.request.contextPath}/users/logout.do">로그아웃</a>
			</p>
		</c:otherwise>
	</c:choose>
	<h1>밀키트 홈페이지</h1>
	<ul>
		<li><a href="${pageContext.request.contextPath}/users/private/info.do">마이페이지</a></li>
			<ul>
				<li>주문내역</li>
				<li>고객센터</li>
				<li><a href="${pageContext.request.contextPath }/cart/cartlist.do">장바구니</li>
				<li><a href="${pageContext.request.contextPath }/inquiry/list.do">Q&A</a></li>	
			</ul>
		<li><a href="mealkit/mealkit_home.do">밀키트 상품</a>
			<ul>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_new.do">New</a></li>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_best.do">Best</a></li>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_k.do">한식</a></li>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_c.do">중식</a></li>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_j.do">일식</a></li>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_w.do">양식</a></li>			
			</ul>
		</li>	
	</ul>	
			<li><a href="${pageContext.request.contextPath}/staff/home.do">관리자페이지</a></li>	
	
</div>
</body>
</html>








