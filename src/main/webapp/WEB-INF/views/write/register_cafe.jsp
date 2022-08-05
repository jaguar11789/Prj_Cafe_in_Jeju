<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<meta name="author"
   content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
<meta name="generator" content="Hugo 0.98.0" />
<title>카페등록</title>
<!-- CDN -->
<link rel="stylesheet" href="../resources/css/write/register_cafechange.css" />
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
   crossorigin="anonymous" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>

<body>

   <!-- !바디시작 -->
   <form action="caferegistersucess" id="content_form" method="post" enctype="multipart/form-data">
      <div class="container">
      <div class="middle">
      <header id="content_header">
        <h5>내 카페 등록하기</h5>
        <br><br>
        <h6>가맹점 기본 정보</h6>
      </header>
      <hr width="800px">
      <div>
         <div class="cafelab">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="cafname">상호명</span>
            <input type="text" name="cafename" placeholder="상호명을 입력하세요" size="40px"><br>
         </div>
      </div>
      <hr width="800px"> 
       <div>
         <div class="cafelab">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="cafcondent">업체설명</span>
            <textarea name="cafecondent" placeholder="최대 1000자만 입력 가능합니다" cols="80" rows="3"></textarea>
         </div>
      </div>
      <hr width="800px">
      <div>
         <div class="cafelab">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="cafaddr">주소</span>
            <input type="text" name=cafeaddr id="zipcode" placeholder="우편번호"> 
            &emsp; <input type="button" onclick="addrsearch();" value="우편번호 찾기"><br><br><!--팝업창 스크립트연결-->
            <span>&emsp;</span><!--위치조정을 위한 span-->
            &emsp; <input type="text" name=cafeaddr id="address1" placeholder="주소" size="25px" readonly>
            <input type="text" id="address2" name=cafeaddr placeholder=" 상세 주소를 입력해주세요." size="40px"><br>
         </div>
      </div>
      <hr width="800px">
      <div>
         <div class="cafelab">
            &emsp;  <span id="caftnum">전화번호</span>
            <input type="text" name="cafetnum" size="6px"> <input type="text" name="cafetnum" size="6px"> <input type="text" name="cafetnum" size="6px">
            &emsp;&emsp;&emsp;  <span id="cafpnum">휴대폰번호 </span>
            <input type="text" name="cafepnum" size="6px"> <input type="text" name="cafepnum" size="6px"> <input type="text" name="cafepnum" size="6px">
         </div>
      </div>
      <hr width="800px">
      <div>
         &emsp;  <span id="cafeconvenience"> 편의시설</span>
         <div class="cafeche">
            <input type="checkbox" name="cafeconvenience" value="smokarea" id="smokarea">
            <label for="smokarea">흡연구역</label> 
            <input type="checkbox" name="cafeconvenience" value="nokids" id="nokids">
            <label for="nokids">노키즈존</label>
            <input type="checkbox" name="cafeconvenience" value="groupseat" id="groupseat">
            <label for="groupseat">단체석</label>
            <input type="checkbox" name="cafeconvenience" value="kids" id="kids">
            <label for="kids">키즈존</label>
            <input type="checkbox" name="cafeconvenience" value="wifi" id="wifi">
            <label for="wifi">와이파이</label><br><br>
            <input type="checkbox" name="cafeconvenience" value="pet" id="pet">
            <label for="pet">반려동물</label>
            <input type="checkbox" name="cafeconvenience" value="parking" id="parking">
            <label for="parking">주차구역</label>
            <input type="checkbox" name="cafeconvenience" value="concentric" id="concentric">
            <label for="concentric">콘센트</label>
            <input type="checkbox" name="cafeconvenience" value="elevator" id="elevator">
            <label for="elevator">승강기</label>
            <input type="checkbox" name="cafeconvenience" value="outrestroom" id="outrestroom">
            <label for="outrestroom">야외화장실</label>
            <input type="checkbox" name="cafeconvenience" value="inrestroom" id="inrestroom">
            <label for="inrestroom">실내화장실</label>
         </div>
      </div>
      <hr width="800px">
      <div>
         <div class="cafelab">
            &emsp;  <span id="sns"> sns</span>
            <input type="text" name="cafesns" placeholder="ex)instargram,facebook,blog" size="60px"><br>
        </div>
      </div>
      <hr width="800px">
      <div>
         <div class="cafelab">
            &emsp; <span id="cafpho"> 카페사진</span>
            <input type="text" name="cafephoto" placeholder="ex)instargram,facebook,blog" size="40px" readonly>
            &emsp; <input multiple type="file" id="file" value=""> <label for="file">파일찾기</label> <br><br>
            &emsp; <input type="image" src="" alt="" width="150" height="150">
        </div>
      </div>
      <hr width="800px">
      <div>
         <div class="cafelab">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="opentime"> 이용상세설명</span>
            <textarea name="cafedetail" placeholder="ex)이용시간, 휴무일 등" cols="80" rows="3"></textarea><h id="hsub">최대 1000자만 입력 가능합니다</h>
         </div>
      </div>
      <hr width="800px">
      <div>
         &emsp;  <span id="tag"> #태그등록</span>
         <div class="cafeche">
            <input type="checkbox" name="cafetag" value="signature" id="signature">
            <label for="signature">#시그니처</label>
            
            <input type="checkbox" name="cafetag" value="photo" id="photo">
            <label for="photo">#포토존</label> 
            
            <input type="checkbox" name="cafetag" value="photost" id="photost">                          
            <label for="photost">#사진소품</label>
            
            <input type="checkbox" name="cafetag" value="moden" id="moden">
            <label for="moden">#모던풍</label>
            
            <input type="checkbox" name="cafetag" value="mountain" id="mountain"> 
            <label for="mountain">#한라산뷰</label><br><br>
            
            <input type="checkbox" name="cafetag" value="thema" id="thema">
            <label for="thema">#테마카페</label>
            
            <input type="checkbox" name="cafetag" value="see" id="see">
            <label for="see">#오션뷰</label>
            
            <input type="checkbox" name="cafetag" value="fcountry" id="fcountry">
            <label for="fcountry">#해외감성</label>
            
            <input type="checkbox" name="cafetag" value="dessert" id="dessert">
            <label for="dessert">#디저트</label>
            
            <input type="checkbox" name="cafetag" value="eco" id="eco">
            <label for="eco">#친환경</label>
         </div>
      </div> 
      <hr width="800px">
      <div id="content_header">
         <br><br>
         <h6><i class="bi bi-star-fill"></i>사업자 정보</h6><!--별모양 필수입력표시, h6과 i에 준 효과가 각각 달라서 둘다 씀-->
      </div>
      <hr width="800px">
      <div>
         <div class="cafelab">
           <span id="bus">사업자번호</span>
           <input type="text" name="cafebusnum" size="6px"> <input type="text" name="cafebusnum" size="6px"> <input type="text" name="cafebusnum" size="6px"><br>
           <span id="bus">대표자</span>
           <input type="text" name="cafeceoname" placeholder="대표자명 입력" size="40px"> <br>
           <span id="bus">사업자등록증</span>
           <input type="text" name="cafebuslicense" placeholder="100mb 이하 등록가능" size="40px">
            &emsp; <input type="file" id="file"> <label for="file">파일찾기</label><br>
           <span id="bus">영업허가증</span>
           <input type="text" name="cafepermit" placeholder="100mb 이하 등록가능" size="40px">
            &emsp; <input type="file" id="file"> <label for="file">파일찾기</label>
         </div>
      </div>
      <div class="u_agree">
         <div class="square">
            <b> 개인정보 수집 및 이용동의</b><br> 카페 인 제주 서비스
               "사업자등록"의 제공을 위해 아래와 같이 개인정보를 <br>
               수집 이용합니다 <br>
               수집목적 :  카페 업체등록<br>
               수집항목 : 이메일, 연락처<br>
               보유 및 이용기간 :  파기 요청 전, 업체 페업 전까지<br>
               위 사항에 동의하지 않을 수 있으나, 동의를 거부할 경우 
               서비스 이용이 불가능합니다. <br><br>
            <input type="checkbox" name="agree" value="agree" id="agree"> 
            <label for="agree">위 개인정보 수집이용에 동의합니다.(필수)</label>         
         </div>
      </div> 
      <div class="end">
         <input type="submit" value="메뉴등록하러가기!" id="end"> 
      </div>
   
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script>
       function addrsearch(){
         new daum.Postcode({
            oncomplete: function(data){
               console.log(data);
               var roadAddr = data.roadAddress; //도로명 주소 변수
               var jibunAddr = data.jibunAddress; //지번 주소 변수
               document.getElementById('zipcode').value = data.zonecode;
               if(roadAddr !==''){
                  document.getElementById('address1').value = roadAddr;
               }else if(jibunAddr !==''){
                  document.getElementById('address1').value = jibunAddr;
               }
            }
         }).open();   
      }
      </script>
      <script
         src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
         integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
         crossorigin="anonymous">
      </script>
     </div>
    </div>
   </form>
</body>
</html>