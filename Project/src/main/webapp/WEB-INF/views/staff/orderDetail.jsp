<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/orderDetail.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="orderDetail" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>주문 내역 디테일</h1>
	<section id="content">
	
		<div class="orderInfo">
		  	<c:forEach items="${list}" var="tmp" varStatus="status">
		   
			   	<c:if test="${status.first}">
				    <p><span>수령인</span>${tmp.userId}</p>
				    <p><span>주소</span>(${tmp.userPostal}) ${tmp.userAddr} ${tmp.userAddrDetail}</p>
				    <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /> 원</p>
			   	</c:if>
		   
		  	</c:forEach>
	 	</div>
	 
	 	<ul class="orderView">
		  	<c:forEach items="${list}" var="tmp">     
				<li>
				   	<div class="thumb">
				    	<img src="${tmp.imagePath}" />
				   	</div>
				   	<div class="gdsInfo">
					    <p>
						    <span>상품명</span>${tmp.productName}<br />
						    <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${tmp.price}" /> 원<br />
						    <span>구입 수량</span>${tmp.amount_deatil} 개<br />
						    <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${tmp.price * tmp.amount_deatil}" /> 원                  
					    </p>
				   	</div>
			  	</li>     
		  	</c:forEach>
	 	</ul>
	</section>
</div>
</body>
</html>