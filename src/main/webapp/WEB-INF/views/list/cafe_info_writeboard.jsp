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

<!--별점 value값 받기  -->
    <script>
    function starValue(target){
       alert("value"+target.value);
       var starScore = target.value;
       alert("starScore"+starScore);
    }
    </script>
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
  transition:1ms ease all;
  
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
  transition:1ms ease all;
}
#cafe_board{
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


/* 별점 평균 */
.star {
   width: 50%;
    /* position: relative; */
    font-size: 3rem;
    color: green;
  }
  
  .star input {
      background-color : yellow;
   width : 50%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
  }
  
 .star span {
    display : none;
    width: 50%;
    position: absolute;  
    left: 0;
    color: orange;
    overflow: hidden;
    pointer-events: none;
     
  }

   .custarbg[data-v-6d7bbae6] {
    display: block;
    /* float: left; */
    width: 76px;
    height: 13px;
    
    background: url(//img1a.coupangcdn.com/image/fodium/desktop/widget-sdp-alsoviewedproducts-20160622.png) no-repeat;
    
    /* background-size : 200px; */
    
    background-position: -39px -43px;/*  */
    text-indent: -9999px;/*  */
   }
   
   .custar[data-v-6d7bbae6] {
    display: block;
    width: 76px;
    height: 13px;
    
    background: url(//img1a.coupangcdn.com/image/fodium/desktop/widget-sdp-alsoviewedproducts-20160622.png) no-repeat;/*  */
    
    /* background-size : 200px; */
    
    background-position: -39px -58px;/*  */
    text-indent: -9999px;/*  */
   }

   element.style {
       width: 90%;
   }
  
   /*board  */
   .board{
      border-collapse: collapse;
      width: 600px;
   }
   
   /*chart  */
   .A {
      background: black;
   }
   .B {
      background: blue;
   }
   .C {
      background: yellow;
   }
   .D {
      background: orange;
   }
   
   .A, .B, .C, .D{
      display: block;
      margin: 10px 0;
      color: #FFF;
      font-size: 20px;
      line-height: 1em;
      text-align: center;
      border-radius: 15px;
   } 
   
   
   
   
   .chartarea {
    display: grid;
    grid-template-columns: max-content auto;
    align-items: center;
   }
   .Qjdn7d {
    font-family: Roboto,Arial,sans-serif;
    line-height: 1rem;
    font-size: .75rem;
    letter-spacing: .025em;
    font-weight: 400;
    padding-right: 16px;
   }
   .RJfYGf:not(:disabled) {
    background-color: #e8eaed;
   }
   .RJfYGf {
    border-radius: 9999px;
    background-color: #e8eaed; 
    height: 10px;
   }
   element.style {
    width: 53.8439%;
   }
   .wcB8se:not(:disabled) {
    background-color: #ffa600;
   }
   .RutFAf {
    height: 100%;
    border-radius: inherit;
   }
   .wcB8se {
    background-color: #ffa600;
   }



</style>



</head>

<body>
    
   <div class="row justify-content-md-center" > <!--카드 - 수평  -->
      <div class="card mb-3" style="max-width:900px; border: none; ">
         
        	<h5 style="text-align: center">Q&A</h5>
         <hr>
         
         <form action="writeboard" method="post" enctype="multipart/form-data">
               	
            <table>
            	<tr>
            		<td>제목<input type="text" name="ctitle" placeholder="제목을 입력해주세요." /><hr /></td>
            	</tr>
 
            	<tr>
            		<td>내용<textarea style="width: 800px; height: 200px" name="ccontent" placeholder="내용을 입력해주세요." /></textarea><hr /></td>
            	</tr>
            	<tr>
            		<td><input multiple type="file" name="cfile" /></td>
            	</tr>
            	
            </table>
            	<input type="submit" class="custom-btn btn-5" value="확인" />
		</form>
      </div>
      <!-- 사이드 컨테이너 -->
      
   </div>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
      crossorigin="anonymous"></script>
   <br />
</body>


<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>


</html>