<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String id = (String)session.getAttribute("id");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
<meta name="generator" content="Hugo 0.98.0" />
<title>vscode수정</title>

<!-- *jquery -->
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- *user_modify 공통 css -->
<link rel="stylesheet" href="../resources/css/modify/user_modify.css">
<!-- CDN -->

</head>


<body>
	<div id="grid">
		<ul>
			<h2>
				<b style="color: #444444;">내 정보관리</b>
			</h2> <br />
			
			<li><a href="user_modify_info" style="color: #444444;">개인정보 변경</a><br></li>
			<li><a href="user_modify_pwd" style="color: #444444;">비밀번호 변경</a><br></li>
			<li><a href="user_modify_sec" style="color: #444444;"><b>회원탈퇴</b></a></li>
		</ul>

    
		<div class="gridinfo">

			<div class=" border_underline">
				<h3>개인정보 변경</h3>
			</div>
			<div div class="modify_form text">
				<ul>
					<li>
						고객님의 개인정보 보호를 위해 비밀번호 확인을 진행합니다.
					</li>
				</ul>
			</div>

			<div>
				<form action="usersec_modify" method="post" onsubmit="return checkPassword();">
					<div class="modify_form">
						<ul>
							
							<li><b>비밀번호 입력</b></li>
							<li><input type="password" name="pwd" placeholder="비밀번호를 입력해 주세요" size="30">
							
							</li>
							<!-- <li><b>비밀번호 확인</b></li>
							<li><input type="password" name="pwd2" placeholder="비밀번호를 확인해 주세요" size="30"></li> -->
							<li>
								<input type="submit" class="modi_btn" value="확인">
							</li>
						</ul>
					</div>
				</form>
			</div>
		</div>
	</div>




	
<script>
	function checkPassword() {
		var pwd=$('input[name=pwd]').val();
		var checkbool = false;
		alert("신호신호신호");
			
		$.ajax({
			type:"post",
			url:"<%=path%>/modify/pwdCheck",
			data : {pwd:pwd},
			dataType:"text",
			async: false,
			success: function(result){
				console.log(result);
				
				if(result == "pass"){
					checkbool = true;
				}
				else{
					alert('비밀번호불일치');
				}
			}
			
		});
		return checkbool;
	}
	
</script>

</body>
</html>