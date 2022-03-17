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
		    <jsp:include page="../../../resources/include/sidebar.jsp"></jsp:include>
	    </div>
	    <!-- 9단길이의 첫번째 열 -->
	    <div class="col-md-9">
		    <div class="container">
				<section id="content">
					<ul class="orderList">
						<c:forEach items="${list}" var="tmp">
						  	<li>
							  	<div>
								   	<p><span>주문번호</span><a href="/staff/orderView?orderId=${tmp.orderId}">${tmp.orderId}</a></p>
								   	<p><span>주소</span>(${tmp.userPostal}) ${tmp.userAddr} ${tmp.userAddrDetail}</p>
								   	<p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /> 원</p>
							  	</div>
						  	</li>
					  	</c:forEach>
					</ul>
				</section>
			</div>
	    </div>
	</div>
</div>



</body>
</html>