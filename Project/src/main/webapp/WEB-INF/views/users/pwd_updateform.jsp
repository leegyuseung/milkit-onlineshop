<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/pwd_updateform.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>

</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>비밀번호 수정 </h1>
	<form action="${pageContext.request.contextPath}/users/private/pwd_update.do" method="post" id="myForm">
		<div>
			<label class="control-label" for="pwd">기존 비밀 번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd"/>
		</div>
		<br />
		<div>
			<label class="control-label" for="newPwd">새 비밀번호</label>
			<input class="form-control" type="password" name="newPwd" id="newPwd"/>
		</div>
		<br />
		<div>
			<label class="control-label" for="newPwd2">새 비밀번호 확인</label>
			<input class="form-control" type="password" id="newPwd2"/>
		</div>
		<br />
		<button class="btn btn-outline-secondary" type="submit">수정</button>
		<button class="btn btn-outline-secondary" type="reset" id="reset">취소</button>
	</form>
</div>
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
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>


