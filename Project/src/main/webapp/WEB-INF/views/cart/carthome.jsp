<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cart/cartlist.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<style>
h1 {
	text-align: center;
	font-weight: bold;
	padding-top: 1em;
	padding-bottom: 1em;
}

#center {
	text-align: center;
}



</style>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="cart" name="thisPage"/>
</jsp:include>

<div class="container">
<h1>장바구니</h1>
   <table class="table">
      <thead>
        <tr>
          <th scope="col" id="center">번호</th>
          <th scope="col" id="center">상품 사진</th>
          <th scope="col" id="center">상품명</th>
          <th scope="col" id="center">수량</th>
          <th scope="col" id="center">수정</th>
          <th scope="col" id="center">가격</th>
          <th scope="col" id="center">총 금액</th>          
          <th scope="col" id="center">삭제</th>
        </tr>
      </thead>
      <tbody>
      <c:set var="sum" value="0" />
      <c:forEach var="tmp" items="${list }" varStatus="status">
         <tr>
            <td id="center">${status.count }</td>
            <td id="center"><img src="${pageContext.request.contextPath }${tmp.imagePath}" style="width:50px; height: 50px;" /></td>
            <td id="center">${tmp.productId }</td>
            <form action="update.do" method="post" id="updateForm">
            	<td><input type="number" min="1" max="10"name="newAmount" value="${tmp.amount }" id="newAmount" style="max-width: 2rem"/>
           			<input type="hidden" name="cart_id" value="${tmp.cart_id }"/>
           			<input type="hidden" name="price" value="${tmp.price}"/>
           		</td>
           		<td id="center"><button class="btn btn-outline-secondary" type="submit">수정</button></td>	            	

             </form>
            <td id="center"><fmt:formatNumber pattern="###,###,###" value="${tmp.price}" /></td>
            <td id="center"><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /></td>
            <td id="center">
            	<a href="delete.do?cart_id=${tmp.cart_id }">
	            	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
						<path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
						<path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
					</svg>
				</a>
            </td>
         </tr>
         <c:set var="sum" value="${sum + (tmp.totalPrice)}" />			
         
      </c:forEach>
      </tbody>
   </table>
   <figure class="text-end">
   	총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" />원
	

	<form action="../staff/orderPage.do">    
		<br />
   		<button class="btn btn-outline-secondary">구매하기</button>
   	</form>
   	</figure>
 </div>
<script>
	
</script>

<br />
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>

</html>