<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/adminOrderList.jsp</title>
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
    
	<jsp:include page="../../../resources/include/sidebar.jsp"></jsp:include>
	
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<section id="content">
					
					<ul class="orderList">
						<h1>전체 주문 현황</h1>
						<table class="table">
							<thead>
								<tr>
						          <th scope="col">주문번호</th>
						          <th scope="col">주소</th>
						          <th scope="col">총 금액</th>
						          <th scope="col">배송 상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="tmp">
									<tr>
										<td><a href="adminOrderDetail.do?orderId=${tmp.orderId}">${tmp.orderId}</a></td>
										<td>(${tmp.userPostal}) ${tmp.userAddr} ${tmp.userAddrDetail}</td>
										<td><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /> 원</td>
										<td>${tmp.delivery}</td>
									</tr>
								  	
							  	</c:forEach>
					  		</tbody>
					  	</table>
					</ul>
				</section>   
    </main>
  </div>
</div>

<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>

</body>
</html>