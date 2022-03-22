<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/updateform.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/resources/css/signin.css" rel="stylesheet">
</head>
<body>
	<main class="form-signup">
	<form action="${pageContext.request.contextPath}/users/private/update.do" method="post">
			<h1 class="h3 mb-3 fw-normal m" style="color: white;"><strong>	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16">
  	<path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
	</svg> Daily Mealkit</strong></h1>
	<br />
		<div>
			<label class="control-label" for="id">아이디</label>
			<input class="form-control" type="text" id="id" value="${id }" disabled/>
		</div>
		<br />
		<div >
			<label class="control-label" for="name">이름</label>
			<input class="form-control" type="text" id="name" value="${dto.name }"/>
		</div>
		<br />
		<div >
			<label class="control-label" for="email">이메일</label>
			<input class="form-control" type="text" name="email" id="email" value="${dto.email }"/>
		</div>
		<br />
		<div >
			<label class="control-label" for="address">주소</label>
			<input class="form-control" type="text" name="address" id="address" value="${dto.address }"/>
		</div>
		<br />
		<figure class="text-end">
		<button class="w-100 btn btn-lg btn-outline-light" type="submit">수정</button>
		<br />
		<br />
		<button class="w-100 btn btn-lg btn-outline-light" type="reset" id="reset">취소</button>
		</figure>
	</form>
	</main>
	<script>
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath}/users/private/info.do";	
	});
	</script>
</body>
</html>










