<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<ul class="list-group">
		<li class="list-group-item"><strong>마이 페이지</strong></li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath }/orderHistory.do">주문 내역</a></li>
	  	<li class="list-group-item"><a href="#">고객 센터</a></li>
	  	<li class="list-group-item"><a href="${pageContext.request.contextPath }/inquiry/list.do">Q & A</a></li>
	</ul>
</div>
</body>
</html>