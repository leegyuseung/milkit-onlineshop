<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/orderComplete.jsp</title>
<jsp:include page="../../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>
<div class="container">
	<a href="home.do">관리자 페이지로 돌아가기</a><br />
	<h1>상품 리스트</h1>
	<table class="table">
		<thead>
			<tr>
				<th>상품 이름</th>
				<th>상품 가격</th>
				<th>주문 수량</th>
				<th>이미지</th>
				<th>유저 아이디</th>
				<th>이름</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>주문 일자</th>
				<th>주문번호</th>
				<th>총 금액</th>
				<th>빌링 데이트</th>
			</tr>
		</thead>
		<tbody>		
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.productName }</td>
					<td>${tmp.price }</td>
					<td>${tmp.quantity }</td>
					<td>${tmp.imagePath }</td>
					<td>${tmp.userId }</td>
					<td>${tmp.UserName }</td>
					<td>${tmp.email }</td>
					<td>${tmp.tel }</td>
					<td>${tmp.userAddress }</td>
					<td>${tmp.orderDate }</td>
					<td>${tmp.orderNumber }</td>
					<td>${tmp.totalPrice }</td>
					<td>${tmp.billingDate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>