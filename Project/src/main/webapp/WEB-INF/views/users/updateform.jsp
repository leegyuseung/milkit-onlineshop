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
<div class="container">
	<h1>가입 정보 수정 폼 입니다.</h1>
	
	<form action="${pageContext.request.contextPath}/users/private/update.do" method="post">
		
		<div>
			<label for="id">아이디</label>
			<input type="text" id="id" value="${id }" disabled/>
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
<script src="${pageContext.request.contextPath}/resources/js/gura_util.js"></script>
<script>
	//프로필 이미지 링크를 클릭하면 
	document.querySelector("#profileLink").addEventListener("click", function(){
		// input type="file" 을 강제 클릭 시킨다. 
		document.querySelector("#image").click();
	});
	//이미지를 선택했을때 실행할 함수 등록 
	document.querySelector("#image").addEventListener("change", function(){
		
		let form=document.querySelector("#imageForm");
		
		// gura_util.js 에 정의된 함수를 호출하면서 ajax 전송할 폼의 참조값을 전달하면 된다. 
		ajaxFormPromise(form)
		.then(function(response){
			return response.json();
		})
		.then(function(data){
			// data 는 {imagePath:"/upload/xxx.jpg"} 형식의 object 이다.
			console.log(data);
			let img=`<img id="profileImage" src="${pageContext.request.contextPath}\${data.imagePath}"/>`;
			document.querySelector("#profileLink").innerHTML=img;
			// input name="profile" 요소의 value 값으로 이미지 경로 넣어주기
			document.querySelector("input[name=profile]").value=data.imagePath;
		});
	});
</script>
</body>
</html>










