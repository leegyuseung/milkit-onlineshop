<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>staff/usersList.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<style>
	h1 {text-align: center; font-weight: bold; padding-top: 1em; padding-bottom: 1em;}
	
	#center{
	text-align: center;
	}

</style>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="userlist" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>회원 목록</h1>
	<table class="table">
		<thead>
			<tr>
				<th id="center">이름</th>
				<th id="center">아이디</th>
				<th id="center">이메일</th>
				<th id="center">주소</th>
				<th id="center">가입 날짜</th>
				<th id="center">유저 타입</th>
				<th id="center">강제 탈퇴</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td id="center">${tmp.name }</td>
					<td id="center">${tmp.id }</td>
					<td id="center">${tmp.email }</td>
					<td id="center">${tmp.address }</td>
					<td id="center">${tmp.regdate }</td>
					<td id="center">${tmp.usertype }</td>
					<td id="center"><a href="delete2.do?id=${tmp.id }">강제 탈퇴</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br />
	<figure class="text-end">
	<button class="btn btn-outline-secondary" type="reset" id="home">관리자 페이지</button>
	</figure>
<script>
	document.querySelector("#home").addEventListener("click",function(){
		location.href="home.do";	
	});
</script>	
</div>
</body>
</html>