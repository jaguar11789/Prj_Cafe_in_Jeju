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
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
   crossorigin="anonymous" />
   <!-- 위의 CDN링크에서 갖고 온다 -->
   <link rel="stylesheet" href="../resources/css/modify/usersec_modify_seccess.css" />
</head>
<body>
<br />
<br />
<br />
<br />
<br />
    <div id="grid">
        <ul>
            <h4><b style="color: #444444;">내 정보관리</b></h4>
            <hr>
            <li>
               <a href="user_modify_info.html" style="color: #444444;">개인정보 변경</a><br>
            </li>
            <li>
               <a href="user_modify_pwd.html" style="color: #444444;">비밀번호 변경</a><br>
            </li>
            <li>
               <a href="user_modify_sec.html" style="color: #444444;"><b>회원탈퇴</b></a>
            </li> 
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