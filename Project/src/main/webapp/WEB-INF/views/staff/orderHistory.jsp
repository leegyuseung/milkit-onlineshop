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

		    <div class="container">
		    	
				<section id="content">
					
					<ul class="orderList">
						<h1>주문내역</h1>
						<table class="table">
							<thead>
								<tr>
						          <th scope="col">주문번호</th>
						          <th scope="col">주소</th>
						          <th scope="col">총 금액</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="tmp">
									<tr>
										<td><a href="/staff/orderView?orderId=${tmp.orderId}">${tmp.orderId}</a></td>
										<td>(${tmp.userPostal}) ${tmp.userAddr} ${tmp.userAddrDetail}</td>
										<td><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /> 원</td>
									</tr>
								  	
							  	</c:forEach>
					  		</tbody>
					  	</table>
					</ul>
				</section>
			</div>
	   



</body>
</html>