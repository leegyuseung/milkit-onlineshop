<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/mealkit/detail.jsp</title>
<style>
	.card{
		height: 250px;
		width: 250px;
	}
	.card-img-top{
		height: 250px;
		width: 250px;
	}
</style>
<%-- bootstrap --%>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>
<div class="container">
   <nav>
      <ul class="breadcrumb">
         <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath }/">Home</a>
         </li>
         <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath }/mealkit/mealkit_home.do">목록</a>
         </li>
         <li class="breadcrumb-item active">상세보기</li>
      </ul>
   </nav>
   
   <div class="card mb-3">
      <img class="card-img-top" src="${pageContext.request.contextPath}${dto.imagePath}"/>
      <div class="card-body">
         <p class="card-text">상품 카테고리 : ${dto.productCate}</p>
         <p class="card-text">상품명 : <strong>${dto.productName}</strong></p>
         <p>상품 가격 : <strong>${dto.price}</strong></p>
         <form action="${pageContext.request.contextPath }/cart/insert.do" method="post">
         	<div>
         		<label for="amount">수량</label>
         		<input type="number" name="amount"  />
         	</div>
         		<input type="hidden" name="productId" value="${dto.productId}">
         		<input type="hidden" name="price" value="${dto.price}">
         		<input type="hidden" name="imagePath" value="${dto.imagePath}">
         		
         	<button type="submit" class="btn btn-primary">장바구니 담기</button>
         </form>
      </div>
      <a href="private/insertform.do?productId=${param.productId}">상세 내용 작성</a>
      <p class="card-text">${dto2.content }</p>
      <a href="private/updateform.do?productId=${param.productId}">상세 내용 수정</a>
   </div>
   
   
</div>
</body>
</html>