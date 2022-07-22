<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 사업자 회원가입 -->
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
    
    #logo {
      /* border: 5px solid pink; */
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 20px;
      margin-top: 50px;
      
    }
    #joinform {
      /* border: 5px solid greenyellow; */
      display: flex;
      justify-content: center;
      align-items: center;
    }
    div {
      padding: 10px;
      /* border: 5px solid gray; */
    }
    a {
      margin: 0px;
      padding: 0px;
      /* border-bottom: 1px solid black; */
    }
    .input_value{
      width: 19rem;
      height: 2rem;
      border: 2px solid lightgray;
      border-radius: 5px;
      color: gray; 
      margin-top: 0.5em;
      margin-bottom: 0.5em;
    }
    .input_value_code {
      width: 12.5rem;
      height: 1.8rem;
      border: 2px solid lightgray;
      border-radius: 5px;
      color: gray;
      margin-top: 0.5em;
      margin-bottom: 0.5em;
    }
    .input_label {
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      font-weight: bold;
      color: rgb(73, 69, 69);
      font-size: small;
    }
    
    .input_button_join {
      margin-top: 0.5em;
      border: none;
      border-radius: 3px;
      background-color: orange;
      width: 19.5rem;
      height: 40px;
      color: white;
      cursor: pointer;
    }
    .input_button_code {
      border: none;
      border-radius: 3px;
      background-color: orange;
      width: 6rem;
      height: 30px;
      color: white;
      cursor: pointer;
    }
  </style>

  <body>
    
   <div id="grid">
      <!-- logo -->
      <div id="logo">
        <a href="../list/main"><img src="../resources/img/logo2.png" width="200px" height="60px"></a>
      </div>
      
      <!-- display : flex 를 위한 div-->
      <div id="joinform">
        <!-- joinform의 input, label 태그 -->
        <div id="input_container">
          <form action="">
            <label for="" class="input_label">아이디</label> <br>
            <input type="text" class="input_value" value=" 아이디를 입력해주세요."> <br>
            <label for="" class="input_label">비밀번호</label> <br>
            <input type="text" class="input_value" value=" 비밀번호를 입력해주세요."> <br>
            <label for="" class="input_label">비밀번호확인</label> <br>
            <input type="text" class="input_value" value=" 비밀번호를 입력해주세요."> <br>
            <label for="" class="input_label">이름</label> <br>
            <input type="text" class="input_value" value=" 이름을 입력해주세요."> <br>
            <label for="" class="input_label">닉네임</label> <br>
            <input type="text" class="input_value" value=" 닉네임을 입력해주세요."> <br>
            <label for="" class="input_label">휴대폰</label> <br>
            <input type="text" class="input_value" value=" 휴대폰번호를 입력해주세요."> <br>
            <label for="" class="input_label">사업자 등록번호</label> <br>
            <input type="text" class="input_value" value=" 사업자등록번호를 입력해주세요."> <br>
            <label for="" class="input_label">이메일</label> <br>
            <input type="text" class="input_value" value=" 이메일을 입력해주세요."> <br>
            <input type="text" class="input_value_code" value=" 인증번호를 입력해주세요."> 
            <input type="button" class="input_button_code" value="인증번호 받기"> <br>
            <button class="input_button_join">가입하기</button>
            <!-- <input type="submit" class="input_button_join" value="가입하기"> -->
          </form>
         </div>

      </div>

  </div>
    

  </body>
</html>
