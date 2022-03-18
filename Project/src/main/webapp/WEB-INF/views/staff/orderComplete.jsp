<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/orderComplete.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>
	<div class="container">
		<figure class="text-center">
  	<blockquote class="blockquote">
   	 <p>구매해주셔서 감사합니다.</p>
 	 </blockquote>
  <figcaption class="blockquote-footer">
  	  Thank you
  </figcaption>
</figure>
		
		
		
		
		
		<figure class="text-end">
		<button class="btn btn-outline-secondary" type="button" id="home">홈으로 돌아가기</button>
		</figure>
	</div>

<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<script>
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="../home.do";	
	});
</script>
</body>

</html>