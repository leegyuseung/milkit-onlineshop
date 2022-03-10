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
		<input type="hidden" name="productId" value="${param.productId }"/>
		<div class="mb-3">
			<label for="productId" class="form-label">상품 아이디</label>
			<input class="form-controll" type="text" name="productId" id="productId" value="${param.productId }" disabled/>
		</div>
		<div class="mb-3">
			<label for="productName" class="form-label">상품 이름</label>
			<input class="form-controll" type="text" name="productName" id="productName" value="${dto.productName }"/>
		</div>
		<div class="mb-3">
			<label for="price" class="form-label">상품 가격</label>
			<input class="form-controll" type="text" name="price" id="price" value="${dto.price }"/>
		</div>
		<div class="mb-3">
			<label for="stock" class="form-label">상품 재고</label>
			<input class="form-controll" type="text" name="price" id="stock" value="${dto.stock }"/>
		</div>
		<div class="mb-3">
			<label for="productCate" class="form-label">카테고리</label>
			<select class="form-select" name="productCate" id="productCate" disabled>
				<option value="${dto.productCate }" selected>${dto.productCate }</option>			
			</select>
		</div>
		<button class="btn btn-primary" type="submit">상품 수정</button>
		<button class="btn btn-primary" type="reset">취소</button>
		
	</form>
</div>
</body>
</html>