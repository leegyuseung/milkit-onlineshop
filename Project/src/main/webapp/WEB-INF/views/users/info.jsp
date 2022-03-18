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

   table {
   width: 100%;
   border-top: 1px solid #444444;
   border-collapse: collapse;
   }

   th, td {
   border-bottom: 1px solid #444444;
   border-left: 1px solid #444444;
   padding: 10px;
   }
  
   th:first-child, td:first-child {
   border-left: none;
   }
   
</style>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
   <jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
   <h1>My Page</h1>
   <table class="table">
      <tbody>
         <tr>
            <th scope="row">이름</th>
            <td>${dto.name }</td>
         </tr>
         <tr>
            <th scope="row">아이디</th>
            <td>${id }</td>
         </tr>
         <tr>
            <th scope="row">비밀번호</th>
            <td><a href="${pageContext.request.contextPath}/users/private/pwd_updateform.do">수정하기</a></td>
         </tr>
         <tr>
            <th scope="row">이메일</th>
            <td>${dto.email }</td>
         </tr>
         <tr>
            <th scope="row">주소</th>
            <td>${dto.address }</td>
         </tr>
         <tr>
            <th scope="row">가입일</th>
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




