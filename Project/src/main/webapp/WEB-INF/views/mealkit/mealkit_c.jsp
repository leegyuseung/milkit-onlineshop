<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/mealkit/mealkit_c.jsp</title>
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
	<jsp:param value="staff" name="thisPage"/>
</jsp:include>
<!-- list 목록 -->
<div class="container">
	<h1>Home</h1>
	<div class="row">
		<c:forEach var="tmp" items="${list }">
			<div class="col-6 col-md-4 col-lg-3">
         		<div class="card mb-3">
            		<a href="${pageContext.request.contextPath}/mealkit/detail.do?productId=${tmp.productId}">
	               		<div class="img-wrapper">
	                  		<img class="card-img-top" src="${pageContext.request.contextPath }${tmp.imagePath}" />
	               		</div>
            		</a>
            		<div class="card-body">
               			<p class="card-text">상품 카테고리 : ${tmp.productCate}</p>
               			<p class="card-text">상품명 : <strong>${tmp.productName}</strong></p>
               			<p>상품 가격 : <strong>${tmp.price}</strong></p>
            		</div>
         		</div>
      		</div>
		</c:forEach>
   	</div>
   	<!-- page -->
   	<nav>
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${startPageNum ne 1 }">
				<li class="page-item">
               		<a class="page-link" href="${pageContext.request.contextPath}/mealkit/mealkit_c.do?pageNum=${startPageNum - 1}">Prev</a>
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
                  		<a class="page-link" href="${pageContext.request.contextPath}/mealkit/mealkit_c.do?pageNum=${i}">${i }</a>
               		</li>
				</c:when>
				<c:otherwise>
					<li class="page-item">
                  		<a class="page-link" href="${pageContext.request.contextPath}/mealkit/mealkit_c.do?pageNum=${i}">${i}</a>
               		</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when test="${endPageNum lt totalPageCount }">
				<li class="page-item">
               		<a class="page-link" href="${pageContext.request.contextPath}/mealkit/mealkit_c.do?pageNum=${endPageNum + 1}">Next</a>
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
</body>
</html>