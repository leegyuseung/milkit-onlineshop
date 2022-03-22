<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>

<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/resources/css/signin.css" rel="stylesheet">
</head>
<!-- 로그인폼 -->
<style>
.form-signin .form-floating:focus-within {
  z-index: 2;
}
</style>
<body class="text-center">
	<main class="form-signin">
	<form action="${pageContext.request.contextPath}/users/login.do" method="post">
	<h1 class="h3 mb-3 fw-normal m" style="color: white;"><strong>	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16">
  	<path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
	</svg> Daily Mealkit</strong></h1>
		<c:choose>
			<c:when test="${ empty param.url }">
				<input type="hidden" name="url" value="${pageContext.request.contextPath}/"/>
			</c:when>
			<c:otherwise>
				<input type="hidden" name="url" value="${param.url }"/>
			</c:otherwise>
		</c:choose>
		<br />
		<div class="form-floating">
			<label for="id" style="color: black;">ID</label>
			<input class="form-control" type="text" name="id" id="id" style="color: black;"/>
		</div>
		<br />
		<div class="form-floating">
			<label for="pwd" style="color: black;">PW</label>
			<input class="form-control" type="password" name="pwd" id="pwd" style="color: black;"/>
		</div>
		<br />
		<button class="w-100 btn btn-lg btn-outline-light" type="submit" >Login</button>
		<br />
		<br />
		<button class="w-100 btn btn-lg btn-outline-light" type="reset" id="reset" >Cancel</button>

	</form>
	</main>
</body>
<script>
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath}/home.do";	
	});
</script>
</html>