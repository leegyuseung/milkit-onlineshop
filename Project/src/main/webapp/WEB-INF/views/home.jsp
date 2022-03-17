<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/home.jsp</title>
<jsp:include page="../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../resources/include/navbar.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<div class="container">
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">신제품</h1>
                    <p class="lead fw-normal text-white-50 mb-0">홍보</p>
                </div>
            </div>
        </header>
        <br />
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">베스트제품</h1>
                    <p class="lead fw-normal text-white-50 mb-0">홍보</p>
                </div>
            </div>
        </header>
        <br />
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">세일제품</h1>
                    <p class="lead fw-normal text-white-50 mb-0">홍보</p>
                </div>
            </div>
        </header>	
</div>
<br />

<jsp:include page="../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
</body>
</html>








