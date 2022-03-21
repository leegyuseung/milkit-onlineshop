<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/inquiry/list.jsp</title>
<style>
	.page-ui a{
		text-decoration: none;
		color: #000;
	}
	
	.page-ui a:hover{
		text-decoration: underline;
	}
	
	.page-ui a.active{
		color: red;
		font-weight: bold;
		text-decoration: underline;
	}
	.page-ui ul{
		list-style-type: none;
		padding: 0;
	}
	
	.page-ui ul > li{
		float: left;
		padding: 5px;
	}
	
	h1 {text-align: center; font-weight: bold; padding-top: 1em; padding-bottom: 1em;}
	
	#center{
	text-align: center;
	}
</style>
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
				<div class="container">
				<h1 style="text-align: center">Q&A</h1>
				<table class="table">
					<thead>
						<tr>
							<th id="center">글번호</th>
							<th id="center">작성자</th>
							<th id="center">제목</th>
							<th id="center">조회수</th>
							<th id="center">등록일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="tmp" items="${list }">
						<tr>
							<td id="center">${tmp.num }</td>
							<td id="center">${tmp.writer }</td>
							<td id="center">
								<a href="detail.do?num=${tmp.num }&keyword=${encodedK }&condition=${condition}">${tmp.title }</a>
							</td>
							<td id="center">${tmp.viewCount }</td>
							<td id="center">${tmp.regdate }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div class="page-ui clearfix">
					<ul>
						<c:if test="${startPageNum ne 1 }">
							<li>
								<a href="list.do?pageNum=${startPageNum-1 }&condition=${condition }&keyword=${encodedK }">Prev</a>
							</li>
						</c:if>
						<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
							<li>
								<c:choose>
									<c:when test="${pageNum eq i }">
										<a  class="active" href="list.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a>
									</c:when>
									<c:otherwise>
										<a href="list.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a>
									</c:otherwise>
								</c:choose>
							</li>
						</c:forEach>
						<c:if test="${endPageNum lt totalPageCount }">
							<li>
								<a href="list.do?pageNum=${endPageNum+1 }&condition=${condition }&keyword=${encodedK }">Next</a>
							</li>
						</c:if>
					</ul>
				</div>
				<figure class="text-end">
				<button class="btn btn-outline-secondary" type="button" id="write">작성</button>
				</figure>
				<div style="clear:both;"></div>
				<form class="row g-3">
					<div class="col-sm-1">
				  		<label class="control-label" for="condition"></label>
				  	</div>
				  	<div class="col-sm-2">
				   		<select class="form-select" name="condition" id="condition">
							<option value="title_content" ${condition eq 'title_content' ? 'selected' : '' }>제목+내용</option>
							<option value="title" ${condition eq 'title' ? 'selected' : '' }>제목</option>
							<option value="writer" ${condition eq 'writer' ? 'selected' : '' }>작성자</option>
						</select>
				  	</div>
				  	
				  	<div class="col-sm-3">
						<input class="form-control" type="text" id="keyword" name="keyword" placeholder="검색어..." value="${keyword }"/>
				  	</div>
				  	<div class="col-sm-3">
						<button class="btn btn-outline-secondary" type="submit">검색</button>
				  	</div>
				</form>
				
				
				
				<c:if test="${ not empty condition }">
					<p>
						<strong>${totalRow }</strong> 개의 글이 검색 되었습니다.
					</p>
				</c:if>
			
			</div>
    </main>
  </div>
</div>
<script>
	document.querySelector("#write").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath}/inquiry/private/insertform.do";	
	});
</script>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>

</body>
</html>