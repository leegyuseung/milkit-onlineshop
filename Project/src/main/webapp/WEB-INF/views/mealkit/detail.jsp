<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>/mealkit/detail.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<style>
        	
.card{
	height: 100px;
	width: 100px;
}
.card-img-top{
	height: 600px;
	width: 400px;
}		

img { display: block; margin: 0px auto; }
</style>
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

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
	                 <img src="${pageContext.request.contextPath }${dto.imagePath}" />	

                   </div>
                   <div class="col-md-6">
                        <div class="small mb-1">${dto.productCate}</div>
                        <h1 class="display-5 fw-bolder">${dto.productName}</h1>
                        <div class="fs-5 mb-5">
                            <span>${dto.price} 원</span>
                   </div>

                    	<p class="lead">원하는 수량을 적어 카트에 담아주세요.</p>

                   <div class="d-flex">
                      <form action="${pageContext.request.contextPath }/cart/insert.do" method="post" >
                        <input type="hidden" name="productId" value="${dto.productId}">
               			<input type="hidden" name="price" value="${dto.price}">
               			<input type="hidden" name="imagePath" value="${dto.imagePath}">
               			<input class="form-control text-center me-3" name="amount" id="inputQuantity" type="number" value="1" style="max-width: 3rem" />
               			                        <br />
                        <button type="submit" class="btn btn-outline-secondary">
                        <i class="bi-cart-fill me-1"> 장바구니 추가</i>    		
                        </button>
                      </form>
                   </div>
                        <c:if test="${user.usertype eq 1 }">
      					<c:choose>
      					<c:when test="${empty dto2.content }">
      					<a href="private/insertform.do?productId=${param.productId}">작성</a>
      					</c:when>
      					<c:otherwise>
      					<a href="private/updateform.do?productId=${param.productId}">수정</a>
      					<a href="private/delete.do?productId=${param.productId}">삭제</a>
      					</c:otherwise>
     					</c:choose>
      				</c:if>
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
        </section>
      	
        <!-- Footer-->
        <jsp:include page="../../../resources/include/footer.jsp">
			<jsp:param value="mealkit.home" name="thisPage"/>
		</jsp:include>
    </body>
</html>
