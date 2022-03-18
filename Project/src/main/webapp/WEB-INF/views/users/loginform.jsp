<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>

</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>로그인</h1>
	<form action="${pageContext.request.contextPath}/users/login.do" method="post">
		<c:choose>
			<c:when test="${ empty param.url }">
				<input type="hidden" name="url" value="${pageContext.request.contextPath}/"/>
			</c:when>
			<c:otherwise>
				<input type="hidden" name="url" value="${param.url }"/>
			</c:otherwise>
		</c:choose>
		<div>
			<label class="control-label" for="id">아이디</label>
			<input class="form-control" type="text" name="id" id="id"/>
		</div>
		<div>
			<label class="control-label" for="pwd">비밀번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd"/>
		</div>
		<br />
		<figure class="text-end">
		<button class="btn btn-outline-secondary" type="submit">로그인</button>
		<button class="btn btn-outline-secondary" type="reset" id="reset">취소</button>
		</figure>
	</form>
</div>
<script>
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath}/home.do";	
	});
</script>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>