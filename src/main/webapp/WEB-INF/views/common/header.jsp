<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/header.css" />
  </head>

  <body>
    <header>
      <div class="container_header">
        <div class="menu">
          <input type="checkbox" id="menuicon" />
          <label for="menuicon">
            <span class="first_bar"></span> 
            <span class="second_bar"></span> 
            <span class="third_bar"></span>
          </label>
          <div class="sidebar">
            <div class="category">
              <ul class="category_logo">
                <li class="menu_logo">
                  <a href="../list/main"
                    ><img src="../resources/img/logo2.png" alt=""
                  /></a>
                </li>
                <li class="menu_local">
                  <a  href="./jeju_detail"><font>제주</font></a>
                </li>
                <li class="menu_local">
                  <a  href="./aewol_detail"><font>애월</font></a>
                </li>
                <li class="menu_local">
                  <a href="./hanlim_detail"><font>한림</font></a>
                </li>
                <li class="menu_local">
                  <a href="./hangyong_detail"><font>한경</font></a>
                </li>
                <li class="menu_local">
                  <a href="./daejung_detail"><font>대정</font></a>
                </li>
                <li class="menu_local">
                  <a href="./anduck_detail"><font>안덕</font></a>
                </li>
                <li class="menu_local">
                  <a href="./seogipo_detail"><font>서귀포</font></a>
                </li>
                <li class="menu_local">
                  <a href="./namwon_detail"><font>남원</font></a>
                </li>
                <li class="menu_local">
                  <a href="./pyoseon_detail"><font>표선</font></a>
                </li>
                <li class="menu_local">
                  <a href="./sungsan_detail"><font>성산</font></a>
                </li>
                <li class="menu_local">
                  <a href="./gujwa_detail"><font>구좌</font></a>
                </li>
                <li class="menu_local">
                  <a href="./jocheon_detail"><font>조천</font></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <ul class="navar_logo">
          <a href="../list/main">
            <li class="img_logo">
              <img class="logo" src="../resources/img/logo2.png" alt="" />
            </li>
          </a>
        </ul>
        <ul class="join_login">
          <li class="login_logout_join">
            <!-- login이 되었을때 logout으로 표시 전환 -> logout 되었을대 login표시 전환 -->
            <!-- id가 null이 아닐때 -> login상태 -->
             <c:choose>
                <c:when test="${id ne null || busi_num ne null}">
                  <button class="login">
                    <a href="../main/logout">logout</a>
                  </button>
                </c:when>
                <c:otherwise>
                   <button class="logout">
                    <a href="../login/login">login</a>
                  </button>
                </c:otherwise>
          </c:choose>
          <!-- id가 null이 아닐때 -> login 상태 join창은 사라지도록 함 -->
          <c:choose>
                <c:when test="${id ne null || busi_num ne null }">
                   
                </c:when>
                <c:otherwise>
                   <button class="join">
                    <a href="../join/join">join</a>
                  </button>
                </c:otherwise>
          </c:choose>
             
          </li>
        <ul class="user">
        
        <!-- login전에 유저 사진 x -->
          <li class="user_img">
   
             <c:choose>
                <c:when test="${id ne null || busi_num ne null }">
                   <a href="../mypage/user_mypage"><img class="img" src="../resources/img/user.png" alt="" /></a>
                </c:when>
                <c:otherwise>
                    <!-- 유저 로그인 전에는 걍 아무것도 안보여주기 -->
                </c:otherwise>
          </c:choose>            
          </li>         
        </ul>
        </ul>

      </div>
    </header>
    <br /><br /><br /><br />
  </body>
</html>
