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
    <!-- !jeader.css -->
    <!-- !사용자페이지css -->
    <link rel="stylesheet" href="../resources/css/mypage/mypage_business.css" />
  </head>
  <body>
    <!-- !header -->
 

    <!-- 본문 가보자고! -->
    <main>
      <section class="borderline_bottom">
        <h2>내정보</h2>
        <div class="userprofile borderline_top">
          <div class="userimg">
            <img src="../resources/img/user_bsy.jpg" alt="userimg" class="profileimg" />
          </div>
          <div class="userinfo">
            <ul>
              <li>사업자명</li>
              <a href="../modify/business_modify">
                <li>개인정보 수정</li>
              </a>
            </ul>
          </div>
          <div class="btnbox">
            <button type="button" class="btn">카페정보등록</button>
          </div>
        </div>
      </section>

      <!-- !최근본 카페 영역 -->
		<section class="cafelist borderline_bottom">
			<h2>내카페</h2>

			<div class="myCafe ">
				<div class="cafeimg">
					<!-- !주소단에 카페이름 들어가 줘야함 -->
					<!-- <a href="./list/cafe_info_detail?cafename"> -->
					<a href="#"> <img src="../resources/img/cafe.jpg"
						alt="cafeimg" class="recentcafeimg" />
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
				<div class="btnbox">
					<button type="button" class="btn">카페정보수정</button>
				</div>
			</div>
		</section>
		
				<section class="cafelist borderline_bottom">
			<h2>내카페</h2>

			<div class="myCafe ">
				<div class="cafeimg">
					<!-- !주소단에 카페이름 들어가 줘야함 -->
					<!-- <a href="./list/cafe_info_detail?cafename"> -->
					<a href="#"> <img src="../resources/img/cafe.jpg"
						alt="cafeimg" class="recentcafeimg" />
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
				<div class="btnbox">
					<button type="button" class="btn">카페정보수정</button>
				</div>
			</div>
		</section>


	</main>
  </body>
</html>
