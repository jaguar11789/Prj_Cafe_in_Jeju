<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>

  <body>
    <header>
      <!-- 폰트 -->
      <link
        href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
        rel="stylesheet"
      />
      <link rel="stylesheet" href="../resources/css/header.css" />
      <div class="container">
        <div class="menu">
          <input type="checkbox" id="menuicon" />
          <label for="menuicon">
            <span></span>
            <span></span>
            <span></span>
          </label>
          <div class="sidebar">
            <div class="category">
              <ul>
                <li class="menu_logo">
                  <a href="../list/main"><img src="../resources/img/logo2.png" alt="" /></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>제주</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>애월</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>한림</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>한경</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>대정</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>안덕</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>중문</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>서귀포</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>남원</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>표선</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>성산</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>구좌</font></a>
                </li>
                <li class="menu_local">
                  <a href="#"><font>조천</font></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <ul class="navar_logo">
          <li>
            <a href="../list/main"> <img class="logo" src="../resources/img/logo2.png" alt="" /></a>
          </li>
        </ul>

        <ul class="user">
          <li class="">
            <a href="../mypage/user_mypage"> <img class="img" src="../resources/img/user.png" alt="" /></a>
          </li>
        </ul>
      </div>
    </header>
  </body>
</html>
