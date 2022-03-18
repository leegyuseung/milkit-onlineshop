<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/delete.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>

</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
	<script>
		alert("탈퇴 처리 되었습니다.");
		location.href="${pageContext.request.contextPath}/home.do";	
	</script>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>




