<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/home.jsp</title>

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
	  	
	<jsp:include page="../../../resources/include/userSidebar.jsp"></jsp:include>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    	<div class="my-5" style="text-align:center";>
			<img src="<%=request.getContextPath()%>/resources/images/acorn1.jpg" alt="지도" width= 600px; height= 400px; />
		</div>

	<div class="container px-4 px-lg-5 ">
		<div class="text-center text-black">
			<p><strong>상호 : 데일리 밀키트</strong></p>
		</div>
		<div class="text-center text-black">
			<p><strong>대표이사 : 이정호</strong></p>
		</div>
		<div class="text-center text-black">
			<p><strong>안내전화 : 0000-0000</strong></p>
		</div>
		<div class="text-center text-black">
			<p><strong>서울특별시 강남구</strong></p>	
		</div>
		<div class="text-center text-black">
			<p><strong>사업자 등록번호 : 000-00-00000</strong></p>	
		</div>
	</div>
    </main>
  </div>
</div>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>

</html>