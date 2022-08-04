<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>카페인제주: 나만의 카페 검색</title>

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
                  <a href="./jeju_detail"><font>제주</font></a>
                </li>
                <li class="menu_local">
                  <a href="./aewol_detail"><font>애월</font></a>
                </li>
                <li class="menu_local">
                  <a href="./hanlim_detail"><font>한림</font></a>
                </li>
                <li class="menu_local">
                  <a href="./hangyoung_detail"><font>한경</font></a>
                </li>
                <li class="menu_local">
                  <a href="./daejung_detail"><font>대정</font></a>
                </li>
                <li class="menu_local">
                  <a href="./anduck_detail"><font>안덕</font></a>
                </li>
                <li class="menu_local">
                  <a href="./joongmoon_detail"><font>중문</font></a>
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
                <li><img class="logo" src="../resources/img/logo2.png" alt="" /></li>
             </a>
        </ul>
		<ul class="join_login">
          
          <li>
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
        </ul>
        <ul class="user">
        
        <!-- login전에 유저 사진 x -->
          <li class="">
          	<c:choose>
          		<c:when test="${id ne null }">
          			<a href="../mypage/user_mypage"><img class="img" src="../resources/img/user.png" alt="" /></a>
          		</c:when>
          		<c:when test="${busi_num ne null }">
          			<a href="../mypage/business_mypage"><img class="img" src="../resources/img/user.png" alt="" /></a>
          		</c:when>
          		<c:otherwise>
	          		 
          		</c:otherwise>
          </c:choose>
            
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
              <a href="./cafe_info_menu"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">투썸플레이스</p>
              <p>주소 : 대한민국</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">스타벅스</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">DESSERT 39</p>
              <p>주소</p>
            </span>
            <span>
              <a href="#"><img class="img1" src="../resources/mainimg/cafe.jpg" alt="" /></a>
              <p class="cafe_name">EDIYA</p>
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