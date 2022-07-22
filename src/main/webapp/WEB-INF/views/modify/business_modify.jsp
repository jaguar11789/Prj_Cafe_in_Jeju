<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
<meta name="generator" content="Hugo 0.98.0" />
<title>Bootstrap demo</title>
<!-- CDN -->
<link rel="stylesheet" href="../resources/css/css.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous" />
</head>

<body>
	<!-- 위의 CDN링크에서 갖고 온다 -->
	<link href="../resources/css/carousel.css" rel="stylesheet" />
	<!-- header부분 -->
	<header class="navbar navbar-white bg-white">
		<div class="col-3">
			<input type="checkbox" id="menuicon" /> 
				<label for="menuicon">
					<span></span> <span></span> <span></span>
				</label>
			<div class="sidebar"></div>
		</div>
		<div class="col-6 text-center">
			<a class="blog-header-logo text-#888888" href="./main">
			<img src="..\resources\img\logo2.png" alt="" /></a>
		</div>
		<div class="col-3 d-flex justify-content-end align-items-center">
			<form action="#">
				<input type="text" id="search1"> <a class="link-secondary" href="#" id="search1" aria-label="Search">
			</form>
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
				fill="none" stroke="currentColor" stroke-linecap="round"
				stroke-linejoin="round" stroke-width="2" class="mx-3" role="img"
				viewBox="0 0 24 24">
            <title>Search</title>
            	<circle cx="10.5" cy="10.5" r="7.5" />
            	<path d="M21 21l-5.2-5.2" />
          	</svg>
			</a>
			<a class="btn btn-sm btn-outline-secondary" href="../login/login"
				style="background-color: cyan">로그인</a> &nbsp; <a class="btn btn-sm btn-outline-secondary" href="../join/join">회원가입
				</a>
			<nav class="navbar bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="../mypage/user_mypage"> 
						<img src="../resources//img/user.png" alt="" width="40" height="40" class="d-inline-block align-text-top" />
					</a>
				</div>
			</nav>
		</div>
	</header>
	<!-- header 끝 -->
	<hr />
	<h3>사업자정보 수정 페이지라구~</h3>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous">
	</script>

</body>
</html>