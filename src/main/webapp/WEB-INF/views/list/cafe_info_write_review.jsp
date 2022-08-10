<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.98.0">
<title>투썸 플레이스 - 리뷰작성</title>
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

<script src="https://kit.fontawesome.com/499fd37eb6.js"
	crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../resources/css/list/cafe_info_write_review.css" />

</head>

<body>
<br />
<br />
<br />
<br />
	<div class="row justify-content-center">
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
										<td class="button">
                            <a href="cafe_info_board"><button id="cafe_board"
                                  class="custom-btn btn-5"><span>Q&A</span></button></a>
                         </td>

								<div class="right-button">
									<a href="cafe_info_write_review"><button
											class="custom-btn btn-5">
											<span id="cafe_write_review">리뷰작성</span>
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
				<div class="col-md-12">
					<form action="writereview" method="post"
						enctype="multipart/form-data">
						<!-- <form name="myform" id="myform" action="#" method="post" enctype="multipart/form-data"> -->
						<fieldset id="myform">
							<!-- https://blogpack.tistory.com/993 참조-->
							<legend>리뷰를 남겨주세요</legend>
							<div id="starscore">
								<input type="radio" name="rating" value="5" id="rate1"><label
									for="rate1">⭐</label> <input type="radio" name="rating"
									value="4" id="rate2"><label for="rate2">⭐</label> <input
									type="radio" name="rating" value="3" id="rate3"><label
									for="rate3">⭐</label> <input type="radio" name="rating"
									value="2" id="rate4"><label for="rate4">⭐</label> <input
									type="radio" name="rating" value="1" id="rate5"><label
									for="rate5">⭐</label>
							</div>
						</fieldset>
						<!-- </form> -->
						<br> <input type="text" name="reviewtitle"
							class="reviewtitle" placeholder="제목을 입력해주세요." /> <br>
						&nbsp;
						<textarea name="reviewcontent" id="" placeholder="리뷰를 작성해 주세요."
							maxlength="2000"></textarea>
						<br> <input type="file" name="reviewphoto" />
						<!-- <img src="../resources/listimg/iceamericano.jpg" alt="" style="width: 200px; height: 200px;"> -->
						<br>
						<div>
							<table>
								<tr>
									<td class="button"><a href="cafe_info_menu"></td>

									<div class="ok-cancel">
										<button class="custom-btn btn-5">
											<span>취소</span>
										</button>
										<input type="submit" class="custom-btn btn-5" value="확인" />
									</div>

								</tr>
							</table>
						</div>
					</form>
				</div>
			</div>
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
	<script>
function readImage(input) {
    // 인풋 태그에 파일이 있는 경우
    if(input.files && input.files[0]) {
        // 이미지 파일인지 검사 (생략)
        // FileReader 인스턴스 생성
        const reader = new FileReader()
        // 이미지가 로드가 된 경우
        reader.onload = e => {
            const previewImage = document.getElementById("preview-image")
            previewImage.src = e.target.result
        }
        // reader가 이미지 읽도록 하기
        reader.readAsDataURL(input.files[0])
    }
}
// input file에 change 이벤트 부여
const inputImage = document.getElementById("input-image")
inputImage.addEventListener("change", e => {
    readImage(e.target)
})
</script>
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