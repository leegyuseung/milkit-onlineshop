<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/orderHistory.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="orderHistory" name="thisPage"/>
</jsp:include>

<div class="container-fluid mt-3">
	<div class="row">
	    <!-- 3단길이의 첫번째 열 -->
	    <div class="container col-md-3">
		    <jsp:include page="../../../resources/include/userSidebar.jsp"></jsp:include>
	    </div>
	    <!-- 9단길이의 첫번째 열 -->
	    <div class="col-md-9">
		    <div class="container">
		    	
				<section id="content">
					
					<ul class="orderList">
						<h1>주문내역</h1>
						<table class="table">
							<thead>
								<tr>
						          <th scope="col">주문번호</th>
						       	  <th scope="col">수령인</th>						        
						          <th scope="col">주소</th>
						          <th scope="col">총 금액</th>
						          <th scope="col">배송 상태</th>						          
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="tmp">
									<tr>
										<td><a href="orderDetail.do?orderId=${tmp.orderId}">${tmp.orderId}</a></td>
										<td>${tmp.receiver}</td>
										<td>(${tmp.userPostal}) ${tmp.userAddr} ${tmp.userAddrDetail}</td>
										<td><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /> 원</td>
										<td>${tmp.delivery}</td>
									</tr>
								  	
							  	</c:forEach>
					  		</tbody>
					  	</table>
					</ul>
				</section>
			</div>
	    </div>
	</div>
</div>

<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>

</body>
</html>