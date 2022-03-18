<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>/mealkit/detail.jsp</title>
<link rel="stylesheet" href="/project/resources/css/bootstrap.css" />
<script src="/project/resources/js/bootstrap.bundle.min.js"></script>
<script src="/project/resources/js/scripts.js"></script>
<link rel="stylesheet" href="/project/resources/css/style.css" />
<style>
        	
.card{
	height: 250px;
	width: 250px;
}
.card-img-top{
	height: 300px;
	width: 200px;
}		
</style>
<script src="jquery/jquery.js"></script>
<script type="text/javascript" src='../resources/js/bootstrap.min.js'></script>
<link rel="stylesheet" href="../resources/css/bootstrap.css" />
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath }/resources/css/styles.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>

        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                  
                    <div class="col-md-6">
                   <div class="col-md-6">

	               		<div class="img-wrapper" style="text-align:center;">
	               			<a href="${pageContext.request.contextPath}/mealkit/detail.do?productId=${dto.productId}">
	                  			<img src="${pageContext.request.contextPath }${dto.imagePath}" />
	                  		</a>
	               		</div>
                   </div>
                    
                    <div class="col-md-6">
                        <div class="small mb-1">${dto.productCate}</div>
                        <h1 class="display-5 fw-bolder">${dto.productName}</h1>
                        <div class="fs-5 mb-5">
                            
                            <span>${dto.price}</span>
                    	</div>
                    
                    <c:if test="${user.usertype eq 1 }">
      					<c:choose>
      					<c:when test="${empty dto2.content }">
      					<a href="private/insertform.do?productId=${param.productId}">상세 내용 작성</a>
      					</c:when>
      					<c:otherwise>
      					<p class="card-text">${dto2.content }</p>
      					<a href="private/delete.do?productId=${param.productId}">상세 내용 삭제</a>
      					<a href="private/updateform.do?productId=${param.productId}">상세 내용 수정</a>
      					</c:otherwise>
     					</c:choose>
      				</c:if>
                      	
                   <div class="d-flex">
                      <form action="${pageContext.request.contextPath }/cart/insert.do" method="post" >
           
               			<input type="hidden" name="productId" value="${dto.productId}">
               			<input type="hidden" name="price" value="${dto.price}">
               			<input type="hidden" name="imagePath" value="${dto.imagePath}">
                        <input class="form-control text-center me-3" name="amount" id="inputQuantity" type="int" value="1" style="max-width: 3rem" />
                        <button type="submit" class="btn btn-primary">
                        <i class="bi-cart-fill me-1">장바구니 추가</i>
                                		
                        </button>
                      </form>
                   </div>
                   
                  </div>
               </div>
            </div>
        </section>
    	<section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                	<p class="lead">${dto2.content }</p>
                	
                </div>
            </div>
        
        <!-- Footer-->
        <jsp:include page="../../../resources/include/footer.jsp">
			<jsp:param value="mealkit.home" name="thisPage"/>
		</jsp:include>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath }/resources/js/scripts.js"></script>
    </body>
</html>

