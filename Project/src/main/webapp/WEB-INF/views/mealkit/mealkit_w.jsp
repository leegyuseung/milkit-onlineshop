<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/mealkit/mealkit_w.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<style>
	/* card 이미지 부모요소의 높이 지정 */
	.img-wrapper{
		height: 250px;
		/* transform 을 적용할대 0.3s 동안 순차적으로 적용하기 */
		transition: transform 0.3s ease-out;
	}
	/* .img-wrapper 에 마우스가 hover 되었을때 적용할 css */
	.img-wrapper:hover{
		/* 원본 크기의 1.1 배로 확대 시키기*/
		transform: scale(1.05);
	}
	
	.card .card-text{
		/* 한줄만 text 가 나오고  한줄 넘는 길이에 대해서는 ... 처리 하는 css */
		display:block;
		white-space : nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	
	.img-wrapper img{
		width: 100%;
		height: 100%;
		object-fit: cover;  /* fill | contain | cover | scale-down | none */
	}
</style>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="mealkit.home" name="thisPage"/>
</jsp:include>

        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">West Food</h1>
                    <p class="lead fw-normal text-white-50 mb-0">good price, good quality</p>
                </div>
            </div>
        </header>
<!-- Section-->
<section class="py-5">
	<div class="container px-4 px-lg-5 mt-5">
    	<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
    	<c:forEach var="tmp" items="${list }">
        	<div class="col mb-5">
            	<div class="card h-100">
                	<!-- Product image-->
                    <img class="card-img-top" src="${pageContext.request.contextPath }${tmp.imagePath}" style="width:268px; height:250px;" />
                    <!-- Product details-->
                    <div class="card-body p-4">
                    <div class="text-center">
                    <!-- Product name-->
                    <h3 class="fw-bolder">${tmp.productName}</h3>
                    <!-- Product name-->
                    <h6 class="fw-bolder">${tmp.productCate}</h6>
                    <!-- Product price-->
                    <fmt:formatNumber pattern="###,###,###" value="${tmp.price }" /> 원
                    </div>
                    </div>
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="${pageContext.request.contextPath}/mealkit/detail.do?productId=${tmp.productId}">상세 정보</a></div>
                    </div>
       			 </div>
             </div>
        </c:forEach>
		</div>
	</div>
</section>
   	<!-- page -->
   	<nav>
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${startPageNum ne 1 }">
				<li class="page-item">
               		<a class="page-link" href="${pageContext.request.contextPath}/mealkit/mealkit_w.do?pageNum=${startPageNum - 1}">Prev</a>
            	</li>
			</c:when>
			<c:otherwise>
				<li class="page-item disabled">
               		<a class="page-link" href="javascript:">Prev</a>
            	</li>
			</c:otherwise>
		</c:choose>
		<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
			<c:choose>
				<c:when test="${i eq pageNum }">
					<li class="page-item active">
                  		<a class="page-link" href="${pageContext.request.contextPath}/mealkit/mealkit_w.do?pageNum=${i}">${i }</a>
               		</li>
				</c:when>
				<c:otherwise>
					<li class="page-item">
                  		<a class="page-link" href="${pageContext.request.contextPath}/mealkit/mealkit_w.do?pageNum=${i}">${i}</a>
               		</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when test="${endPageNum lt totalPageCount }">
				<li class="page-item">
               		<a class="page-link" href="${pageContext.request.contextPath}/mealkit/mealkit_w.do?pageNum=${endPageNum + 1}">Next</a>
            	</li>
			</c:when>
			<c:otherwise>
				<li class="page-item disabled">
               		<a class="page-link" href="javascript:">Next</a>
            	</li>
			</c:otherwise>
		</c:choose>
      </ul>
   </nav>   
</div>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="mealkit.home" name="thisPage"/>
</jsp:include>
</body>
</html>