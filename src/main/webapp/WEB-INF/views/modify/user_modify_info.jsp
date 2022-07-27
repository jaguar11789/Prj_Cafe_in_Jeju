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
<title>사용자 정보 변경</title>
<!-- CDN -->
<link rel="stylesheet" href="./css.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous" />
</head>

<body>
	<!-- 위의 CDN링크에서 갖고 온다 -->
	<link href=".carousel.css" rel="stylesheet" />
	<!-- header부분 -->
	<header class="navbar navbar-white bg-white">
		<div class="col-3">
			<input type="checkbox" id="menuicon" /> <label for="menuicon">
				<span></span> <span></span> <span></span>
			</label>
			<div class="sidebar"></div>
		</div>
		<div class="col-6 text-center">
			<a class="blog-header-logo text-#888888" href="../list/main"> <img
				src="../resources/img/logo2.png" alt="" /></a>
		</div>
		<div class="col-3 d-flex justify-content-end align-items-center">
			<form action="#">
				<input type="text" id="search1"> <a class="link-secondary"
					href="#" id="search1" aria-label="Search">
			</form>
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
				fill="none" stroke="currentColor" stroke-linecap="round"
				stroke-linejoin="round" stroke-width="2" class="mx-3" role="img"
				viewBox="0 0 24 24">
            <title>Search</title>
               <circle cx="10.5" cy="10.5" r="7.5" />
               <path d="M21 21l-5.2-5.2" />
             </svg>
			</a> <a class="btn btn-sm btn-outline-secondary" href="../login/login"
				style="background-color: cyan">로그인</a> &nbsp; <a
				class="btn btn-sm btn-outline-secondary" href="../join/join">회원가입
			</a>
			<nav class="navbar bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="../mypage/user_mypage"> <img
						src="../resources/img/user.png" alt="" width="40" height="40"
						class="d-inline-block align-text-top" />
					</a>
				</div>
			</nav>
		</div>
	</header>
	<hr>
	<style>
#grid {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}

.gridmenu {
	border: 1px solid pink;
}

.gridinfo {
	margin-left: 30px;
	width: 500px;
}

.gridinfo h3 { /*개인정보 변경*/
	margin-left: 15px;
}

.gridinfo span { /*수정 내용*/
	padding: 1px;
	display: inline-block;
	text-align: left;
	width: 120px;
	margin-left: 30px;
}

ul {
	background-color: #ffa600;
	width: 220px;
	margin: 0;
	padding: 40px;
	min-height: 450px;
}

li {
	list-style: none;
	padding: 2px;
}

a {
	text-decoration: none;
}
a input {
	background-color: #ffa600;
	border: none;
	border: none;
    background-color: #ffa600;
    border-radius: 4px;
    color: white;
}
a .confirm {
	background-color: #ffa600;
	border: none;
	border: none;
	background-color: #ffa600;
	border-radius: 4px;
	color: white;
	height: 30px;
	width: 60px;
}
</style>
<body>
	<div id="grid">
		<ul>
			<h4>
				<b style="color: #444444;">내 정보관리</b>
			</h4>
			<hr>
			<li><a href="user_modify_info.html" style="color: #444444;"><b>개인정보
						변경</b></a><br></li>
			<li><a href="user_modify_pwd.html" style="color: #444444;">비밀번호
					변경</a><br></li>
			<li><a href="user_modify_sec.html" style="color: #444444;">회원탈퇴</a>
			</li>
		</ul>
		<div class="gridinfo">
			<h3>
				<b style="color: #444444;">개인정보 변경</b>
			</h3>
			<hr>
			<div align="center">
				고객님의 개인정보 보호를 위해 본인확인을 진행합니다.
				<div class="br"></div>
				비밀번호를 입력하세요.
			</div>
			<br>
			<br> <span id="userpwd_modify" style="color: #444444;">비밀번호
				확인</span> <input type="text" placeholder="비밀번호를 입력해주세요." size="30">
			<a href="./userinfo_modify"><input type="button" name="user_email" class="confirm" value="확인"></a>
			<hr>
		</div>
	</div>

</body>
</html>