<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/signup_form.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<link href="${pageContext.request.contextPath }/resources/css/signin.css" rel="stylesheet">
</head>
<body>

<div class="container">
	
	<main class="form-signup">
		<h1 class="h3 mb-3 fw-normal m" style="color: white;"><strong>	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16">
  	<path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
	</svg> Daily Mealkit</strong></h1>
	<form action="${pageContext.request.contextPath}/users/signup.do" method="post" id="myForm">
		<div  class="form-floating">
			<label class="control-label" for="name">이름</label>
			<input class="form-control" type="text" name="name" id="name"/>
			<div class="invalid-feedback">이름을 입력해주세요.</div>
		</div>
		<br />
		<div  class="form-floating">
			<label class="control-label" for="id">아이디</label>
			<input class="form-control" type="text" name="id" id="id"/>
			<small class="form-text text-muted">영문자 소문자로 시작하고 5글자~10글자 이내로 입력하세요.</small>
			<div class="invalid-feedback">사용할수 없는 아이디 입니다.</div>
		</div>
		<br />
		<div  class="form-floating">
			<label class="control-label" for="pwd">비밀번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd"/>
			<small class="form-text text-muted">5글자~10글자 이내로 입력하세요.</small>
			<div class="invalid-feedback">비밀번호를 확인 하세요.</div>
		</div>
		<br />
		<div  class="form-floating">
			<label class="control-label" for="pwd2">비밀번호 확인</label>
			<input class="form-control" type="password" name="pwd2" id="pwd2"/>
		</div>
		<br />
		<div  class="form-floating">
			<label class="control-label" for="email">이메일</label>
			<input class="form-control" type="text" name="email" id="email"/>
			<div class="invalid-feedback">이메일 형식을 확인 하세요.</div>
		</div>
		<br />
		<div  class="form-floating">
			<label class="control-label" for="address">주소</label>
			<input class="form-control" type="text" name="address" id="address"/>
		</div>
		<br />

			<button class="w-100 btn btn-lg btn-outline-light"  type="submit">가입</button>
			<br />
			<br />
			<button class="w-100 btn btn-lg btn-outline-light" type="reset" id="reset">취소</button>

	</form>
	</main>
</div>
<script src="${pageContext.request.contextPath}/resources/js/gura_util.js"></script>
<script>
	//아이디, 비밀번호, 이메일의 유효성 여부를 관리한 변수 만들고 초기값 대입
	let isIdValid=false;
	let isPwdValid=false;
	let isEmailValid=false;
	let isNameValid=false;
	//아이디를 입력했을때(input) 실행할 함수 등록 
	document.querySelector("#id").addEventListener("input", function(){
		//일단 is-valid,  is-invalid 클래스를 제거한다.
		document.querySelector("#id").classList.remove("is-valid");
		document.querySelector("#id").classList.remove("is-invalid");
		
		//1. 입력한 아이디 value 값 읽어오기  
		let inputId=this.value;
		//입력한 아이디를 검증할 정규 표현식
		const reg_id=/^[a-z].{4,9}$/;
		//만일 입력한 아이디가 정규표현식과 매칭되지 않는다면
		if(!reg_id.test(inputId)){
			isIdValid=false; //아이디가 매칭되지 않는다고 표시하고 
			// is-invalid 클래스를 추가한다. 
			document.querySelector("#id").classList.add("is-invalid");
			return; //함수를 여기서 끝낸다 (ajax 전송 되지 않도록)
		}
		
		//2. util 에 있는 함수를 이용해서 ajax 요청하기
		ajaxPromise("${pageContext.request.contextPath}/users/checkid.do", "get", "inputId="+inputId)
		.then(function(response){
			return response.json();
		})
		.then(function(data){
			console.log(data);
			//data 는 {isExist:true} or {isExist:false} 형태의 object 이다.
			if(data.isExist){//만일 존재한다면
				//사용할수 없는 아이디라는 피드백을 보이게 한다. 
				isIdValid=false;
				// is-invalid 클래스를 추가한다. 
				document.querySelector("#id").classList.add("is-invalid");
			}else{
				isIdValid=true;
				document.querySelector("#id").classList.add("is-valid");
			}
		});
	});
	
	//비밀 번호를 확인 하는 함수 
	function checkPwd(){
		document.querySelector("#pwd").classList.remove("is-valid");
		document.querySelector("#pwd").classList.remove("is-invalid");
		
		const pwd=document.querySelector("#pwd").value;
		const pwd2=document.querySelector("#pwd2").value;
		
		// 최소5글자 최대 10글자인지를 검증할 정규표현식
		const reg_pwd=/^.{5,10}$/;
		if(!reg_pwd.test(pwd)){
			isPwdValid=false;
			document.querySelector("#pwd").classList.add("is-invalid");
			return; //함수를 여기서 종료
		}
		
		if(pwd != pwd2){//비밀번호와 비밀번호 확인란이 다르면
			//비밀번호를 잘못 입력한것이다.
			isPwdValid=false;
			document.querySelector("#pwd").classList.add("is-invalid");
		}else{
			isPwdValid=true;
			document.querySelector("#pwd").classList.add("is-valid");
		}
	}
	
	//비밀번호 입력란에 input 이벤트가 일어 났을때 실행할 함수 등록
	document.querySelector("#pwd").addEventListener("input", checkPwd);
	document.querySelector("#pwd2").addEventListener("input", checkPwd);
	
	//이메일을 입력했을때 실행할 함수 등록
	document.querySelector("#email").addEventListener("input", function(){
		document.querySelector("#email").classList.remove("is-valid");
		document.querySelector("#email").classList.remove("is-invalid");
		
		//1. 입력한 이메일을 읽어와서
		const inputEmail=this.value;
		//2. 이메일을 검증할 정규 표현식 객체를 만들어서
		const reg_email=/@/;
		//3. 정규표현식 매칭 여부에 따라 분기하기
		if(reg_email.test(inputEmail)){//만일 매칭된다면
			isEmailValid=true;
			document.querySelector("#email").classList.add("is-valid");
		}else{
			isEmailValid=false;
			document.querySelector("#email").classList.add("is-invalid");
		}
	});
	
	//이름을 입력했을때 실행할 함수 등록
	document.querySelector("#name").addEventListener("input", function(){
		document.querySelector("#name").classList.remove("is-valid");
		document.querySelector("#name").classList.remove("is-invalid");
		
		
		const inputName=this.value;
		
		
		if(inputName != ""){
			isNameValid=true;
			document.querySelector("#name").classList.add("is-valid");
		}else{
			isNameValid=false;
			document.querySelector("#name").classList.add("is-invalid");
		}
	});
	
	
	//폼에 submit 이벤트가 발생했을때 실행할 함수 등록
	document.querySelector("#myForm").addEventListener("submit", function(e){
		//console.log(e);
		/*
			입력한 아이디, 비밀번호, 이메일의 유효성 여부를 확인해서 하나라도 유효 하지 않으면
			e.preventDefault(); 
			가 수행 되도록 해서 폼의 제출을 막아야 한다. 
		*/
		//폼 전체의 유효성 여부 알아내기 
		let isFormValid = isIdValid && isPwdValid && isEmailValid && isNameValid;
		if(!isFormValid){//폼이 유효하지 않으면
			//폼 전송 막기 
			e.preventDefault();
		}	
	});
	
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath}/home.do";	
	});
</script>
</body>
</html>
