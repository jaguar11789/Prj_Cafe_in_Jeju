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
	<link href=".carousel.css" rel="stylesheet" />
	<link rel="stylesheet" href="../resources/css/modify/userinfo_modify.css" />
</head>

<body>
<br />
<br />
<br />
<br />
<br />
	<div id="grid">
		<ul>
			<h4>
				<b style="color: #444444;">내 정보관리</b>
			</h4>
			<hr>
			<li>
				<a href="./userinfo_modify" style="color: #444444;"><b>개인정보 변경</b></a><br>
			</li>
			<li>
				<a href="./userpwd_modify" style="color: #444444;">비밀번호 변경</a><br>
			</li>
			<li><a href="./usersec_modify" style="color: #444444;">회원탈퇴</a>
			</li>
		</ul>
		<div class="gridinfo">
			<h3>
				<b style="color: #444444;">개인정보 변경</b>
			</h3>
			<hr>
			<span id="user_id" style="color: #444444;">아이디</span style="color: #444444;"> jaguar11789<br>
			<hr>
			<span id="user_name" style="color: #444444;">이름</span> 
			<input type="text" placeholder="강승원"> 
			<input type="button" class="modi_btn" name="user_name" value="변경"> <br>
			<hr>
			<span id="user_nickname" style="color: #444444;">닉네임</span> 
			<input type="text" placeholder="58년개띠"> 
			<input type="button" class="modi_btn" name="user_nickname" value="변경"> <br>
			<hr>
			<span id="user_email" style="color: #444444;">이메일</span>
			jaguar11789@naver.com 
			<input type="button" class="modi_btn" name="user_email" value="변경"> <br>
			<hr>
			<span id="user_tel" style="color: #444444;">핸드폰번호</span> 
			<input type="text" name="cafcnum" size="6px"> - <input type="text" name="cafename" size="6px"> - <input type="text" name="cafename" size="6px"> <input type="button" class="modi_btn" value="변경">
			<br>
			<hr>

			<button class="modify_confirm">변경사항 저장</button>
		</div>
	</div>

</body>
</html>