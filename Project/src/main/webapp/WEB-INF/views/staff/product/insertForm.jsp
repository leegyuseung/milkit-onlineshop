<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/product/insertForm.jsp</title>
<jsp:include page="../../../../resources/include/resource.jsp"></jsp:include>
<style> 
	#product{
		display: none;
		}
</style>
</head>
<body>
<jsp:include page="../../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>상품 추가</h1>
	<form action="insert.do" method="post" id="myForm" enctype="multipart/form-data">
		<div>
			<label class="control-label" for="productId" class="form-label">상품 아이디</label>
			<input class="form-control" type="text" name="productId" id="productId" placeholder="상품 아이디..."/>
			<div class="invalid-feedback">다른 id를 입력해주세요</div>
		</div>
		<br />
		<div>
			<label class="control-label" for="productName" class="form-label">상품 이름</label>
			<input class="form-control" type="text" name="productName" id="productName" placeholder="상품 이름..."/>
			<div class="invalid-feedback">상품이름을 입력해주세요.</div>
		</div>
		<br />
		<div>
			<label class="control-label" for="price" class="form-label">상품 가격</label>
			<input class="form-control" type="text" name="price" id="price" placeholder="가격..."/>
			<div class="invalid-feedback">가격을 입력해주세요.</div>
		</div>
		<br />
		<div>
			<label class="control-label" for="stock" class="form-label">상품 재고</label>
			<input class="form-control" type="text" name="stock" id="stock" placeholder="재고..."/>
			<div class="invalid-feedback">재고를 입력해주세요.</div>
		</div>
		<br />
		<div>
			<label for="productCate" class="form-label">카테고리</label>
			<select class="form-select" name="productCate" id="productCate">
				<option selected>음식 카테고리</option>
			  	<option value="Korean">Korean</option>
				<option value="American">American</option>
			 	<option value="Japanese">Japanese</option>
			 	<option value="Chinese">Chinese</option>
			 	<option value="French">French</option>
			 	<option value="Italian">Italian</option>
			</select>
		</div>
		<br />
		<figure class="text-end">
		<div>
			<label for="myFile">이미지</label>
			<input type="file" name="myFile" id="myFile" accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
		</div>
		</figure>
		<br />
		<figure class="text-end">
		<button class="btn btn-outline-secondary" type="submit">상품 추가</button>
		<button class="btn btn-outline-secondary" type="reset" id="reset">취소</button>
	</figure>
	
	</form>
</div>
<script src="${pageContext.request.contextPath}/resources/js/gura_util.js"></script>
<script>
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="list.do";	
	});
	
	let isProductIdValid=false;
	let isProductNameValid=false;
	let isPriceNameValid=false;
	
	document.querySelector("#productId").addEventListener("input", function(){
		//일단 is-valid,  is-invalid 클래스를 제거한다.
		document.querySelector("#productId").classList.remove("is-valid");
		document.querySelector("#productId").classList.remove("is-invalid");
		
		let inputProductId=this.value;
		if(inputProductId==""){
			isProductIdValid=false;
			document.querySelector("#productId").classList.add("is-invalid");
			return;
		}
		//2. util 에 있는 함수를 이용해서 ajax 요청하기
		ajaxPromise("${pageContext.request.contextPath}/staff/checkProductId.do", "get", "inputProductId="+inputProductId)
		.then(function(response){
			return response.json();
		})
		.then(function(data){
			console.log(data);
			//data 는 {isExist:true} or {isExist:false} 형태의 object 이다.
			if(data.isExist){//만일 존재한다면
				//사용할수 없는 아이디라는 피드백을 보이게 한다. 
				isProductIdValid=false;
				// is-invalid 클래스를 추가한다. 
				document.querySelector("#productId").classList.add("is-invalid");
			}else{
				isProductIdValid=true;
				document.querySelector("#productId").classList.add("is-valid");
			}
		});
	});
	
	//상품 이름을 입력했을때 실행할 함수 등록
	document.querySelector("#productName").addEventListener("input", function(){
		document.querySelector("#productName").classList.remove("is-valid");
		document.querySelector("#productName").classList.remove("is-invalid");
		
		
		const inputproductName=this.value;
		
		
		if(inputproductName != ""){
			isProductNameValid=true;
			document.querySelector("#productName").classList.add("is-valid");
		}else{
			isProductNameValid=false;
			document.querySelector("#productName").classList.add("is-invalid");
		}
	});
	
	//상품가격을 입력했을때 실행할 함수 등록
	document.querySelector("#price").addEventListener("input", function(){
		document.querySelector("#price").classList.remove("is-valid");
		document.querySelector("#price").classList.remove("is-invalid");
		
		
		const inputprice=this.value;
		
		
		if(inputprice != ""){
			isPriceNameValid=true;
			document.querySelector("#price").classList.add("is-valid");
		}else{
			isPriceNameValid=false;
			document.querySelector("#price").classList.add("is-invalid");
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
		let isFormValid = isProductIdValid&&isProductNameValid&&isPriceNameValid;
		if(!isFormValid){//폼이 유효하지 않으면
			//폼 전송 막기 
			e.preventDefault();
		}	
	});
</script>
</body>
</html>