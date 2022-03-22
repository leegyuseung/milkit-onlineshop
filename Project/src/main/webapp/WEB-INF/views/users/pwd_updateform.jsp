<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/pwd_updateform.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/resources/css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
	<main class="form-signin">
	<form action="${pageContext.request.contextPath}/users/private/pwd_update.do" method="post" id="myForm">
	<h1 class="h3 mb-3 fw-normal m" style="color: white;"><strong>	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16">
  	<path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
	</svg> Daily Mealkit</strong></h1>
	<br />
		<div class="form-floating">
			<label class="control-label" for="pwd">기존 비밀 번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd"/>
		</div>
		<br />
		<div class="form-floating">
			<label class="control-label" for="newPwd">새 비밀번호</label>
			<input class="form-control" type="password" name="newPwd" id="newPwd"/>
		</div>
		<br />
		<div class="form-floating"v>
			<label class="control-label" for="newPwd2">새 비밀번호 확인</label>
			<input class="form-control" type="password" id="newPwd2"/>
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
	//폼에 submit 이벤트가 일어났을때 실행할 함수를 등록하고 
	document.querySelector("#myForm").addEventListener("submit", function(e){
		let pwd1=document.querySelector("#newPwd").value;
		let pwd2=document.querySelector("#newPwd2").value;
		//새 비밀번호와 비밀번호 확인이 일치하지 않으면 폼 전송을 막는다.
		if(pwd1 != pwd2){
			alert("비밀번호를 확인 하세요!");
			e.preventDefault();//폼 전송 막기 
		}
	});
	
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath}/users/private/info.do";	
	});
</script>
<br />
</body>
</html>


