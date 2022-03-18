<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>

<html>
<head>
<meta charset="UTF-8">
<title>/views/users/pwd_update.jsp</title>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
	<c:choose>
		<c:when test="${isSuccess }">
		<script>
		alert("비밀번호를 수정하고 로그 아웃되었습니다.");
		location.href="${pageContext.request.contextPath}/users/loginform.do";
		</script>	
		</c:when>
		<c:otherwise>
		<script>
		alert("이전 비밀번호가 일치하지 않습니다.");
		location.href="${pageContext.request.contextPath}/users/private/pwd_updateform.do";
		</script>	
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>





