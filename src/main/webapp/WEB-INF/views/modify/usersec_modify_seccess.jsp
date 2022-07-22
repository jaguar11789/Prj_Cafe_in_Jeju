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
         <input type="checkbox" id="menuicon" /> 
            <label for="menuicon">
               <span></span> <span></span> <span></span>
            </label>
         <div class="sidebar"></div>
      </div>
      <div class="col-6 text-center">
         <a class="blog-header-logo text-#888888" href="../list/main">
         <img src="../resources/img/logo2.png" alt="" /></a>
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
                  <img src="../resources/img/user.png" alt="" width="40" height="40" class="d-inline-block align-text-top" />
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
   .gridmenu{
      border: 1px solid pink;
   }
   .gridinfo{
      margin-left: 30px;
      width: 500px;
   }
   
   .gridinfo h3{ /*개인정보 변경*/
      margin-left: 15px;
   }
    .gridinfo span{ /*수정 내용*/
      padding: 1px;
      display: inline-block;
      text-align: left;
      width: 150px;
      margin-left: 30px;
   }
   .gridinfo div{
      margin: 10%;
      
   }
   ul {
      background-color: #ffa600;
      width: 220px;
      margin: 0;
      padding: 40px;
      min-height: 450px; 
    }
   li{
      list-style: none;
      padding: 2px;
   }
   a{
      text-decoration: none;
   }
   .btn-6:hover:before, .btn-6:hover:after{
	   width:100%;
	   transition:1ms ease all;
   }
  
   .btn-6{
      left: 67%;
	}
   .btn-6 {
      width: 60px;
	   height: 40px;
	   line-height: 42px;
	   padding: 0;
	   border: none;
	   background: #ffa600;
      background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(255, 255, 255) 100%);
   }
   .btn-6:hover {
	   color: #ffa600;
	   background: transparent;
	   box-shadow:none;
   }
   .btn-6:before,
   .btn-6:after{
      content:'';
      position:absolute;
      top:0;
      right:0;
      height:2px;
      width:0;
      background: #ffa600;
      box-shadow:
      -1px -1px 5px 0px #fff,
      7px 7px 20px 0px rgb(255, 255, 255),
      4px 4px 5px 0px rgb(255, 255, 255);
      transition:1ms ease all;
   }
   .custom-btn {
	   width: 160px;
	   height: 50px;
	   color: rgb(0, 0, 0);
	   border-radius: 5px;
	   padding: 10px 25px;
	   font-family: 'Lato', sans-serif;
	   font-weight: 500;
	   background: transparent;
	   cursor: pointer;
	   transition: all 0.3s ease;
	   position: relative;
	   display: inline-block;
	   box-shadow:inset 2px 2px 2px 0px rgb(255, 255, 255),
	   7px 7px 20px 0px rgb(255, 255, 255),
	   4px 4px 5px 0px rgb(255, 255, 255);
	   outline: none;
   }
   .btn-6:after{
	   right:inherit;
	   top:inherit;
	   left:0;
	   bottom:0;
   }
   .mainbtn{
      width: 200px;
      height: 35px;
      border: none;
      background-color: #ffa600;
      border-radius: 4px;
      color: white;
      margin-left: 30%;
   }
</style>

<body>
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