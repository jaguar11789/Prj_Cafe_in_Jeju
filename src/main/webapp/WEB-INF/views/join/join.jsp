<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 회원가입 선택 -->
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
    #grid{
        margin-top: 7%;
    }
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

    #button_container {
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .p1 {  
      padding-top: 30px;
      width: 500px;
      text-align: center;

    }
    .p2 {
      padding-bottom: 30px;
      width: 500px;
      text-align: center;
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

      <!--회원가입 버튼 선택 사용자&사업자용 -->
      <div id="button_container">
        <div>
        	
          <p class="p1"><button onclick="location.href='./user_join'" class="input_button_use">사용자로 회원가입</button></p>
          <p class="p2"><button onclick="location.href='./business_join'" class="input_button_use">사업자로 회원가입</button></p>
        </div>
      </div>

    </div>
  
  </body>
</html>