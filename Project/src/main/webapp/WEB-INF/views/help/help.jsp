<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/help/help.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<!-- navbar -->
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>

<div style="text-align:center";>
<img src="<%=request.getContextPath()%>/resources/images/acorn1.jpg" alt="지도" width= 800px; height= 400px; />
</div>

	<div class="container px-4 px-lg-5 my-5">
		<div class="text-center text-black">
			<h1 class="display-6 fw-bolder">상호 : 에이콘푸드</h1>
		</div>
		<div class="text-center text-black">
			<h1 class="display-6 fw-bolder">사업장소재지 : 서울특별시 강남구</h1>
		</div>
		<div class="text-center text-black">
			<h1 class="display-6 fw-bolder">안내전화 : 0000-0000</h1>
		</div>
		<div class="text-center text-black">
			<h1 class="display-6 fw-bolder">대표이사 : 이정호</h1>
		</div>
		<div class="text-center text-black">
			<h1 class="display-6 fw-bolder">사업자 등록번호 : 000-00-00000</h1>
		</div>
	</div>

	<!-- Footer -->
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="mealkit.home" name="thisPage"/>
</jsp:include>
</body>
</html>