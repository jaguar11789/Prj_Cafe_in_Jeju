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
<title>투썸 플레이스 - 메뉴</title>
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


<style>
/* header */
input[id="menuicon"] {
  display: none;
  flex-basis: 10%;
}
input[id="menuicon"] + label {
  display: block;
  margin: 25px;
  width: 30px;
  height: 25px;
  position: relative;
  cursor: pointer;
}
input[id="menuicon"] + label span {
  display: block;
  position: absolute;
  width: 100%;
  height: 5px;
  border-radius: 30px;
  background: orange;
  transition: all 0.35s;
}
input[id="menuicon"] + label span:nth-child(1) {
  top: 0;
}
input[id="menuicon"] + label span:nth-child(2) {
  top: 50%;
  transform: translateY(-50%);
} /*     ϰ            ִ  style top:calc(50% - 2.5px); margin-top:-2.5px;*/
input[id="menuicon"] + label span:nth-child(3) {
  bottom: 0;
}
input[id="menuicon"]:checked + label {
  z-index: 2;
}
input[id="menuicon"]:checked + label span {
  background: orange;
}
input[id="menuicon"]:checked + label span:nth-child(1) {
  top: 50%;
  transform: translateY(-50%) rotate(45deg);
}
input[id="menuicon"]:checked + label span:nth-child(2) {
  opacity: 0;
}
input[id="menuicon"]:checked + label span:nth-child(3) {
  bottom: 50%;
  transform: translateY(50%) rotate(-45deg);
}
div[class="sidebar"] {
  width: 400px;
  height: 100%;
  background: rgb(72, 73, 73);
  position: fixed;
  top: 0;
  left: -400px;
  z-index: 1;
  transition: all 0.35s;
}
input[id="menuicon"]:checked + label + div {
  left: 0;
}
.menu_logo{
  margin-top: -100px;
  list-style: none;
}
.sidebar .menu_local {
  margin-top: 10px;
  list-style: none;
  text-align: center;
  margin-right: 20%;
  font-size: 20px;
  color: orange;
}
.category {
  margin-top: 40%;
}
font {
  color: orange;
}
a{
  text-decoration: none;

}
.container{
  display: flex;
  justify-content: space-between;
  /* background-color: yellow; */
  align-items: center ;
  flex-wrap: nowrap;
  max-width: 1800px;
}
.navar_logo {
list-style: none;
 margin-left: 300px;
 flex-basis: 50%;

}
.user{
  list-style: none;
  margin-left: 5px;
  flex-basis: 10%;
  position: relative;
}

.img{
  width: 30px;
  height: 30px;
  
  position: center fixed;
}

<!--메뉴 카페정보 리뷰 버튼-->
.card-body{
	background-color: yellow;
}
.frame1 {
  width: 90%;
  margin-top: 100px;
  text-align: center;
}
#buttongroup{
    margin-left: 550px;
    margin-top: 100px;
    text-align: center; 
    background-color: yellow;
}
.right-button{
	float: right;
}
button {
  margin: 20px;
}
.custom-btn {
  width: 130px;
  height: 40px;
  color: rgb(0, 0, 0);
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.1s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgb(255, 255, 255),
   7px 7px 20px 0px rgb(255, 255, 255),
   4px 4px 5px 0px rgb(255, 255, 255);
   outline: none;
   
}
/* 5 */
.btn-5 {
  width: 80px;
  height: 40px;
  line-height: 42px;
  padding: 0;
  border: none;
  background: #ffa600;
background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(255, 255, 255) 100%);
}
.btn-5:hover {
  color: #ffa600;
  background: transparent;
   box-shadow:none;
}
.btn-5:before,
.btn-5:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #ffa600;
  box-shadow:
   -1px -1px 5px 0px #fff,
   7px 7px 20px 0px rgb(255, 255, 255),
   4px 4px 5px 0px rgb(255, 255, 255);
   /* 마우스 hover하고 되돌아가는 시간 */
  transition:0ms ease all;
  
}
.btn-5:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.btn-5:hover:before,
.btn-5:hover:after{
  width:100%;
  /* 버튼 css효과 반응속도 */
  transition:0ms ease all;
}

#menu{
    color: #ffa600;
}

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
	}
}

/* 메뉴 버튼  링크*/
a{
    text-decoration: none;
    color: black;
}





</style>
</head>

<body>
	<link href="carousel.css" rel="stylesheet">
    	<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet" />
		<!-- Custom styles for this template -->
  <!-- /      <link href="blog.css" rel="stylesheet" /> -->
		<link rel="stylesheet" href="../css/demo2.css" />
		<div class="container">
		  <div class="menu">
			<input type="checkbox" id="menuicon" />
			<label for="menuicon">
			  <span></span>
			  <span></span>
			  <span></span>
			</label>
			<div class="sidebar">
			  <div class="category">
				<ul>
				  <li class="menu_logo">
					<a  href="main"><img src="../resources/img/logo2.png" alt=""></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>제주</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>애월</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>한림</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>한경</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>대정</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>안덕</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>중문</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>서귀포</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>남원</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>표선</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>성산</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>구좌</font></a>
				  </li>
				  <li class="menu_local">
					<a href="#"><font>조천</font></a>
				  </li>
				</ul>
			  </div>
			</div>
		  </div>
		  <ul class="navar_logo">
			<li><a href="main"><img class="logo" src="../resources/img/logo2.png" alt="" /></a></li>
		  </ul>
  
		  <ul class="user">
			<li class="">
			  <a href="../mypage/user_mypage"><img class="img" src="../resources/img/user.png" alt="" /></a>
			</li>
		  </ul>
		</div>
		<hr>
	  </header>
    <div class="row justify-content-md-center">
        <!--카드 - 수평  -->
        <div class="card mb-3" style="max-width:900px; border: none; ">
            <div class="row g-0">
                <div class="col-md-7">
                    <img id="mainimg" src="../resources/listimg\cafe.jpg" class="img-fluid rounded-start" alt="..." height="800px">
                    <hr />
                    <div class="col-md-12">
                        <table>
                            <tr>
                                <td>
                                    <img id="img1" src="../resources/listimg/cafe.jpg" class="img-fluid rounded-start" alt="..."
                                        width="700px">
                                </td>
                                <td>
                                    <img id="img2" src="../resources/listimg\PJH_cafe.jpg" class="img-fluid rounded-start" alt="..."
                                        width="700px">
                                </td>
                                <td>
                                    <img id="img3" src="../resources/listimg\PJH_cafe2.jpg" class="img-fluid rounded-start" alt="..."
                                        width="700px">
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
                                    <h4 class="card-title">&nbsp;투썸플레이스 </h4>
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
									<a href="cafe_info_menu"><button id="menu" class="custom-btn btn-5"><span>메뉴</span></button></a>
	                                    </td>
	                                    <td class=" button">
											<a href="cafe_info_detail"><button id="cafe_detail"
													class="custom-btn btn-5"><span>카페 정보</span></button></a>
								</td>
								<td class="button">
									<a href="cafe_info_review"><button id="cafe_review"
											class="custom-btn btn-5"><span>리뷰</span></button></a>
								</td>

								<div class="right-button">
                                    <a href="cafe_info_write_review" id="cafe_write_review"><button  class="custom-btn btn-5"><span>리뷰작성</span></button></a>
										<button class="custom-btn btn-5"><span>찜하기</span></button>
								</div>
							</tr>
						</table>
					</div>
				</div>
				<hr />
                <div class="row g-0">
                    <div class="col-md-3">
                        <img id="mainimg" src="../resources/listimg/iceamericano.jpg" class="img-fluid rounded-start" alt="..." height="800px">
                    </div>
                    <div class="col-md-5">
                        <div class="card-body">
                                        <h5 class="card-title">&nbsp;아이스 아메리카노 </h5>
                            <p class="card-text">
                                &nbsp;&nbsp;<small class="text-muted">가격 : 2,000원 </small> <br />
                            </p>
                        </div>
                    </div>
                </div>
                
                &nbsp;
                <div class="row g-0">
                    <div class="col-md-3">
                        <img id="mainimg" src="../resources/listimg/capuccino.jpg" class="img-fluid rounded-start" alt="..." height="800px">
                    </div>
                    <div class="col-md-5">
                        <div class="card-body">
                                        <h5 class="card-title">&nbsp;카푸치노 </h5>
                            <p class="card-text">
                                &nbsp;&nbsp;<small class="text-muted">가격 : 3,000원 </small> <br />
                            </p>
                        </div>
                    </div>
                </div>
                &nbsp;
                <div class="row g-0">
                    <div class="col-md-3">
                        <img id="mainimg" src="../resources/listimg/jamongade.jfif" class="img-fluid rounded-start" alt="..." height="800px">
                    </div>
                    <div class="col-md-5">
                        <div class="card-body">
                                        <h5 class="card-title">&nbsp;자몽에이드 </h5>
                            <p class="card-text">
                                &nbsp;&nbsp;<small class="text-muted">가격 : 2,500원 </small> <br />
                            </p>
                        </div>
                    </div>
                </div>
                &nbsp;
                <div class="row g-0">
                    <div class="col-md-3">
                        <img id="mainimg" src="../resources/listimg/vanilla.jfif" class="img-fluid rounded-start" alt="..." height="800px">
                    </div>
                    <div class="col-md-5">
                        <div class="card-body">
                                        <h5 class="card-title">&nbsp;바닐라 라떼 </h5>
                            <p class="card-text">
                                &nbsp;&nbsp;<small class="text-muted">가격 : 3,500원 </small> <br />
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 사이드 컨테이너 -->
		<div id="side-container" class="card mb-1"  >
			<p>위치</p>
			<img src="img/map_PJH.png" alt="" style="margin: 0%;" >
			<br>
			<h6>주변인기카페</h6>
			<div class="col-md-12">
				<a href="#">
					<table>
						<tr>
							<td><img src="../resources/listimg/cafe.jpg" alt="" style="width: 75px; height: 75px;"></td>
							<td >
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
							<td><img src="../resources/listimg/cafe.jpg" alt="" style="width: 75px; height: 75px;"></td>
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
							<td><img src="../resources/listimg/cafe.jpg" alt="" style="width: 75px; height: 75px;"></td>
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
							<td><img src="../resources/listimg/cafe.jpg" alt="" style="width: 75px; height: 75px;"></td>
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




<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
 
<script>
    $(document).ready(function(){
            $("#img1").click(function(){
             	$("#mainimg").attr("src","../resources/listimg/cafe.jpg");
            });
            
            $("#img2").click(function(){
             	$("#mainimg").attr("src","../resources/listimg/PJH_cafe.jpg");
            });
            
            $("#img3").click(function(){
             	$("#mainimg").attr("src","../resources/listimg/PJH_cafe2.jpg");
            });
        });
</script>


</html>
