<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path=request.getContextPath();
%>
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
    .id_ok, .nickname_ok, .pwd_ok{
    	color: #6A82FB; display: none;
    }
    .id_already, .nickname_already, .pwd_no{
    	color:red;
    	display:none;
    }
    #msg{
    	margin-left: 60px;
    	color: red;
    	font-size: 13px;
    	font-weight: bold;
    }
    
  </style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
    function checkId(){
        var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
        
        if(id.length > 5)
   		{
        	$.ajax({
                url:'<%=path %>/join/idCheck', //Controller에서 인식할 주소
                type:'post', //POST 방식으로 전달
                data:{id:id},
                dataType:'text', // String
                success:function(check){
                    console.log(check);//f12 눌렀을때 콘솔에 뜸
                    if(check == 'ok'){
                    	$('.id_ok').css("display","inline-block");
                        $('.id_already').css("display", "none"); 
                    } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                        $('.id_already').css("display","inline-block");
                        $('.id_ok').css("display", "none");
                    }
                },
                error:function(){
                    alert("");
                }
            });
        }
    };
    
    function checkNick(){
        var nickname = $('#nickname').val(); //id값이 "id"인 입력란의 값을 저장
        
        if(nickname.length > 3)
   		{
        	$.ajax({
                url:'<%=path %>/join/checkNickname', //Controller에서 인식할 주소
                type:'post', //POST 방식으로 전달
                data:{nickname:nickname},
                dataType:'text', // String
                success:function(check){
                    console.log(check);//f12 눌렀을때 콘솔에 뜸
                    if(check == 'ok'){
                    	$('.nickname_ok').css("display","inline-block");
                        $('.nickname_already').css("display", "none"); 
                    } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                        $('.nickname_already').css("display","inline-block");
                        $('.nickname_ok').css("display", "none");
                    }
                },
                error:function(){
                    alert("");
                }
            });
        }
    };
    
    $(function(){/*비밀번호 확인*/	
    	$('#pwd2').blur(function(){	  
    		if($('#pwd1').val() != $('#pwd2').val()){	    	
    			if($('#pwd2').val() != ''){		    
    				//alert("비밀번호가 일치하지 않습니다.");	    	    
	    			$('#pwd2').val('');	          
	    			$('#pwd2').focus();
	    			$('.pwd_no').css("display","inline-block");
	                $('.pwd_ok').css("display", "none");      
    			} 
    			} else{
    				$('.pwd_ok').css("display","inline-block");
                    $('.pwd_no').css("display", "none"); 
    		}	
    	})  	   	
    });
    
    function checkEmail(){   
    	alert('신호');
    	const email = $('#businessemail').val(); //이메일 주소값 얻어오기
    	console.log('완성된 이메일 : ' + email); //이메일 오는지 콘솔창으로 확인
    	
    	
    	$.ajax({
    		type:'post',
    		url: '<%=path %>/join/checkEmail',
    		data: {email:email},
    		dataType: "text",
    		async: false,
    		success:function(data){
    			console.log("data : " + data);
    			
    			$("#code").html(data);
    			console.log("code : " + code);
    			alert('인증번호가 전송되었습니다.');
    			
    		}
    	}); // end ajax
			
    }; // end send email
    
    // 인증번호 비교 
    
    
    function joinCheck() {
		var emailcode = $("#input_value_code").val();
		console.log($("#code").html());
		
		
		if(emailcode == $("#code").html()){
    		return true;
			
    	}else{
    		$("#msg").html("인증번호를 다시 확인해주세요.");
    		return false;
			
    		
    	}
		
	}
    
</script>


  <body>
    
   <div id="grid">
      <!-- logo -->
      <div id="logo">
        <a href="../list/main"><img src="../resources/img/logo2.png" width="200px" height="60px"></a>
      </div>
      
      <form action="businessjoinsucess" method="post" onsubmit="return joinCheck();">
      <!-- display : flex 를 위한 div-->
      <div id="joinform">
        <!-- joinform의 input, label 태그 -->
        <div id="input_container">
            <label for="" class="input_label">아이디</label> <br>
            <input type="text" id="id" name="businessid" maxlength="20" class="input_value" placeholder=" 아이디를 입력해주세요.(7 ~ 20자)" oninput="checkId();" required> <br>
            <span class="id_ok">사용 가능한 아이디입니다.</span>
			<span class="id_already">중복된 아이디입니다.</span><br />
			
			
            <label for="" class="input_label">비밀번호</label> <br>
            <input type="password" id="pwd1" name="businesspwd" class="input_value" placeholder=" 비밀번호를 입력해주세요." required> <br>
            
            <label for="" class="input_label">비밀번호확인</label> <br>
            <input type="password" id="pwd2" class="input_value" placeholder=" 비밀 번호를 입력해주세요." oninput="checkPwd();" required> <br>
            <span class="pwd_ok">비밀번호가 일치합니다.</span>
			<span class="pwd_no">비밀번호가 일치하지 않습니다.</span><br />
            
            <label for="" class="input_label">이름</label> <br>
            <input type="text" name="businessname" class="input_value" placeholder=" 이름을 입력해주세요."> <br>
            
            
            <label for="" class="input_label">닉네임</label> <br>
            <input type="text" id="nickname" name="businessnickname" maxlength="10" class="input_value" placeholder=" 닉네임을 입력해주세요." oninput="checkNick();" required> <br>
            <span class="nickname_ok">사용 가능한 닉네임입니다.</span>
			<span class="nickname_already">중복된 닉네임입니다.</span><br />
            
            
            <label for="" class="input_label">휴대폰</label> <br>
            <input type="text" name="businesspnum" class="input_value" placeholder=" 휴대폰번호를 입력해주세요."> <br>
            
            
            <label for="" class="input_label">사업자 등록번호</label> <br>
            <input type="text" class="input_value" name="businessreginum" placeholder=" 사업자등록번호를 입력해주세요."> <br>
            
            
            <label for="" class="input_label">이메일</label> <br>
            <input type="text" name="businessemail" id="businessemail" class="input_value" placeholder=" 이메일을 입력해주세요."> <br>
            
            <input type="text" id="input_value_code" class="input_value_code" placeholder=" 인증번호 6자리를 입력해주세요."> 
            <input type="button" id="mail-Check-Btn" class="input_button_code" value="본인인증" onclick="return checkEmail();"> <br />
            <span id="mail-check-warn"></span>
            
            <span id="code" style="display: none"></span>
            <span id="msg"></span> <br />
            
            <input type="submit" class="input_button_join" value="가입하기">
            <!-- <input type="submit" class="input_button_join" value="가입하기"> -->
          
         </div>

      </div>
	</form>
  </div>
    

  </body>
</html>
