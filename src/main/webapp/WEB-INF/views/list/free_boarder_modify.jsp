<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../resources/css/list/free_boarder_write.css" />
</head>
<body>
	<form action="freemodify" method="post">
         <input type="hidden" name="fnum" value="${fnum }" />
         	<table >
         		<tr style="background-color: #d6d9dd; justify-content: baseline">
         			<td style="font-size: 20px; ">&emsp;&emsp;<input type="text" value="${ftitle }" name="mtitle"/></td>
         			<td style="font-size: 15px; padding: 12px 20px 0 0; text-align: right;"></td>
         		</tr>
         		<tr>
         			<td style="font-size: 15px; ">&emsp;&emsp;&emsp;${user_num }</td>
         			<td style="font-size: 15px; padding: 7px 20px 0 0; text-align: right;"></td>
         		</tr>
         		<tr>
         			<td colspan="2" style="padding: 20px 53px 20px 53px;">
         			<textarea name="mcontent" cols="100" rows="3" >${fcontent }</textarea>
         			</td>
         		</tr>
         		
	         		<tr>
	         			
	         		</tr>
         	</table>
						<input type="submit" value="수정" />
         	</form>
         		<div style="padding-left: 750px">
         			<a href="./free_boarder"><input type="button" value="취소" style="padding:0 10px 0 10px"/></a>&ensp;
         	   </div>
</body>
</html>


