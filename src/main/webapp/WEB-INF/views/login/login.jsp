<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <title>Document</title>
  </head>

  <!-- css -->
  <style>
    
    #grid{
    	margin-top: 10%;
    }
    #logo {
      /* border: 5px solid pink; */
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 20px;
      margin-top: 60px;
      padding: 20px;
    }

    #loginformdiv {
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
    #a_container2{
        display: flex;
        justify-content: center;
        align-content: space-between;
        font-size: small;
        margin: 0;
        margin-top:20px;
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
    .business_login{
    	color: blue;
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
      cursor: pointer;
      
    }
    
    #msg{
    	margin-left: 60px;
    	color: red;
    	font-weight: bold;
    }


  </style>

  <body>
    
   <div id="grid">
      <!-- logo -->
      <div id="logo">
        <a href="../list/main"><img src="../resources/img/logo2.png"></a>
      </div>
      <!-- display : flex 를 위한 div-->
        <div id="loginformdiv">
                <!-- joinform의 input, label 태그 -->
                <div id="input_container">
                 <!-- form - controller의 login_session 함수 실행  / onsubmit - return login_check() function 동작 -->
            <!-- return이 붙는 이유는 login_check함수에서 return하는 값에 따라 action을 취할지 말지 정해줌. return이 없으면 뭔짓거리를 하던 액션을함 -->
                  <form action="login_user_session" method="post" onsubmit="return login_check();">
                    <label for="" class="input_label">아이디</label> <br>
                    <input type="text" id="id" name="id" class="input_value" placeholder=" 아이디를 입력해주세요."> <br>
                    <label for="" class="input_label">비밀번호</label> <br>
                    <input type="text" id="pwd" name="pwd" class="input_value" placeholder=" 비밀번호를 입력해주세요."> <br>
                    <input type="submit" id="submit_btn" class="input_button_login" value="LOGIN"> <br> <br>
                     <!-- span태그에 로그인 실행 결과를 나타내줌 -->
                     <span id="msg"></span>
                   </form>
                </div>
        </div>

        <div id="a_container">
            <a href="#" class="find_id">ID찾기</a> 
            <a href="#" class="find_pw">비밀번호 찾기</a> 
            <a href="../join/join" class="do_join">회원가입</a>
         </div>
         <div id="a_container2">
         	<a href="../login/business_login" class="business_login">사업자이신가요? 사업자로그인 하러가기</a>
         </div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
			function login_check() {
				var user_id = $("#id").val();
				var user_pwd = $("#pwd").val();
				var alldata = { user_id : user_id , user_pwd : user_pwd };
				var checkbool = false; // ajax안에서는 return 불가
				
				$.ajax({
					type:"post",
					url:"<%=path %>/login/loginUserCheck",
					data: alldata,
					dataType:"text",
					async: false, //비동기식 기본값 true임. false로 강제로 동기식으로 전환해줌
					success: function(result){
						console.log(result);
						
						if(result == "true"){
							checkbool = true;
						}else {
							$("#msg").html("로그인에 실패하였습니다.");
						}
					}
				});
				
				return checkbool;
			}
		</script>
  </div>
    

  </body>
</html>