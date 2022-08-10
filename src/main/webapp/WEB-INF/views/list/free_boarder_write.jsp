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
	<form action="boarderwrite" method="post" enctype="Multipart/form-data">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="ftitle" width="100px"  /></td>
			</tr>
			<tr>
				<td>본문</td>
				<td><textarea name="fcontent" id="" cols="70" rows="10"></textarea></td>
			</tr>
			<tr>
				<td>첨부</td>
				<td><input multiple type="file" name="ffile" /></td>
			</tr>
			<tr>
				<td>
				<input type="submit" value="글쓰기" class="boarder_write" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>


