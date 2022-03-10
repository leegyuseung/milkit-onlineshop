<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/product/insertForm.jsp</title>
</head>
<body>
<div class="container">
	<h1>상품 추가</h1>
	<form action="insert.do" method="post">
		<div>
			<label for="productId">상품 아이디</label>
			<input type="text" name="productId" id="productId" placeholder="상품 아이디..."/>
		</div>
		<div>
			<label for="productName">상품 이름</label>
			<input type="text" name="productName" id="productName" placeholder="상품 이름..."/>
		</div>
		<div>
			<label for="price">상품 가격</label>
			<input type="text" name="price" id="price" placeholder="가격..."/>
		</div>
		<div>
			<label for="stock">상품 재고</label>
			<input type="text" name="price" id="stock" placeholder="재고..."/>
		</div>
		<div>
			<label for="productCate">카테고리</label>
			<input type="text" name="productCate" id="productCate" placeholder="카테고리..."/>
		</div>
		<button type="submit">상품 추가</button>
	</form>
</div>
</body>
</html>