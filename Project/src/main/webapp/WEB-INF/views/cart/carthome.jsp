<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cart/cartlist.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<!-- 
	<jsp:include page="../../../resources/include/cartresource.jsp"></jsp:include>
 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<!-- 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carthome.css" />
 -->
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="cart" name="thisPage"/>
</jsp:include>

<h1>장바구니 목록입니다.</h1>
   <a href="../home.do">홈페이지로 돌아가기</a>
   <table class="table">
      <thead>
        <tr>
          <th scope="col">번호</th>
          <th scope="col">상품 사진</th>
          <th scope="col">상품명</th>
          <th scope="col">수량</th>
          <th scope="col">가격</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach var="tmp" items="${list }" varStatus="status">
         <tr>
            <td>${status.index }</td>
            <td><img src="${pageContext.request.contextPath }${tmp.imagePath}" /></td>
            <td>${tmp.productId }</td>
            <td>${tmp.amount }</td>
            <td>${tmp.price }</td>
         </tr>
      </c:forEach>
      </tbody>
   </table>
</div>

</body>

</html>