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
<!-- 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carthome.css" />
 -->
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="cart" name="thisPage"/>
</jsp:include>

<div class="container">
<h1>장바구니 목록입니다.</h1>
   <a href="${pageContext.request.contextPath }/home.do">홈페이지로 돌아가기</a>
   <table class="table">
      <thead>
        <tr>
          <th scope="col">번호</th>
          <th scope="col">상품 사진</th>
          <th scope="col">상품명</th>
          <th scope="col">수량</th>
          <th scope="col">가격</th>
          <th scope="col">수정</th>
          <th scope="col">총 금액</th>          
          <th scope="col">삭제</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach var="tmp" items="${list }" varStatus="status">
         <tr>
            <td>${status.count }</td>
            <td><img src="${pageContext.request.contextPath }${tmp.imagePath}"/></td>
            <td>${tmp.productId }</td>
            <form action="update.do" method="post">
            	<td><input type="number" name="amount" value="${tmp.amount }" /></td>
           
            	<td>${tmp.price }</td>
			
           		<td><a href="update.do?cart_id=${tmp.cart_id }" type="submit">수정</a></td>
             </form>
            <td>${tmp.totalPrice }</td>
            <td>
            	<a href="delete.do?cart_id=${tmp.cart_id }">
	            	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
						<path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
						<path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
					</svg>
				</a>
            </td>
         </tr>
      </c:forEach>
      </tbody>
   </table>
	<form action="../staff/orderPage.do">    
   		<button class="btn btn-primary">구매하기</button>
   	</form>
 </div>
<script>
	
</script>


</body>

</html>