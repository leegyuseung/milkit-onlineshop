<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/product/insertForm.jsp</title>
<jsp:include page="../../../../resources/include/resource.jsp"></jsp:include>
<style> 
	#product{
		display: none;
		}
</style>
</head>
<body>
<jsp:include page="../../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>상품 추가</h1>
	<form action="insert.do" method="post" enctype="multipart/form-data">
		<div id="produc">
			<label for="productId" class="form-label">상품 아이디</label>
			<input class="form-controll" type="text" name="productId" id="productId" placeholder="상품 아이디..."/>
		</div>
		<div>
			<label for="productName" class="form-label">상품 이름</label>
			<input class="form-controll" type="text" name="productName" id="productName" placeholder="상품 이름..."/>
		</div>
		<div>
			<label for="price" class="form-label">상품 가격</label>
			<input class="form-controll" type="text" name="price" id="price" placeholder="가격..."/>
		</div>
		<div>
			<label for="stock" class="form-label">상품 재고</label>
			<input class="form-controll" type="text" name="stock" id="stock" placeholder="재고..."/>
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
		<div>
			<label for="myFile">이미지</label>
			<input type="file" name="myFile" id="myFile" accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
		</div>
		<button class="btn btn-primary" type="submit">상품 추가</button>
	</form>
</div>
</body>
</html>