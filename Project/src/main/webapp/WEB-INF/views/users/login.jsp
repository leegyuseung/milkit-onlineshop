<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>

</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
	<c:choose>
		<c:when test="${not empty sessionScope.id }">
		<script>
		alert("로그인 되었습니다.");
		location.href="${pageContext.request.contextPath}/home.do";	
		</script>
		</c:when>
		<c:otherwise>
		<script>
		alert("아이디 혹은 비밀번호가 틀려요.");
		location.href="${pageContext.request.contextPath}/users/loginform.do";	
		</script>
		</c:otherwise>
	</c:choose>
</div>	
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>





