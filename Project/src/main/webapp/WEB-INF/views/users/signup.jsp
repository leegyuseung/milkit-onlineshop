<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<body>
<div class="container">

	<p> 
		<strong>${param.id }</strong> 회원님 가입 되었습니다.
		<a href="${pageContext.request.contextPath}/users/loginform.do">로그인 하러가기</a>
	</p>

</div>	
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>

