<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>staff/usersList.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<h1>회원 목록 입니다.</h1>
	<table class="table">
		<thead>
			<tr>
				<th>이름</th>
				<th>아이디</th>
				<th>이메일</th>
				<th>주소</th>
				<th>가입 날짜</th>
				<th>유저 타입</th>
				<th>강제 탈퇴</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.name }</td>
					<td>${tmp.id }</td>
					<td>${tmp.email }</td>
					<td>${tmp.address }</td>
					<td>${tmp.regdate }</td>
					<td>${tmp.usertype }</td>
					<td><a href="delete.do?id=${tmp.id }">강제 탈퇴</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>