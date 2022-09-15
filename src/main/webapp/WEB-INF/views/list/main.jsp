<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>main</title>

    <!-- 불러오는 css/js  -->
    <link rel="stylesheet" href="../resources/css/main.css" />
   <script src="../resources/js/main.js"></script>
    <style></style>
  </head>
  <body>
 
    <div>
      <!-- https://kutar37.tistory.com/entry/%EC%8A%AC%EB%9D%BC%EC%9D%B4%EB%93%9C%EC%87%BC-%EA%B5%AC%ED%98%84-cssjavascriptjquery -->
      <!-- 슬라이드 사진 -->
      <div class="slideshow-container">
        <div class="mySlides fade">
          <img src="../resources/mainimg/main2.jpg" style="width: 100%" />
        </div>

        <div class="mySlides fade">
          <img src="../resources/mainimg/main1.jpg" style="width: 100%" />
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
      <div class="search">
      <form action="search-form" autocomplete="off">
      	<select name="type">
      		<option selected value="">검색 내용 선택</option>
      		<option value="title">제목</option>
      		<option value="content">내용</option>
      		<option value="writer">작성자</option>
      	</select>
      	<input type="text" name="keyword" value="" />
      	<input type="button" on/>
      
      </form>
      </div>
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