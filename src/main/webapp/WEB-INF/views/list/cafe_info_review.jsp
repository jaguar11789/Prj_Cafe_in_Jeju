<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.98.0">
<title>Bootstrap demo</title>
<!-- CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.2/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg"
	color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">
<script src="../resources/js/scriptjsp.js"></script>
<link rel="stylesheet" href="../resources/css/list/cafe_info_review.css" />

<!--별점 value값 받기  -->
<script>
	function starValue(target) {
		alert("value" + target.value);
		var starScore = target.value;
		alert("starScore" + starScore);
	}
</script>
<style>
/* 창 늘리고 줄일시 사라짐 */
@media screen and (max-width: 1100px){
   #side-container{
      display: none;
   }
}
@media screen and (min-width: 1101px){
   #side-container{
      max-width:200px;
      border: none;
      background-color: #f6f6f6;
      align-items: baseline;
   }
}
</style>
</head>
<body>

   <div class="row justify-content-md-center" > <!--카드 - 수평  -->
      <div class="card mb-3" style="max-width:900px; border: none; ">
         <div class="row g-0">
            <div class="col-md-7">
               <img id="mainimg" src="../resources/listimg/cafe.jpg" class="img-fluid rounded-start" alt="..." height="800px">
               <hr />
               <div class="col-md-12">
                  <table>
                     <tr>
                        <td>
                           <img id="img1" src="../resources/listimg/cafe.jpg" class="img-fluid rounded-start" alt="..." width="700px">
                        </td>
                        <td>                        
                           <img id="img2" src="../resources/listimg/PJH_cafe.jpg" class="img-fluid rounded-start" alt="..." width="700px">
                        </td>
                        <td>
                           <img id="img3" src="../resources/listimg/PJH_cafe2.jpg" class="img-fluid rounded-start" alt="..." width="700px">
                        </td>
                     </tr>
                  </table>
               </div>
            </div>            
            <div class="col-md-5">
                        <div class="card-body">
                            <table>
                     <tr>
                        <td>
                           <h4 class="card-title">&nbsp;투썸플레이스</h4>
                        </td>
                        <td>
                           <h4 class="card-title" style="color: orange;">&nbsp;4.7</h4>
                        </td>
                     </tr>
                  </table>
                  <p class="card-text">
                            &nbsp;&nbsp;<small class="text-muted">주소 : </small>  <br />
                     &nbsp;&nbsp;<small class="text-muted">주차 : </small> <br />
                     &nbsp;&nbsp;<small class="text-muted">영업시간 : </small> <br />
                     &nbsp;&nbsp;<small class="text-muted">태그 : </small> <br />
                     &nbsp;&nbsp;<small class="text-muted">편의시설 : </small> <br />
                  </p>
               </div>
            </div>
            &nbsp;
            <br>
            &nbsp;
            <br>
            &nbsp;
            <br>
            &nbsp;
            <div class="col-md-12">
               <div >
                  <table>
                     <tr>
                        <td class="button">
                           <a href="cafe_info_menu"><button id="menu" class="custom-btn btn-5" "><span>메뉴</span></button></a>
                                       </td>
                                       <td class=" button">
                                 <a href="cafe_info_detail"><button id="cafe_detail"
                                       class="custom-btn btn-5"><span>카페 정보</span></button></a>
                        </td>
                        <td class="button">
                           <a href="cafe_info_review"><button id="cafe_review"
                                 class="custom-btn btn-5"><span>리뷰</span></button></a>
                        </td>
                        <td class="button">
                            <a href="cafe_info_board"><button id="cafe_board"
                                  class="custom-btn btn-5"><span>자유게시판</span></button></a>
                         </td>

	<br />
	<br />
	<br />
	<br />
	<div class="row justify-content-md-center">
		<!--카드 - 수평  -->
		<div class="card mb-3" style="max-width: 900px; border: none;">
			<div class="row g-0">
				<div class="col-md-7">
					<img id="mainimg" src="../resources/listimg/cafe.jpg"
						class="img-fluid rounded-start" alt="..." height="800px">
					<hr />
					<div class="col-md-12">
						<table>
							<tr>
								<td><img id="img1" src="../resources/listimg/cafe.jpg"
									class="img-fluid rounded-start" alt="..." width="700px">
								</td>
								<td><img id="img2" src="../resources/listimg/PJH_cafe.jpg"
									class="img-fluid rounded-start" alt="..." width="700px">
								</td>
								<td><img id="img3" src="../resources/listimg/PJH_cafe2.jpg"
									class="img-fluid rounded-start" alt="..." width="700px">
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-md-5">
					<div class="card-body">
						<table>
							<tr>
								<td>
									<h4 class="card-title">&nbsp;투썸플레이스</h4>
								</td>
								<td>
									<h4 class="card-title" style="color: orange;">&nbsp;4.7</h4>
								</td>
							</tr>
						</table>
						<p class="card-text">
							&nbsp;&nbsp;<small class="text-muted">주소 : </small> <br />
							&nbsp;&nbsp;<small class="text-muted">주차 : </small> <br />
							&nbsp;&nbsp;<small class="text-muted">영업시간 : </small> <br />
							&nbsp;&nbsp;<small class="text-muted">태그 : </small> <br />
							&nbsp;&nbsp;<small class="text-muted">편의시설 : </small> <br />
						</p>
					</div>
				</div>
				&nbsp; <br> &nbsp; <br> &nbsp; <br> &nbsp;
				<div class="col-md-12">
					<div>
						<table>
							<tr>
								<td class="button"><a href="cafe_info_menu"><button
											id="menu" class="custom-btn btn-5"">
											<span>메뉴</span>
										</button></a></td>
								<td class=" button"><a href="cafe_info_detail"><button
											id="cafe_detail" class="custom-btn btn-5">
											<span>카페 정보</span>
										</button></a></td>
								<td class="button"><a href="cafe_info_review"><button
											id="cafe_review" class="custom-btn btn-5">
											<span>리뷰</span>
										</button></a></td>


								<div class="right-button">
									<a href="cafe_info_write_review" id="cafe_write_review"><button
											class="custom-btn btn-5">
											<span>리뷰작성</span>
										</button></a>
									<button class="custom-btn btn-5">
										<span>찜하기</span>
									</button>
								</div>
							</tr>
						</table>
					</div>
				</div>
				<hr />
			</div>
			<div class="row g-0">
				<div class="col-xs-6" style="text-align: center; color: #ffa600;">
					<table>
						<tr>
							<td>
								<div
									style="font-size: 55px; width: 75px; object-fit: cover; color: black;">
									${total } <span data-v-6d7bbae6 class="custarbg"> <span
										data-v-6d7bbae6 style="width: ${avgscore}%" class="custar">
									</span>
									</span>
									<div style="font-size: 12px;">전체 리뷰 ${countreview }</div>
								</div>
							</td>
							<td>
								<div class="chartarea" role="img" aria-label="별표 평점이"
									>
									<div aria-hidden="true" class="Qjdn7b">5&nbsp;</div>
									<div aria-hidden="true" class="RJfYGf">
										<div class="RutFAf wcB8se" title="2"
											style="width: ${fivepercent}%"></div>
									</div>
									<div aria-hidden="true" class="Qjdn7b">4&nbsp;</div>
									<div aria-hidden="true" class="RJfYGf">
										<div class="RutFAf wcB8se" title="2"
											style="width: ${fourpercent}%"></div>
									</div>
									<div aria-hidden="true" class="Qjdn7b">3&nbsp;</div>
									<div aria-hidden="true" class="RJfYGf">
										<div class="RutFAf wcB8se" title="2"
											style="width: ${threepercent}%"></div>
									</div>
									<div aria-hidden="true" class="Qjdn7b">2&nbsp;</div>
									<div aria-hidden="true" class="RJfYGf">
										<div class="RutFAf wcB8se" title="2"
											style="width: ${twopercent}%"></div>
									</div>
									<div aria-hidden="true" class="Qjdn7b">1&nbsp;</div>
									<div aria-hidden="true" class="RJfYGf">
										<div class="RutFAf wcB8se" title="2"
											style="width: ${onepercent}%"></div>
									</div>
								</div> <!-- <div class="scorechart" style="width: 700px">
                           <span class="A" data-val='20%'>A</span>
                           <span class="B" data-val='40%'>A</span>
                           <span class="C" data-val='60%'>A</span>
                           <span class="D" data-val='80%'>A</span>
                        </div> -->
							</td>
						</tr>
					</table>
				</div>
			</div>
			<hr>
			<form action="cafe_info_review" method="post">
				<table class="table table-hover">
					<c:forEach items="${review }" var="review">
						<tr>
							<td class="board_left">
								<table style="text-decoration: center">
									<tr>
										<td><img alt="" src="../resources/img/user.png"
											style="width: 50px; height: 50px;"></td>
									</tr>
									<tr>
										<td>닉네임2</td>
									</tr>
								</table>
							</td>
							<td class="board_left">
								<table>
									<%-- <c:forEach items="${list }" var="review"> --%>
									<tr>
										<td colspan="1" style="width: 500px">${review.rdate }</td>
									</tr>
									<tr>
										<td>타이틀 : ${review.title }</td>
									</tr>
									<tr>
										<td><c:set value="${review.score }" var="star" />
											<div style="color: #ffa600; font-size: 20px;">
												<c:if test="${star eq 5.0}">★★★★★</c:if>
												<c:if test="${star eq 4.0}">★★★★☆</c:if>
												<c:if test="${star eq 3}">★★★☆☆</c:if>
												<c:if test="${star eq 2}">★★☆☆☆</c:if>
												<c:if test="${star eq 1}">★☆☆☆☆</c:if>
											</div></td>
									</tr>
									<tr>
										<td>내용 : ${review.content }</td>
									</tr>
									<%--  </c:forEach> --%>
								</table>
							</td>
							<td class="board_left"><img
								src="../resources/upload/${review.img }" alt="이미지없음"
								style="width: 150px; height: 150px;" /></td>
						</tr>
					</c:forEach>
				</table>
				<div style="text-align: center;">
					<c:if test="${searchVo.totPage>1 }">

						<c:if test="${searchVo.page>1 }">
							<a href="cafe_info_review?page=1"><<</a>
							<a href="cafe_info_review?page=${searchVo.page-1 }"><</a>
						</c:if>
						<c:forEach begin="${searchVo.pageStart }"
							end="${searchVo.pageEnd }" var="i">
							<c:choose>
								<c:when test="${i eq searchVo.page }">
									<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
								</c:when>
								<c:otherwise>
									<a href="cafe_info_review?page=${i }"
										style="text-decoration: none">${i }</a>&nbsp;
							</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${searchVo.totPage>searchVo.page }">
							<a href="cafe_info_review?page=${searchVo.page+1 }">[다음]</a>
							<a href="cafe_info_review?page=${searchVo.totPage }">[마지막]</a>
						</c:if>
					</c:if>
				</div>
			</form>
		</div>
		<!-- 사이드 컨테이너 -->
		<div id="side-container" class="card mb-1">
			<p>위치</p>
			<img src="../resources/listimg/map_PJH.png" alt=""
				style="margin: 0%;"> <br>
			<h6>주변인기카페</h6>
			<div class="col-md-12">
				<a href="#">
					<table>
						<tr>
							<td><img src="../resources/listimg/cafe.jpg" alt=""
								style="width: 75px; height: 75px;"></td>
							<td>
								<h6 style="font-size: 0.8em; font-weight: bold;">카페이름</h6>
								<h6 style="font-size: 0.8em;">카페/디저트</h6>
								<h6 style="font-size: 0.5em;">위치:제주도 서귀포시</h6>
								<h6 style="font-size: 0.5em;">노키즈존,주차가능</h6>
							</td>
						</tr>
					</table>
				</a>
			</div>
			<hr>
			<div class="col-md-12">
				<a href="#">
					<table>
						<tr>
							<td><img src="../resources/listimg/cafe.jpg" alt=""
								style="width: 75px; height: 75px;"></td>
							<td>
								<h6 style="font-size: 0.8em; font-weight: bold;">카페이름</h6>
								<h6 style="font-size: 0.8em;">카페/디저트</h6>
								<h6 style="font-size: 0.5em;">위치:제주도 서귀포시</h6>
								<h6 style="font-size: 0.5em;">노키즈존,주차가능</h6>
							</td>
						</tr>
					</table>
				</a>
			</div>
			<hr>
			<div class="col-md-12">
				<a href="#">
					<table>
						<tr>
							<td><img src="../resources/listimg/cafe.jpg" alt=""
								style="width: 75px; height: 75px;"></td>
							<td>
								<h6 style="font-size: 0.8em; font-weight: bold;">카페이름</h6>
								<h6 style="font-size: 0.8em;">카페/디저트</h6>
								<h6 style="font-size: 0.5em;">위치:제주도 서귀포시</h6>
								<h6 style="font-size: 0.5em;">노키즈존,주차가능</h6>
							</td>
						</tr>
					</table>
				</a>
			</div>
			<hr>
			<div class="col-md-12">
				<a href="#">
					<table>
						<tr>
							<td><img src="../resources/listimg/cafe.jpg" alt=""
								style="width: 75px; height: 75px;"></td>
							<td>
								<h6 style="font-size: 0.8em; font-weight: bold;">카페이름</h6>
								<h6 style="font-size: 0.8em;">카페/디저트</h6>
								<h6 style="font-size: 0.5em;">위치:제주도 서귀포시</h6>
								<h6 style="font-size: 0.5em;">노키즈존,주차가능</h6>
							</td>
						</tr>
					</table>
				</a>
			</div>
			<hr>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<br />
</body>


<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<script>
	$(document).ready(function() {
		$("#img1").click(function() {
			$("#mainimg").attr("src", "../resources/listimg/cafe.jpg");
		});

		$("#img2").click(function() {
			$("#mainimg").attr("src", "../resources/listimg/PJH_cafe.jpg");
		});

		$("#img3").click(function() {
			$("#mainimg").attr("src", "../resources/listimg/PJH_cafe2.jpg");
		});
	});
</script>


</html>