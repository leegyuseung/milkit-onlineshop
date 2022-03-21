<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/product/list.jsp</title>
<jsp:include page="../../../../resources/include/resource.jsp"></jsp:include>
<style>
	h1 {text-align: center; font-weight: bold; padding-top: 1em; padding-bottom: 1em;}
	
	#center{
	text-align: center;
	}
</style>
</head>
<body>
<jsp:include page="../../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>상품 리스트</h1>
	<div class="table-responsive">
		<table class="table table-striped table-sm">
			<thead>
				<tr>
					<th id="center">상품 ID</th>
					<th id="center">상품 이름</th>
					<th id="center">상품 가격</th>
					<th id="center">남은 수량</th>
					<th id="center">카테고리</th>
					<th id="center">추가 날짜</th>
					<th id="center">수정 날짜</th>
					<th id="center">구매 횟수</th>
					<th id="center">수정</th>
					<th id="center">삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tmp" items="${list }">
					<tr>
						<td id="center">${tmp.productId }</td>
						<td id="center">${tmp.productName }</td>
						<td id="center">${tmp.price }</td>
						<td id="center">${tmp.stock }</td>
						<td id="center">${tmp.productCate }</td>
						<td id="center">${tmp.regDate }</td>
						<td id="center">${tmp.updateDate }</td>
						<td id="center">${tmp.buyCount }</td>
						<td id="center"><a href="updateForm.do?productId=${tmp.productId }">수정</a></td>
						<td id="center"><a href="delete.do?productId=${tmp.productId }">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br />
	<figure class="text-end">
	<button class="btn btn-outline-secondary" type="reset" id="home">관리자 페이지</button>	
	<button class="btn btn-outline-secondary" type="reset" id="insert">상품 추가</button>
	</figure>
</div>
<script>
	document.querySelector("#home").addEventListener("click",function(){
		location.href="../home.do";	
	});
	document.querySelector("#insert").addEventListener("click",function(){
		location.href="insertForm.do";	
	});
</script>	
</body>
</html>