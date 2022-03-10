<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/product/list.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<a href="../home.do">관리자 페이지로 돌아가기</a><br />
	<a href="insertForm.do">상품 추가</a>	
	<h1>상품 리스트</h1>
	<table class="table">
		<thead>
			<tr>
				<th>상품 ID</th>
				<th>상품 이름</th>
				<th>상품 가격</th>
				<th>남은 수량</th>
				<th>카테고리</th>
				<th>추가 날짜</th>
				<th>수정 날짜</th>
				<th>구매 횟수</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.productId }</td>
					<td>${tmp.productName }</td>
					<td>${tmp.price }</td>
					<td>${tmp.stock }</td>
					<td>${tmp.productCate }</td>
					<td>${tmp.regDate }</td>
					<td>${tmp.updateDate }</td>
					<td>${tmp.buyCount }</td>
					<td><a href="updateform.do?productId=${tmp.productId }">수정</a></td>
					<td><a href="delete.do?productId=${tmp.productId }">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>