<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet"
	href="../resources/css/list/free_boarder/free_boarder_content.css" />
</head>
<body>
	<div class="fb_view">
		<div class="fb_title">
			<li>${freeboarderdto.ftitle }</li>
			<li></li>
		</div>
		<br />
		<div class="fb_addinfo">
			<li>아이디: ${freeboarderdto.user_num } 조회수: ${freeboarderdto.fhit }</li>
			<li>작성일: ${freeboarderdto.fdate }</li>
		</div>
		<br />
		<div class="fb_content">

			<li>${freeboarderdto.fcontent }</li>
		</div>
		<c:forEach items="${images }" var="images">
			<div class="fb_photo">
				<img src="../resources/upload/${images.fbchgfile }" width="150px"
					height="150px" alt="sd" />
			</div>
		</c:forEach>
		<div class="fb_write">
			<li><a href="./free_boarder"><button>목록</button></a></li>
			<li><a href="freeboarderdelete?fnum=${freeboarderdto.fnum }"><button>삭제</button></a>
			</li>
			<li><a
				href="./free_boarder_modify?fnum=${freeboarderdto.fnum }&user_num=${freeboarderdto.user_num}
			&ftitle=${freeboarderdto.ftitle}&fcontent=${freeboarderdto.fcontent}"><input
					type="button" value="수정" /></a></li>
		</div>
		<br />
		<!-- 댓글 시작 -->
		<hr />
		<form action="free_boarder_content">
			<table>
				<tr>
					<td><textarea name="frcontent" id="" cols="100" rows="10"></textarea>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="글쓰기" /></td>
				</tr>
				<tr>
					<td>${freereplydto.fcontent }</td>
					<td>${freereplydto.user_num }</td>
					<td>${freereplydto.fdate }</td>
				</tr>
			</table>
		</form>



		<!-- 댓글 끝 -->
</body>
</html>


