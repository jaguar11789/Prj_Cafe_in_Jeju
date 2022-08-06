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
<title>희원이 메뉴등록 </title>
<!-- CDN -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
   crossorigin="anonymous" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="../resources/css/write/register_cafemenu.css" />
   <!-- 위의 CDN링크에서 갖고 온다 -->
</head>

<body>
   <!-- header부분 -->
   
  <br />
  <br />
  <br />
  <br />
  <br />
   <hr />
   <!-- !바디시작 -->
   <form action="" id="content_form">
      <div class="container">
         <div class="middle">
      <header id="content_header">
        <h5>내 카페 등록하기</h5>
        <br><br>
        <h6>내 카페 메뉴 정보</h6>
      </header>
        
      
      
      <div id="menu">


        <hr width="800px">


        <label class="cafemenu1">
            &emsp; <span>메뉴명</span>
            &emsp;<input type="text" name="mname" placeholder="메뉴명을 입력하세요" size="40px">
            &emsp; <input type="checkbox" name="" id=""> 대표메뉴<br><br>
            &emsp; <span id="bus">메뉴사진</span>
         <input type="text" name="mphoto" placeholder="100mb 이하 등록가능" size="40px">
         &emsp; <input type="file" id="file" ><label for="file">파일찾기</label>
         <input type="image" src="" alt="" width="150" height="150"><br>
      </label>
      
     </div>
      
      <hr width="800px">

        <div class="plus">
        <a href="#menu">메뉴 추가 <i class="bi bi-plus-lg"></i></a> 
        </div>
      <div id="content_header">
         <br><br>
        <h6>내 카페 메뉴판사진 등록</h6>
        <hr width="800px">
      </div>
         <div>
         <label class="cafemenu2">
            &emsp; <span>사진등록</span>
         <input type="text" name="mpphoto" placeholder="100mb 이하 등록가능" size="40px">
         &emsp; <input type="file" id="file"><label for="file">파일찾기</label><br><br>
         &emsp;  <input type="image" src="" alt="" width="150" height="150" value="sfjlksdf">
         </label>
         </div>
      <!-- 글씨 가운데로 옮기기
        추가 된 사진 네임 나오기 
     -->
         <div>
      <input type="button" value="카페 등록 완료 !" id="end" onclick="location.href='../list/main';"> 
      </div></form>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
      crossorigin="anonymous">
   </script>
    </div>
   </div>
</body>
</html>