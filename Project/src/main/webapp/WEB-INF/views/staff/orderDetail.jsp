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
<div class="container-fluid mt-3">
	<div class="row">
	    <!-- 3단길이의 첫번째 열 -->
	    <div class="container col-md-3">
		    <jsp:include page="../../../resources/include/userSidebar.jsp"></jsp:include>
	    </div>
	    <!-- 9단길이의 첫번째 열 -->
	    <div class="col-md-9">
			<div class="container">
				<h1>주문 내역 디테일</h1>
				<table class="table ">
					<thead>
				   		<tr>
				   			<th>수령인</th>
				   			<th>주소</th>
				   			<th>종합 가격</th>
				   		</tr>
				  	</thead>
				  	<tbody>
				  		<c:forEach items="${list}" var="tmp" varStatus="status">
							<tr>
							   	<c:if test="${status.first}">
								    <td>${tmp.userId}</td>
								    <td>(${tmp.userPostal}) ${tmp.userAddr} ${tmp.userAddrDetail}</td>
								    <td><fmt:formatNumber pattern="###,###,###" value="${tmp.totalPrice}" /> 원</td>
							   	</c:if>
					   		</tr>
					  	</c:forEach>
				  	
					    <tr>
						    <td colspan="4">
						    	<table class="table">
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
												<td><fmt:formatNumber pattern="###,###,###" value="${tmp.price}" /></td>
												<td>${tmp.amount_detail} </td>
												<td>
													<fmt:formatNumber pattern="###,###,###" value="${tmp.price * tmp.amount_detail}" />
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
	    </div>
	</div>
</div>

<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>

</body>
</html>