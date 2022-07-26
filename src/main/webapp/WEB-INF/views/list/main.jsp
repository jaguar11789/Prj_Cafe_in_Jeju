<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bootstrap demo</title>

    <!-- 폰트 -->

    <!-- 불러오는 css/js  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.js"></script>
    <link rel="stylesheet" href="../resources/css/main.css" />
	<script src="../resources/js/main.js"></script>
    <style></style>
  </head>
  <body>
    <header>
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
                  <a href="../list/main"
                    ><img src="../resources/img/logo2.png" alt=""
                  /></a>
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
        	<a href="../list/main">
          		<li><img class="logo" src="../resources/img/logo2.png" alt="" /></li>
          	</a>
        </ul>

        <ul class="user">
          <li class="">
            <a href="../mypage/user_mypage"><img class="img" src="../resources/img/user.png" alt="" /></a>
          </li>
        </ul>
      </div>
      <hr />
    </header>
    <div>
      <!-- https://kutar37.tistory.com/entry/%EC%8A%AC%EB%9D%BC%EC%9D%B4%EB%93%9C%EC%87%BC-%EA%B5%AC%ED%98%84-cssjavascriptjquery -->
      <!-- 슬라이드 사진 -->
      <div class="slideshow-container">
        <div class="mySlides fade">
          <img src="../resources/mainimg/coffee4.jpg" style="width: 100%" />
        </div>

        <div class="mySlides fade">
          <img src="../resources/mainimg/coffee4.jpg" style="width: 100%" />
        </div>

        <div class="mySlides fade">
          <img src="../resources/mainimg/coffee4.jpg" style="width: 100%" />
        </div>
      </div>
      <br />

      <div style="text-align: center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
      </div>
      <!-- 키페추천 -->
      <br />
      <div class="Kategorie">
        <div id="grid">
          <div class="user_commend">주인님을 위한 카페</div>
          <div>
            <a class="teg" href="">teg</a>
          </div>
          <br />
          <div class="cafe_commend">
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소 : 대한민국</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
          </div>
        </div>
        <div class="users">
          <p class="all_cafe">전체카페</p>
          <div>
            <a class="teg" href="">teg</a>
          </div>
          <br />
          <div class="cafe_commend">
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
          </div>
          <div class="cafe_commend">
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">카페명 : 스벅</p>
              <p>주소</p>
            </span>
          </div>
        </div>
      </div>
    </div>

    <script>
    var slideIndex = 1
    showSlides(slideIndex)

    function plusSlides(n) {
      showSlides((slideIndex += n))
    }

    function currentSlide(n) {
      showSlides((slideIndex = n))
    }

    function showSlides() {
      var i
      var slides = document.getElementsByClassName('mySlides')
      var dots = document.getElementsByClassName('dot')

      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = 'none'
      }
      slideIndex++
      if (slideIndex > slides.length) {
        slideIndex = 1
      }

      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(' active', '')
      }
      slides[slideIndex - 1].style.display = 'block'
      dots[slideIndex - 1].className += ' active'
      setTimeout(showSlides, 5000) // Change image every 2 seconds
    }
    </script>
  </body>
</html>
