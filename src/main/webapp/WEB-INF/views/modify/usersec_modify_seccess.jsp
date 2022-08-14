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
<link rel="stylesheet" href="../resources/css/modify/user_modify.css">

</head>


<body>
    <div id="grid">
		<ul>
			<h2>
				<b style="color: #444444;">내 정보관리</b>
			</h2>
			<br />
			
			<li><a href="user_modify_info" style="color: #444444;">개인정보 변경</a><br></li>
			<li><a href="user_modify_pwd" style="color: #444444;">비밀번호 변경</a><br></li>
			<li><a href="user_modify_sec" style="color: #444444;">회원탈퇴</a></li>
		</ul>
        <div class="gridinfo">
            <h3><b style="color: #444444;">회원탈퇴</b></h3>
            <hr>
            <div align="center">탈퇴가 완료되었습니다.<br>이용해주셔서 감사합니다.
            </div>
            <a href="../list/main"><button class="mainbtn">메인가기</button><br></a>
            
            <hr>
        </div>
    </div>
    </body>
</html>