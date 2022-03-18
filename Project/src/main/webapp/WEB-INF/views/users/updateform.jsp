<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/updateform.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>회원 정보 수정</h1>
	
	<form action="${pageContext.request.contextPath}/users/private/update.do" method="post">
		
		<div>
			<label class="control-label" for="id">아이디</label>
			<input class="form-control" type="text" id="id" value="${id }" disabled/>
		</div>
		<br />
		<div>
			<label class="control-label" for="name">이름</label>
			<input class="form-control" type="text" id="name" value="${dto.name }"/>
		</div>
		<br />
		<div>
			<label class="control-label" for="email">이메일</label>
			<input class="form-control" type="text" name="email" id="email" value="${dto.email }"/>
		</div>
		<br />
		<div>
			<label class="control-label" for="address">주소</label>
			<input class="form-control" type="text" name="address" id="address" value="${dto.address }"/>
		</div>
		<br />
		<button class="btn btn-outline-secondary" type="submit">수정</button>
		<button class="btn btn-outline-secondary" type="reset" id="reset">취소</button>
	</form>
	
	<script>
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath}/users/private/info.do";	
	});
	</script>
</div>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>










