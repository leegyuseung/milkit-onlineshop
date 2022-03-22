<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/userList.jsp</title>
<style>
	h2 {text-align: center; padding-top: 1em; padding-bottom: 1em;}
	
	#center{
	text-align: center;
	}
</style>
</head>
<body>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
    
<header class="sticky-top ">
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="userlist" name="thisPage"/>
</jsp:include>
</header>

<div class="container-fluid">
  <div class="row">
    
	<jsp:include page="../../../resources/include/sidebar.jsp"></jsp:include>
	
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<h2>회원 목록</h2>
	<div class="table-responsive">
		<table class="table table-striped table-sm">
			<thead>
				<tr>
					<th id="center">이름</th>
					<th id="center">아이디</th>
					<th>이메일</th>
					<th >주소</th>
					<th id="center">가입 날짜</th>
					<th id="center">유저 타입</th>
					<th id="center">강제 탈퇴</th>
	
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tmp" items="${list }">
					<tr>
						<td>${tmp.name }</td>
						<td >${tmp.id }</td>
						<td >${tmp.email }</td>
						<td>${tmp.address }</td>
						<td id="center">${tmp.regdate }</td>
						<form action="updateUserType.do" method="post">
			            	<td id="center">
			            		<input type="number" min="0" max="1"name="usertype" value="${tmp.usertype }" />
			            		<input type="hidden" name="id" value="${tmp.id }" />
			            	</td>
			           		<td id="center"><button class="btn btn-outline-secondary" type="submit">수정</button></td>	            	
			            </form>
						<td id="center"><a href="delete2.do?id=${tmp.id }">강제 탈퇴</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br />
	<figure class="text-end">
	<button class="btn btn-outline-secondary" type="reset" id="home">관리자 페이지</button>
	</figure>
	
    </main>
  </div>
</div>

<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>

<script>
	document.querySelector("#home").addEventListener("click",function(){
		location.href="home.do";	
	});
</script>
</body>
</html>