<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<head>
<meta charset="UTF-8">
<title>/views/users/info.jsp</title>
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
   
   <a href="${pageContext.request.contextPath}/users/private/updateform.do">개인정보 수정</a>
   <a href="javascript:deleteConfirm()">탈퇴</a>
</div>
<script>
   function deleteConfirm(){
      const isDelete=confirm("${id} 님 탈퇴 하시겠습니까?");
      if(isDelete){
         location.href="${pageContext.request.contextPath}/users/private/delete.do";
      }
   }
</script>
<br />
<jsp:include page="../../../resources/include/footer.jsp">
   <jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>




