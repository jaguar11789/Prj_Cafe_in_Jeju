<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<!-- !사용자페이지css -->
<link rel="stylesheet" href="../resources/css/mypage/mypage_user.css" />
</head>
<body>

	<!-- 본문 가보자고! -->
	<main>
		<section class="borderline_bottom">
			<h2>내정보</h2>
			<div class="userprofile borderline_top">
				<div class="userimg">
					<img src="../resources/img/user.png" alt="userimg" class="profileimg" />
				</div>
				<div class="userinfo">
					<ul>
						<li>가라미(계정명)</li>
						<a href="../modify/user_modify_info">
							<li>개인정보 수정</li>
						</a>
					</ul>
				</div>
			</div>
		</section>

		<!-- !최근본 카페 영역 -->
		<section class="cafelist borderline_bottom">
			<h2>최근 본 카페</h2>
<%-- 			<c:when test="${recentcafe }" var="recent"> --%>
				<div class="recentCafe">
					<div class="cafeimg">
						<!-- !주소단에 카페이름 들어가 줘야함 -->
						<!-- <a href="./list/cafe_info_detail?cafename"> -->
						<a href="#"> <img src="../resources/img/cafe.jpg" alt="cafeimg"
							class="recentcafeimg" />
						</a>
					</div>
					<div class="cafeinfo">
						<ul>
							<!-- <a href="./list/cafe_info_detail?cafename"> -->
							<a href="#">
								<li>라미네(카페이름)</li>
							</a>
							<!-- <a href="./list/cafe_info_detail?cafename"> -->
							<a href="#">
								<li>경기도 용인시 처인구(카페주소)</li>
							</a>
						</ul>
					</div>
				</div>
<%-- 			</c:when> --%>
		</section>

		<section class="cafelist borderline_bottom">
			<h2>찜한 카페</h2>
			<div class="likeCafe">
				<div class="cafeimg">
					<!-- !주소단에 카페이름 들어가 줘야함 -->
					<!-- <a href="./list/cafe_info_detail?cafename"> -->
					<a href="#"> <img src="../resources/img/cafe.jpg" alt="cafeimg"
						class="recentcafeimg" />
					</a>
				</div>
				<div class="cafeinfo">
					<ul>
						<!-- <a href="./list/cafe_info_detail?cafename"> -->
						<a href="#">
							<li>라미네(카페이름)</li>
						</a>
						<!-- <a href="./list/cafe_info_detail?cafename"> -->
						<a href="#">
							<li>경기도 용인시 처인구(카페주소)</li>
						</a>
					</ul>
				</div>
			</div>
		</section>
	</main>
</body>
</html>

