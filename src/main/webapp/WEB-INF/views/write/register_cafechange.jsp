<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>희원이 카페수정</title>
<!-- CDN -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
   crossorigin="anonymous" />
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<link rel="stylesheet" href="../resources/css/write/register_cafechange.css" />
<body>
   <br />
   <br />
   <br />
   
   <hr />
   <!-- !바디시작 -->
   <form action="" id="content_form">
      <div class="container">
         <div class="middle">
      <header id="content_header">
        <h5>내 카페 수정하기</h5>
        <br><br>
        <h6>가맹점 기본 정보</h6>
      </header>
        <div>
        <hr width="800px">
         <label class="cafelab">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="cafname">상호명</span>
            <input type="text" name="cafname" placeholder="상호명을 입력하세요" size="40px"><br>
         </label>
         <hr width="800px">
       </div>
       <div>
            <label class="cafelab">
               <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
           <span id="cafcondent">업체설명</span>
        <textarea name="cafcondent" placeholder="최대 1000자만 입력 가능합니다" cols="80" rows="3"></textarea>
        </label>
        <hr width="800px">
      </div>
      <div>
            <label class="cafelab">
               <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
          <span id="cafaddr">주소</span>
           <input type="text" id="sample6_postcode" placeholder="우편번호"> 
           &emsp; <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
                <span>&emsp;</span>
                &emsp;  <input type="hidden"><input type="text" id="sample6_address" placeholder="주소" size="25px">
           <input type="text" id="sample6_detailAddress" placeholder=" 상세 주소를 입력해주세요." size="40px"><br>
         </label>
         <hr width="800px">
      </div>
         <div>
           <label class="cafelab">
            &emsp;  <span id="cafcnum">전화번호</span>
        <input type="text" name="cafcnum" size="6px"> <input type="text" name="cafename" size="6px"> <input type="text" name="cafename" size="6px">
          &emsp;&emsp;&emsp;  <span id="cafpnum">휴대폰번호 </span>
        <input type="text" name="cafpnum" size="6px"> <input type="text" name="cafename" size="6px"> <input type="text" name="cafename" size="6px">
      </label>
        <hr width="800px">
      </div>
        <div>
         <label class="cafelab">
            &emsp;  <span id="cafeconvenience"> 편의시설</span>
         <h><input type="checkbox" name="cafeconvenience" value="smokarea">흡연구역</h>
         <h><input type="checkbox" name="cafeconvenience" value="nokids">노키즈존</h>
         <h><input type="checkbox" name="cafeconvenience" value="kids">키즈존</h>
         <h><input type="checkbox" name="cafeconvenience" value="groupseat">단체석</h>
         <h><input type="checkbox" name="cafeconvenience" value="parking">주차구역</h>
         <h><input type="checkbox" name="cafeconvenience" value="pet">반려동물</h>
         <h><input type="checkbox" name="cafeconvenience" value="inrestroom">실내화장실</h>
         <h><input type="checkbox" name="cafeconvenience" value="outrestroom">야외화장실</h>
         <h><input type="checkbox" name="cafeconvenience" value="wifi">와이파이</h>
         <h><input type="checkbox" name="cafeconvenience" value="concentric">콘센트</h>
         <h><input type="checkbox" name="cafeconvenience" value="elevator">승강기</h>
      </label>
         <hr width="800px">
   </div>
        <div>
         <label class="cafelab">
            &emsp;  <span id="sns"> sns</span>
         <input type="text" name="sns" placeholder="ex)instargram,facebook,blog" size="60px"><br>
        </label>
        <hr width="800px">
        </div>
        <div>
        <label class="cafelab"> <!--파일로 등록한 사진이 여러장 등록 될 수 있게 구현-->
         &emsp;  <span id="cafpho"> 카페사진</span>
         <input type="text" name="cafpho" placeholder="ex)instargram,facebook,blog" size="40px" multiple>
         &emsp; <input type="file" id="file"> <label for="file">파일찾기</label> <br><br>
         &emsp;  <input type="image" src="" alt="" width="150" height="150">
        </label>
        <hr width="800px">
        </div>
        <div>
         <label class="cafelab">
            <i class="bi bi-star-fill"></i> <!--별모양 필수입력표시-->
            <span id="opentime"> 이용상세설명</span>
       <textarea name="opentime" placeholder="ex)이용시간, 휴무일 등" cols="80" rows="3"></textarea><h id="hsub">최대 1000자만 입력 가능합니다</h>
       </label>
       <hr width="800px">
      </div>
      <div>
         <label class="cafelab">
            &emsp;  <span id="tag"> #태그등록</span>
            <h><input type="checkbox" name="tag" value="see">#오션뷰</h>
            <h><input type="checkbox" name="tag" value="nokids">#포토존</h>
            <h><input type="checkbox" name="tag" value="kids">#사진소품</h>
            <h><input type="checkbox" name="tag" value="groupseat">#모던풍</h>
            <h><input type="checkbox" name="tag" value="parking">#한라산뷰</h>
            <h><input type="checkbox" name="tag" value="pet">#테마카페</h>
            <h><input type="checkbox" name="tag" value="inrestroom">#시그니처</h>
            <h><input type="checkbox" name="tag" value="outrestroom">#해외갬성</h>
            <h><input type="checkbox" name="tag" value="wifi">#디저트</h>
            <h><input type="checkbox" name="tag" value="concentric">#친환경</h>
      </label>
      <hr width="800px">
      </div>
      <div id="content_header">
         <br><br>
       
        <h6><i class="bi bi-star-fill"></i>사업자 정보</h6><!--별모양 필수입력표시, h6과 i에 준 효과가 각각 달라서 둘다 씀-->
        <hr width="800px">
      </div>
         <div>
         <label class="cafelab">
         <span id="bus">사업자번호</span>
         <input type="text" name="busnum" size="6px"> <input type="text" name="busnum" size="6px"> <input type="text" name="busnum" size="6px"><br>
         <span id="bus">대표자</span>
         <input type="text" name="ceoname" placeholder="대표자명 입력" size="40px"> <br>
         <span id="bus">사업자등록증</span>
         <input type="text" name="buslicense" placeholder="100mb 이하 등록가능" size="40px">
          &emsp; <input type="file" id="file"> <label for="file">파일찾기</label><br>
         <span id="bus">영업허가증</span>
         <input type="text" name="buslicense" placeholder="100mb 이하 등록가능" size="40px">
          &emsp; <input type="file" id="file"> <label for="file">파일찾기</label>
         </label>
         </div>
         <div class="square">
            <b> 개인정보 수집 및 이용동의</b><br> 카페 인 제주 서비스
            "사업자등록"의 제공을 위해 아래와 같이 개인정보를 <br>
            수집 이용합니다 <br>
            수집목적 :  카페 업체등록<br>
            수집항목 : 이메일, 연락처<br>
            보유 및 이용기간 :  파기 요청 전, 업체 페업 전까지<br>
            위 사항에 동의하지 않을 수 있으나, 동의를 거부할 경우 
            서비스 이용이 불가능합니다. <br><br>
            <input type="checkbox" name="agree" value="agree"> 
            위 개인정보 수집이용에 동의합니다.(필수)
         </div> <br><br>
         <div>
      <input type="button" value="메뉴수정하러가기!" id="end" onclick="location.href='.\register_cafemenu.html';"> 
      </div></form>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
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
</body>
</html>