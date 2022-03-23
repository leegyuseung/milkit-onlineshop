<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/orderPage.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
<style>
	h1 {text-align: center; font-weight: bold; padding-top: 1em; padding-bottom: 1em;}
	
	#center{
	text-align: center;
	}

</style>
</head>

<body class="bg-light">
<div class="container">
<form class="needs-validation" action="${pageContext.request.contextPath }/private/orderComplete.do" method="post" enctype="multipart/form-data">
  <main>
    <div class="py-5 text-center">
		<a class="navbar-brand" style="color:black;" href="<%=request.getContextPath() %>/">	
        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16">
  				<path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
			</svg>
			Daily Mealkit
		</a>
		<h2 style="color:#FFB94F">Checkout form</h2>
    </div>
    <div class="row g-5">
	  <div class="col-md-5 col-lg-4 order-md-last">
      
        <h4 class="d-flex justify-content-between align-items-center mb-3">
        
          <c:set var="tamount" value="0" />
		  <c:forEach var="tmp" items="${list }" varStatus="status">
	      <c:set var="tamount" value="${tamount + (tmp.amount)}" />			
          </c:forEach>
          
          <span style="color:#FFB94F">Your cart</span>
          <span class="badge rounded-pill" style="background-color:#FFB94F"><fmt:formatNumber value="${tamount}" /></span>
        </h4>
      
        <ul class="list-group mb-3">
          <c:set var="sum" value="0" />
          
          <c:forEach var="tmp" items="${list }" varStatus="status">
	          <li class="list-group-item d-flex justify-content-between lh-sm">
	            <div>
	              <h6 class="my-0">${tmp.productName } x ${tmp.amount }개</h6>
	              <small class="text-muted">맛있는 ${tmp.productName } 입니다!</small>
	              <input type="hidden" name="amount" id="amount" value="${tmp.amount }"/>
	              <input type="hidden" name="productId" id="productId" value="${tmp.productId }"/>
	            </div>
	            <span class="text-muted"><fmt:formatNumber pattern="###,###,###" value="${tmp.price }" /> 원</span>
	          </li>
	      <c:set var="sum" value="${sum + (tmp.totalPrice)}" />	
          </c:forEach>
<!--      
		  <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">Promo code</h6>
              <small>EXAMPLECODE</small>
            </div>
            <span class="text-success">−$5</span>
          </li>
--> 
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (원)</span>
            <strong><fmt:formatNumber pattern="###,###,###" value="${sum}" /> 원</strong>
          </li>
        </ul>
        
<!--
        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form>
-->

      </div>
      
      
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3" style="color:#FFB94F">Billing address</h4>
        
          <input type="hidden" id="totalPrice" name="totalPrice" value="${sum}"/>
          <div class="row g-3">
            <div class="col-12">
              <label for="receiver" class="form-label">받는 사람</label>
              <input type="text" class="form-control" name="receiver" id="receiver" placeholder="Full Name" required>
              
            </div>

            <div class="col-12">
              <label for="userId" class="form-label">유저 아이디</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="userId" name="userId" placeholder="Username" value="${user.id}" disabled>
              </div>
            </div>

			<div class="col-12">
			   	<label class="control-label" for="tel" class="form-label">연락처</label>
			   	<input class="form-control" type="text" name="tel" id="tel" placeholder="010-0000-0000" required/>
		  	</div>


            <div class="col-12">
              <label for="email" class="form-label">이메일</label>
              <input type="email" class="form-control" name="email" id="email" placeholder="you@example.com" required>
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-12">
              <label for="userAddr" class="form-label">주소</label>
              <input type="text" class="form-control" name="userAddr" id="userAddr" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>
		  	
            <div class="col-md-9">
              <label for="userAddrDetail" class="form-label">상세 주소 </label>
              <input type="text" class="form-control" name="userAddrDetail" id="userAddrDetail" placeholder="Apartment or suite" required>
            </div>
            
            <div class="col-md-3">
              <label for="userPostal" class="form-label">우편 번호</label>
              <input type="text" class="form-control" name="userPostal" id="userPostal" placeholder="00000" required>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>
            
          </div>
          
          <hr class="my-4">


		  <button class="w-40 btn btn-outline-secondary btn-lg" type="submit">주문</button>
	      <button class="w-40 btn btn-outline-secondary btn-lg" type="reset" id="reset">취소</button> 
      </div>
    </div>
  </main>
</form>

	<footer class="my-5 pt-5 text-muted text-center text-small">
		<jsp:include page="../../../resources/include/footer.jsp">
			<jsp:param value="home" name="thisPage"/>
		</jsp:include>
  	</footer>
  	

</div>
</body>



<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<script>
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath }/cart/carthome.do";	
	});
</script>
</html>