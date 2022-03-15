<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cart/cartlist.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<!-- 
	<jsp:include page="../../../resources/include/cartresource.jsp"></jsp:include>
 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<!-- 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carthome.css" />
 -->
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="cart" name="thisPage"/>
</jsp:include>
<div class="container">
	<a href="../home.do">홈페이지로 돌아가기</a>
	<h1>장바구니 목록입니다.</h1>
   	<table class="table">
    	<thead>
	        <tr>
	          <th>Cart Id</th>
	          <th>ID</th>
	          <th>Product Id</th>
	          <th>Price</th>
	          <th>Amount</th>
	        </tr>
      	</thead>
		<tbody>
      		<c:forEach var="tmp" items="${list }">
	        	<tr>
		            <td>${tmp.cart_id }</td>
		            <td>${tmp.id }</td>
		            <td>${tmp.productId }</td>
		            <td>${tmp.price }</td>
		            <td>${tmp.amount }</td>
	         	</tr>
      		</c:forEach>
		</tbody>
	</table>
</div>

</body>

</html>