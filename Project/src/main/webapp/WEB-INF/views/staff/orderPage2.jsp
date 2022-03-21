<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/adminOrderDetail.jsp</title>

</head>
<body>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
    
<header class="sticky-top ">
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="userlist" name="thisPage"/>
</jsp:include>
</header>

<div class="container-fluid">
  <div class="row">
    
	<jsp:include page="../../../resources/include/userSidebar.jsp"></jsp:include>
	
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				 <div class="container">
				<h1>주문 내역 디테일</h1>
				<table class="table ">
					<thead>
				   		<tr>
				   			<th>수령인</th>
				   			<th>주소</th>
				   			<th>종합 가격</th>
				   			<th>배송 상태</th>
				   		</tr>
				  	</thead>
				  	<tbody>
				  		<c:forEach items="${list}" var="tmp" varStatus="status">
							<tr>
							   	<c:if test="${status.first}">
								    <td>${tmp.userId}</td>
								    <td>(${tmp.userPostal}) ${tmp.userAddr} ${tmp.userAddrDetail}</td>
								    <td><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /> 원</td>
								    <td>${tmp.delivery}</td>
							   	</c:if>
					   		</tr>
					  	</c:forEach>
				  	
					    <tr>
						    <td colspan="4">
						    	<table class="table">
						    		<caption class="text-end">
						    			<form action="delivered.do" method="post">
						    				<input type="hidden" name="orderId" value="${param.orderId }"/>
						    				<input type="hidden" name="delivery" value="배송 완료"/>
						    				<button class="btn btn-outline-secondary" id="delivery">배송 완료</button>
						    			</form>
						    		</caption>
						    		<thead>
						    			<tr>
						    				<th>이미지</th>
						    				<th>상품명</th>
						    				<th>개당 가격</th>
						    				<th>구입 수량</th>
						    				<th>최종 가격</th>
						    			</tr>
						    		</thead>
						    		<tbody>
						    			<c:forEach items="${list}" var="tmp">     
											<tr>
											   	<td><img src="${pageContext.request.contextPath }${tmp.imagePath}" /></td>
											   	<td>${tmp.productName}</td>
												<td><fmt:formatNumber pattern="###,###,###" value="${tmp.price}" /> 원</td>
												<td>${tmp.amount_detail} </td>
												<td>
													<fmt:formatNumber pattern="###,###,###" value="${tmp.price * tmp.amount_detail}" /> 원
												</td>
								            </tr>     
									  	</c:forEach>
						    		</tbody>
						        </table>
						    </td>
					    </tr>
					</tbody>
				</table>
			</div>
    </main>
  </div>
</div>

<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<script>
	document.querySelector("#delivery").addEventListener("click",function(){
		alert("주문의 배송이 완료되었습니다.");
	});
</script>
</body>
</html>