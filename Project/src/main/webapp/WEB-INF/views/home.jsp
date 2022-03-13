<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/home.jsp</title>
<jsp:include page="../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
	
	<h1>밀키트 홈페이지</h1>
	<ul>
		<li><a href="${pageContext.request.contextPath}/users/private/info.do">마이페이지</a></li>
			<ul>
				<li>주문내역</li>
				<li>고객센터</li>
				<li><a href="${pageContext.request.contextPath }/cart/cartlist.do">장바구니</li>
				<li><a href="${pageContext.request.contextPath }/inquiry/list.do">Q&A</a></li>	
			</ul>
		<li><a href="${pageContext.request.contextPath }/mealkit/mealkit_home.do">밀키트 상품</a>
			<ul>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_k.do">한식</a></li>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_c.do">중식</a></li>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_j.do">일식</a></li>
				<li><a href="${pageContext.request.contextPath}/mealkit/mealkit_w.do">양식</a></li>			
			</ul>
		</li>	
	</ul>	
	
	
</div>
</body>
</html>








