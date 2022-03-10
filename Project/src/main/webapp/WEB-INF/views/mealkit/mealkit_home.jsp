<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/mealkit/mealkit_home.jsp</title>
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
<div class="container">
	<h1>Home</h1>
</div>
</body>
</html>