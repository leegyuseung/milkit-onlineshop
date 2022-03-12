<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/home.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>관리자 페이지</h1>
	<ul>
		<li><a href="currentOrder.do">주문 현황</a></li>
		<li><a href="usersList.do">회원 관리</a></li>
		<li><a href="product/list.do">상품 리스트</a></li>
	</ul>
</div>

</body>
</html>