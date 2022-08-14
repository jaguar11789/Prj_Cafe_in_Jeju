<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<!-- *user_modify 공통 css -->
<link rel="stylesheet" href="../resources/css/modify/user_modify.css">
<!-- CDN -->

</head>



<body>
	<div id="grid">
		<ul>
			<h2>
				<b style="color: #444444;">내 정보관리</b>
			</h2>
			<br />
			
			<li><a href="user_modify_info" style="color: #444444;">개인정보 변경</a><br></li>
			<li><a href="user_modify_pwd" style="color: #444444;"><b>비밀번호 변경</b></a><br></li>
			<li><a href="user_modify_sec" style="color: #444444;">회원탈퇴</a></li>
		</ul>

    
		<div class="gridinfo">


			<div class=" border_underline">
				<h3> 비밀번호 변경</h3>
			</div>

			<div>
				<form action="user_modify_pwd" method="post" onsubmit=" pwdConfirm();">
					<div class="modify_form">
						<ul>
							<li><b>비밀번호 입력</b></li>
							<li><input type="password" name="pwd"  id="pwd" placeholder="변경할 비밀번호를 입력해 주세요" size="30"></li>
							<li><b>비밀번호 확인</b></li>
							<li><input type="password" name="pwd2" id="pwd2" placeholder="비밀번호를 확인해 주세요" size="30"></li>
							<li>
								<input type="submit" class="modify_confirm" value="비밀번호 변경" >
							</li>
						</ul>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script>
		function pwdConfirm(){		
			var pwd = document.getElementById( 'pwd' ).value;
	        var pwd2 = document.getElementById( 'pwd2' ).value;
	       if(pwd != pwd2){
	    	   alert("비밀번호가 일치하지 않습니다.");
	       }

		}
			
		
	</script>


</body>
</html>