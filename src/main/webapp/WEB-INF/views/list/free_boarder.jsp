<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>free_boarder</title>
<link rel="stylesheet" href="../resources/css/list/free_boarder.css">
</head>
<body>
	<br />
	<br />
	<br />
	<div>

			<h1 class="free_boarder_main_title">
				자유게시판
			</h1>
		<table class="free_boarder_table" border="1px solid #808080">
			<tr>
				<td class="table_no">
					<p>NO</p>
				</td>
				<td class="table_title">
					<p>제목</p>
				</td>
				<td class="table_user">
					<p>작성자</p>
				</td>
				<td class="table_date">
					<p>날짜</p>
				</td>
				<td class="table_hit">
					<p>조회</p>
				</td>
			</tr>
			<c:forEach items="${free_boarder }" var="dto">
				<tr>
					<td>${dto.fnum}</td>
					<td>
					<a href="free_boarder_content?fid=${dto.fnum }">${dto.ftitle}</a>
					</td>
					<td>${dto.fid}</td>
					<td>${dto.fdate}</td>
					<td>${dto.fhit}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="boarder_sherch">
			<c:if test="${searchVo.totPage>1 }">
				<c:if test="${searchVo.page>1 }">
					<a href="free_boarder?page=1">[처음]</a>
					<a href="free_boarder?page=${searchVo.page-1 }">[이전]</a>
				</c:if>
				<c:forEach begin="${searchVo.pageStart }" end="${searchVo.pageEnd }"
					var="i">
					<c:choose>
						<c:when test="${i eq searchVo.page }">
							<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
						</c:when>
						<c:otherwise>

							<a
								href="list?page=${i }&sk=${resk}&ftitle=${ftitle==true?'ftitle':''}&fcontent=${fcontent==true?'fcontent':''}"
								style="text-decoration: none">${i }</a>&nbsp;				
					</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${searchVo.totPage>searchVo.page }">
					<a href="list?page=${searchVo.page+1 }">[다음]</a>
					<a href="list?page=${searchVo.totPage }">[마지막]</a>
				</c:if>
			</c:if>

			<div>
				<c:choose>
					<c:when test="${ftitle }">
						<input type="checkbox" name="searchType" value="ftitle" checked />
						<%
							//나-2
						%>
					</c:when>
					<c:otherwise>
						<input type="checkbox" name="searchType" value="ftitle" />
					</c:otherwise>
				</c:choose>
				제목
				<c:choose>
					<c:when test="${fcontent }">
						<input type="checkbox" name="searchType" value="fcontent" checked />
					</c:when>
					<c:otherwise>
						<input type="checkbox" name="searchType" value="fcontent" />
					</c:otherwise>
				</c:choose>
				내용 <input type="text" name="sk" style="width: 150px;" maxlength="50"
					value="" /> <input type="submit" value="검색" />
			</div>

		</div>
		<form action="free_boarder_write" method="post" >
			<div class="free_boarder_write">
				<input type="submit" value="글쓰기">
			</div>
		</form>
		
	</div>


</body>
</html>