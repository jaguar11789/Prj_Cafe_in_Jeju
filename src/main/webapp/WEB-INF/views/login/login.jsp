<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
      margin-top: 60px;
      padding: 20px;
    }

    #joinform {
      /* border: 5px solid greenyellow; */
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 0px;

    }
    #a_container{
        display: flex;
        justify-content: center;
        align-content: space-between;
        font-size: small;
        margin: 0;
        /* border: 1px solid red; */
        
        
    }
    .find_id {
        margin: 0;
        padding-right: 15px;
        color: gray;
    }
    .find_pw {
        margin: 0;
        color: gray;  
    }
    .do_join {
        padding-left: 105px;
        color: gray;
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
    

    .input_label {
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      font-weight: bold;
      color: rgb(73, 69, 69);
      font-size: small;
    }

    .input_button_login {
      margin-top: 0.5em;
      border: none;
      border-radius: 3px;
      background-color: orange;
      width: 19.5rem;
      height: 40px;
      color: white;
      
    }
    #grid{
    	margin-top: 10%; 
    }


  </style>

  <body>
    
   <div id="grid">
      <!-- logo -->
      <div id="logo">
        <a href="../list/main"><img src="../resources/img/logo2.png"></a>
      </div>
      
      <!-- display : flex 를 위한 div-->
        <div id="joinform">
                <!-- joinform의 input, label 태그 -->
                <div id="input_container">
                    <label for="" class="input_label">아이디</label> <br>
                    <input type="text" class="input_value" value=" 아이디를 입력해주세요."> <br>
                    <label for="" class="input_label">비밀번호</label> <br>
                    <input type="text" class="input_value" value=" 비밀번호를 입력해주세요."> <br>
                    <input type="submit" class="input_button_login" value="로그인"> <br> <br>
                </div>
        </div>

        <div id="a_container">
            <a href="#" class="find_id">ID찾기</a> 
            <a href="#" class="find_pw">비밀번호 찾기</a> 
            <a href="../join/join" class="do_join">회원가입</a>
         </div>


  </div>
    

  </body>
</html>