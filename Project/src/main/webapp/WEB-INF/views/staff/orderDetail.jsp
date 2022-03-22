<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/orderDetail.jsp</title>
<style>
	h1 {text-align: center; padding-top: 1em; padding-bottom: 1em;}
	
	#center{
	text-align: center;
	}
</style>
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
				<h1>주문 내역 디테일</h1>
				<table class="table table-striped table-sm ">
					<input type="hidden" name="orderId" value="${param.orderId }"/>
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
								    <td>${tmp.receiver}</td>
								    <td>(${tmp.userPostal}) ${tmp.userAddr} ${tmp.userAddrDetail}</td>
								    <td><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /> 원</td>
								    <td>${tmp.delivery}</td>
							   	</c:if>
					   		</tr>
					  	</c:forEach>
				  	
					    <tr>
						    <td colspan="4">
						    	<table class="table table-sm">
						    		<caption class="text-end">
						    				<c:forEach items="${list}" var="tmp" varStatus="status">
								    				<c:choose>
													    <c:when test="${tmp.delivery eq '배송 준비중'}">
													    	<button class="btn btn-outline-secondary">주문 취소</button>
													    </c:when>
													    <c:when test="${tmp.delivery eq '주문 취소'}">
													    	<button class="btn btn-outline-secondary" disabled>취소 완료</button>
													    </c:when>
													    <c:when test="${tmp.delivery eq '주문 반품'}">
													    	<button class="btn btn-outline-secondary" disabled>반품 완료</button>
													    </c:when>
													    <c:otherwise>
													    	<button class="btn btn-outline-secondary">반품 하기</button>
													    </c:otherwise>
													</c:choose>
						    				</c:forEach>
						    		</caption>
						    		<thead>
						    			<tr>
						    				<th>번호</th>
						    				<th>상품명</th>
						    				<th></th>
						    				<th>개당 가격</th>
						    				<th>구입 수량</th>
						    				<th>최종 가격</th>
						    			</tr>
						    		</thead>
						    		<tbody>
						    			<c:forEach items="${list}" var="tmp" varStatus="status">     
											<tr>
												<td>${status.count }</td>
											   	<td>${tmp.productName}</td>
											   	<td><img src="${pageContext.request.contextPath }${tmp.imagePath}" style="width:50px; height: 50px;"/></td>											   	
												<td><fmt:formatNumber pattern="###,###,###" value="${tmp.price}" /> 원</td>
												<td>${tmp.amount_detail} </td>
												<td><fmt:formatNumber pattern="###,###,###" value="${tmp.price * tmp.amount_detail}" /> 원</td>
								            </tr>     
									  	</c:forEach>
									 	
						    		</tbody>
						        </table>
						    </td>
					    </tr>
					</tbody>
				</table>
    </main>
  </div>
</div>

<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>

</body>
</html>