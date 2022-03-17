<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <p class="col-md-4 mb-0 text-muted">Daily Mealkit</p>

    <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
    </a>

    <ul class="nav col-md-4 justify-content-end">
      <li class="nav-item"><a href="${pageContext.request.contextPath}/home.do" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath }/mealkit/mealkit_home.do" class="nav-link px-2 text-muted">Mealkit</a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath }/inquiry/list.do" class="nav-link px-2 text-muted">FAQs</a></li>
    </ul>
  </footer>
</div>