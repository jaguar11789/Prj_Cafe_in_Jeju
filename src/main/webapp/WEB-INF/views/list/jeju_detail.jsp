<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="../resources/css/jeju_local_detail.css">
    </head>

    <body>
        <header>
            <link
                href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
                rel="stylesheet"
            />
            <!-- Custom styles for this template -->
            <!-- /      <link href="blog.css" rel="stylesheet" /> -->
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
                                    <a href="./main"
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
                    <li><img class="logo" src="../resources/img/logo2.png" alt="" /></li>
                </ul>

                <ul class="user">
                    <li class="">
                        <a href="login"
                            ><img class="img" src="../resources/img/user.png" alt=""
                        /></a>
                    </li>
                </ul>
            </div>
        </header>
    <!-- https://kutar37.tistory.com/entry/%EC%8A%AC%EB%9D%BC%EC%9D%B4%EB%93%9C%EC%87%BC-%EA%B5%AC%ED%98%84-cssjavascriptjquery -->
    <!-- 슬라이드 사진 -->
    <div class="event">
      <div class="btn-group" role="group" aria-label="Basic example">
                <button type="button" class="btn1 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >제주</font>
                </button>
                <button type="button" class="btn2 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >애월</font>
                </button>
                <button type="button" class="btn3 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >한림</font>
                </button>
                <button type="button" class="btn4 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >한경</font>
                </button>
                <button type="button" class="btn5 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >대정</font>
                </button>
                <button type="button" class="btn6 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >안덕</font>
                </button>
                <button type="button" class="btn7 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >중문</font>
                </button>
                <button type="button" class="btn8 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >서귀포</font>
                </button>
                <button type="button" class="btn9 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >남원</font>
                </button>
                <button type="button" class="btn10 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >표선</font>
                </button>
                <button type="button" class="btn11 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >성산</font>
                </button>
                <button type="button" class="btn12 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >구좌</font>
                </button>
                <button type="button" class="btn13 btn-primary">
                    <font style="color: orange; font-size: 25px; font-weight: bold;" >조천</font>
                </button>
            </div>
      <div class="slideshow-container">
        <div class="mySlides fade">
          <img src="../resources/img/coffee4.jpg" style="width: 100%" />
        </div>

        <div class="mySlides fade">
          <img src="../resources/img/coffee4.jpg" style="width: 100%" />
        </div>

        <div class="mySlides fade">
          <img src="../resources/img/coffee4.jpg" style="width: 100%" />
        </div>
        
        <div class="dot3" style="text-align: center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <!-- 지역별 버튼 -->
            
      
      </div>
      
      
            
        </div>    
    <!-- 카페설명 -->
    <div class="container-goods">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td><a href="./cafe_info_menu"><img src="../resources/img/cafe.jpg" style="max-width: 100%; height: auto;" alt=""></a></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td style="font-size: 30px; font-weight: bolder;">카아페이르음</td>
                    </tr>
                    <tr>
                        <td style="font-size: 25px;">카페주소:경기도 수원시 장안구 천천동 래미안 104동 ####호</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="container-goods">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td><img src="../resources/img/cafe.jpg" style="max-width: 100%; height: auto;" alt=""></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td style="font-size: 30px; font-weight: bolder;">카아페이르음</td>
                    </tr>
                    <tr>
                        <td style="font-size: 25px;">카페주소:경기도 수원시 장안구 천천동 래미안 104동 ####호</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="container-goods">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td><img src="../resources/img/cafe.jpg" style="max-width: 100%; height: auto;" alt=""></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td style="font-size: 30px; font-weight: bolder;">카아페이르음</td>
                    </tr>
                    <tr>
                        <td style="font-size: 25px;">카페주소:경기도 수원시 장안구 천천동 래미안 104동 ####호</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="container-goods">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td><img src="../resources/img/cafe.jpg" style="max-width: 100%; height: auto;" alt=""></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td style="font-size: 30px; font-weight: bolder;">카아페이르음</td>
                    </tr>
                    <tr>
                        <td style="font-size: 25px;">카페주소:경기도 수원시 장안구 천천동 래미안 104동 ####호</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    <script>
var slideIndex = 0
      showSlides()

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