<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cart/cartlist.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
</head>
<body>
<div>
	<h1>장바구니 목록입니다.</h1>
	<a href="../home.do">홈페이지로 돌아가기</a>
	<table class="table">
		<thead>
		  <tr>
		    <th scope="col">.</th>
		    <th scope="col">상품 사진</th>
		    <th scope="col">상품명</th>
		    <th scope="col">수량</th>
		    <th scope="col">가격</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <th scope="row">1</th>
		    <td>Mark</td>
		    <td>Otto</td>
		    <td>@mdo</td>
		  </tr>
		  <tr>
		    <th scope="row">2</th>
		    <td>Jacob</td>
		    <td>Thornton</td>
		    <td>@fat</td>
		  </tr>
		  <tr>
		    <th scope="row">3</th>
		    <td colspan="2">Larry the Bird</td>
		    <td>@twitter</td>
		  </tr>
		</tbody>
	</table>
</div>
</body>
</html>