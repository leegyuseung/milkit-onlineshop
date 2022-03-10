<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/product/updateForm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<h1>상품 정보 수정</h1>
	<form action="update.do" method="post">
		<input type="hidden" name="productId" value="${productId }"/>
		<div>
			<label for="productId" class="form-label">상품 아이디</label>
			<input class="form-controll" type="text" name="productId" id="productId" disabled/>
		</div>
		<div>
			<label for="productName" class="form-label">상품 이름</label>
			<input class="form-controll" type="text" name="productName" id="productName" value="${productName }"/>
		</div>
		<div>
			<label for="price" class="form-label">상품 가격</label>
			<input class="form-controll" type="text" name="price" id="price" value="${price }"/>
		</div>
		<div>
			<label for="stock" class="form-label">상품 재고</label>
			<input class="form-controll" type="text" name="price" id="stock" value="${stock }"/>
		</div>
		<div>
			<label for="productCate" class="form-label">카테고리</label>
			<select class="form-select" name="productCate" id="productCate">
				<option selected>음식 카테고리</option>
			  	<option value="Korean">Korean</option>
				<option value="American">American</option>
			 	<option value="Japanese">Japanese</option>
			 	<option value="Chinese">Chinese</option>
			 	<option value="French">French</option>
			 	<option value="Italian">Italian</option>
			</select>
		</div>
		<button class="btn btn-primary" type="submit">상품 추가</button>
	</form>
</div>
</body>
</html>