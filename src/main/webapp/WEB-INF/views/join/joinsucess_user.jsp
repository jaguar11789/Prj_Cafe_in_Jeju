<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 회원가입 완료 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <title>Document</title>
  </head>

  <!-- css -->
  <style>
    
    div {
      padding: 10px;
      /* border: 5px solid gray; */
    }

    #logo {
      /* border: 5px solid pink; */
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 20px;
      margin-top: 50px;
    }

    #pbox {
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .p1 {  
      padding-top: 30px;
      border-top: 3px solid lightgray;
      width: 500px;
      text-align: center;

    }
    .p2 {
      padding-bottom: 30px;
      border-bottom: 3px solid lightgray;
      width: 500px;
      text-align: center;
    }

    #button_container {
      /* border: 5px solid greenyellow; */
      padding: 0px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .input_button_use {
      padding: 0px;
      border: none;
      border-radius: 3px;
      background-color: orange;
      width: 19.5rem;
      height: 40px;
      color: white;
      text-decoration: none;
      cursor: pointer;
    }
   

  </style>

  <body>
    
   <div id="grid">
      <!-- logo -->
      <div id="logo">
        <a href="../list/main"><img src="../resources/img/logo2.png" ></a>
      </div>

      <div id="pbox">
        <div>  
          <p class="p1">${joinsucess_user.user_id }님 환영합니다.</p>
          <p class="p2">회원가입이 되었습니다.</p>
        </div>
      </div>
      
      <!-- display : flex 를 위한 div-->
      <div id="button_container">
        <!-- joinform의 input, label 태그 -->
          <div id="input_button">
            <button onclick="location.href='../list/main'" class="input_button_use">이용하러 가기</button>
          </div>
      </div>

  </div>
    

  </body>
</html>
