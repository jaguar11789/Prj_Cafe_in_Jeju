<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>제주도 1등 카페추천, Cafe:in_Jeju</title>
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- fullpage cdn -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.css"
    />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.js"></script>
    <link rel="stylesheet" href="./resources/css/index.css" />
    <script src="./resources/js/index.js"></script>
  </head>
  <body>
    <!--!header 들어갈 부분-->
    <header class="header">
      <div class="wrap">
        <!-- *마우스 호버시 내려오는 영역 -->
        <div class="logo">
          <span>
            <a href="./list/main">
              <img src="./resources/img/logo2.png" alt="logo_img" />
            </a>
          </span>
        </div>

        <!-- ?여기에 호버 발생하면 위에 헤더 부분 나오게 하기 -->
        <div class="dropdown">
          <!-- *화살표 이미지 삽입 -->
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="40"
            height="40"
            fill="currentColor"
            class="bi bi-caret-down-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"
            />
          </svg>
          <!-- *화살표 이미지 삽입 코드 end -->
        </div>

        <!-- *마우스 호버전 로고 보이게 -->
        <span class="logo">
          <a href="./list/main">
              <img src="./resources/img/logo2.png" alt="logo_img" />
            </a>
        </span>
      </div>
    </header>

    <!-- *fullpage 부분 -->
    <div class="fullpage container">
      <!-- page1 -->
      <div class="section s1">
        <div></div>
      </div>

      <!-- page2 -->
      <div class="section s2">
        <div>
          <img
            src="./resources/indeximg/jeju_map.png"
            usemap="#image-map"
            id="img_map"
            style="width: 100vw; height: 100vh"
          />
        </div>

        <!-- !링크에 이미지 넣기! -->
 <!--      </div>

      <footer class="section fp-auto-height"><h1>Footer</h1></footer>
    </div> -->
  </body>
</html>
