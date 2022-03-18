<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/updateform.jsp</title>

</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>가입 정보 수정 폼 입니다.</h1>
	
	<form action="${pageContext.request.contextPath}/users/private/update.do" method="post">
		
		<div>
			<label for="id">아이디</label>
			<input type="text" id="id" value="${id }" disabled/>
		</div>
		<div>
			<label for="name">이름</label>
			<input type="text" id="name" value="${dto.name }"/>
		</div>
		<div>
			<label for="email">이메일</label>
			<input type="text" name="email" id="email" value="${dto.email }"/>
		</div>
		<div>
			<label for="address">주소</label>
			<input type="text" name="address" id="address" value="${dto.address }"/>
		</div>
		<button type="submit">수정반영</button>
	</form>
	
</div>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>










