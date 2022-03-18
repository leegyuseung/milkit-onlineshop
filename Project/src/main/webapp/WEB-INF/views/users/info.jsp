<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/info.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<style>
	h1 { text-align: center; font-weight: bold; padding-top: 1em; padding-bottom: 1em;}
	
	#center{
	text-align: center;
	}

</style>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>
		<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-file-person" viewBox="0 0 16 16">
		  <path d="M12 1a1 1 0 0 1 1 1v10.755S12 11 8 11s-5 1.755-5 1.755V2a1 1 0 0 1 1-1h8zM4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4z"/>
		  <path d="M8 10a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
		</svg>
		My Page
	</h1>
	<table class="table">
		<thead>
			<th scope="col"> </th>
			<th scope="col"> </th>
		</thead>
		<tbody>
			<tr>
				<th scope="row" id="center">이름</th>
				<td align=>${dto.name }</td>
			</tr>
			<tr>
				<th scope="row" id="center">아이디</th>
				<td>${id }</td>
			</tr>
			<tr>
				<th scope="row" id="center">비밀번호</th>
				<td><a href="${pageContext.request.contextPath}/users/private/pwd_updateform.do">수정하기</a></td>
			</tr>
			<tr>
				<th scope="row" id="center">이메일</th>
				<td>${dto.email }</td>
			</tr>
			<tr>
				<th scope="row" id="center">주소</th>
				<td>${dto.address }</td>
			</tr>
			<tr>
				<th scope="row" id="center">가입일</th>
				<td>${dto.regdate }</td>
			</tr>
		</tbody>
         
	</table>

	<figure class="text-end">
		<button  class="btn btn-outline-secondary"  type="submit" id="update">회원정보수정</button>
		<button class="btn btn-outline-secondary" type="reset" id="delete">탈퇴</button>
	</figure>
	
</div>
<script>
   function deleteConfirm(){
      const isDelete=confirm("${id} 님 탈퇴 하시겠습니까?");
      if(isDelete){
         location.href="${pageContext.request.contextPath}/users/private/delete.do";
      }
   }
   
	document.querySelector("#update").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath}/users/private/updateform.do";	
	});
	document.querySelector("#delete").addEventListener("click",function(){
		location.href="javascript:deleteConfirm()";	
	});
</script>
<br />
<jsp:include page="../../../resources/include/footer.jsp">
   <jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>




