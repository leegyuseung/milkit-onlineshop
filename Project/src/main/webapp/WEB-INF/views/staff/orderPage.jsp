<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/orderPage.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="cart" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>구매 페이지</h1>	
	<table class="table">
      	<thead>
        	<tr>
          		<th scope="col">번호</th>
          		<th scope="col">상품 사진</th>
          		<th scope="col">상품명</th>
          		<th scope="col">수량</th>
          		<th scope="col">가격</th>
          		<th scope="col">총 가격</th>          		
          		<th scope="col">삭제</th>
        	</tr>
      	</thead>
      	<tbody>
	      		<c:forEach var="tmp" items="${list }" varStatus="status">
		         	<tr>
			            <td>${status.count }</td>
			            <td><img src="${pageContext.request.contextPath }${tmp.imagePath}"/></td>
			            <td>${tmp.productId }</td>
			            <td>${tmp.amount }</td>
			            <td>${tmp.price }</td>
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
	
   	<h2>주문 정보 확인</h2>
   	<form action="orderHistory.do" method="post" enctype="multipart/form-data">
		<div>
			<label for="userId" class="form-label">회원 아이디</label>
			<input class="form-controll" type="text" name="userId" id="userId" value="${user.id }" disabled/>
		</div>
		<div>
			<label for="userName" class="form-label">주문자 이름</label>
			<input class="form-controll" type="text" name="userName" id="userName" value="${user.name }"/>
		</div>
		<div>
			<label for="email" class="form-label">이메일</label>
			<input class="form-controll" type="text" name="email" id="email" value="${user.email }"/>
		</div>
		<div>
			<label for="tel" class="form-label">전화번호</label>
			<input class="form-controll" type="text" name="tel" id="tel" value=""/>
		</div>
		<div>
			<label for="userAddress" class="form-label">주소</label>
			<input class="form-controll" type="text" name="userAddress" id="userAddress" value="${user.address }"/>
		</div>
		<button class="btn btn-primary" type="submit">주문 확정</button>
	</form>
</div>



<div class="orderInfo">
	 <form role="form" method="post" autocomplete="off">
	    
	  <input type="hidden" name="amount" value="${sum}" />
	    
	  <div class="inputArea">
	   <label for="">수령인</label>
	   <input type="text" name="orderRec" id="orderRec" required="required" />
	  </div>
	  
	  <div class="inputArea">
	   <label for="orderPhon">수령인 연락처</label>
	   <input type="text" name="orderPhon" id="orderPhon" required="required" />
	  </div>
	  
	  <div class="inputArea">
	   <label for="userAddr1">우편번호</label>
	   <input type="text" name="userAddr1" id="userAddr1" required="required" />
	  </div>
	  
	  <div class="inputArea">
	   <label for="userAddr2">1차 주소</label>
	   <input type="text" name="userAddr2" id="userAddr2" required="required" />
	  </div>
	  
	  <div class="inputArea">
	   <label for="userAddr3">2차 주소</label>
	   <input type="text" name="userAddr3" id="userAddr3" required="required" />
	  </div>
	  
	  <div class="inputArea">
	   <button type="submit" class="order_btn">주문</button>
	   <button type="button" class="cancel_btn">취소</button> 
	  </div>
  
	 </form> 
</div>



</body>
</html>