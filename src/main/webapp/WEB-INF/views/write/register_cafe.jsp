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
      <div class="cafelab">
         <div class="cafname">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="cafname">상호명</span>
            <input type="text" name="cafname" placeholder="상호명을 입력하세요" size="40px" required><br>
         </div>
      </div>
      <hr width="800px"> 
       <div class="cafelab">
         <div class="cafcondent">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="cafcondent">업체설명</span>
            <textarea name="cafcondent" placeholder="최대 1000자만 입력 가능합니다" cols="80" rows="3" required></textarea>
         </div>
      </div>
      <hr width="800px">
      <div class="cafelab">
         <div class="cafaddr">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="cafaddr">주소</span>
            <input type="text" id="zipcode" placeholder="우편번호" name="addr1" required> 
            &emsp; <input type="button" onclick="addrsearch();" value="우편번호 찾기" ><br><br><!--팝업창 스크립트연결-->
            <span>&emsp;</span><!--위치조정을 위한 span-->
            &emsp; <input type="text" id="address1" placeholder="주소" size="25px" name="addr2" readonly>
            <input type="text" id="address2" placeholder=" 상세 주소를 입력해주세요." name="addr3" size="40px"><br>
         </div>
      </div>
      <hr width="800px">
      <div class="cafelab">
         <div class="cafcnum">
            &emsp;  <span id="cafcnum">전화번호</span>
            <input type="text" name="cafcnum" size="30px" placeholder="숫자만 입력해 주세요" maxlength='11'
            oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
            &emsp;&emsp;&emsp;  <span id="cafpnum">휴대폰번호 </span>
            <input type="text" name="cafpnum" size="30px" placeholder="숫자만 입력해 주세요" maxlength='11'
            oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"> 
         </div>
      </div>
      <hr width="800px">
      <div class="cafelab">
         &emsp;  <span id="cafeconvenience"> 편의시설</span>
         <div class="cafeche">
            <input type="checkbox" name="cafeconvenience" value="흡연구역" id="smokarea">
            <label for="smokarea">흡연구역</label> 
            <input type="checkbox" name="cafeconvenience" value="노키즈존" id="nokids">
            <label for="nokids">노키즈존</label>
            <input type="checkbox" name="cafeconvenience" value="단체석" id="groupseat">
            <label for="groupseat">단체석</label>
            <input type="checkbox" name="cafeconvenience" value="키즈존" id="kids">
            <label for="kids">키즈존</label>
            <input type="checkbox" name="cafeconvenience" value="와이파이" id="wifi">
            <label for="wifi">와이파이</label><br><br>
            <input type="checkbox" name="cafeconvenience" value="반려동물" id="pet">
            <label for="pet">반려동물</label>
            <input type="checkbox" name="cafeconvenience" value="주차구역" id="parking">
            <label for="parking">주차구역</label>
            <input type="checkbox" name="cafeconvenience" value="콘센트" id="concentric">
            <label for="concentric">콘센트</label>
            <input type="checkbox" name="cafeconvenience" value="승강기" id="elevator">
            <label for="elevator">승강기</label>
            <input type="checkbox" name="cafeconvenience" value="야외화장실" id="outrestroom">
            <label for="outrestroom">야외화장실</label>
            <input type="checkbox" name="cafeconvenience" value="실내화장실" id="inrestroom">
            <label for="inrestroom">실내화장실</label>
         </div>
      </div>
      <hr width="800px">
      <div class="cafelab">
         <div class="sns">
            &emsp;  <span id="sns"> sns</span>
            <input type="text" name="sns" placeholder="ex)instargram,facebook,blog" size="60px"><br>
        </div>
      </div>
      <hr width="800px">
      <div class="cafelab">
         <div class="cafpho">
            &emsp; <span id="cafpho"> 카페사진</span>
            <input class="upload-name" value="" placeholder="최대8장 등록 가능합니다." size="40px">
           &emsp; <input type="file" id="file" name="cafephoto" accept="image/png,image/jpeg,image/gif" onchange="addFile(this);"multiple>
            <label for="file" class="file-find-v">파일찾기</label> <br><br>
            <div id="cafe_photo">

            </div>
        </div>
      </div>
      <hr width="800px">
      <div class="cafelab">
         <div class="opentime">
            <i class="bi bi-star-fill"></i><!--별모양 필수입력표시-->
            <span id="opentime"> 이용상세설명</span>
            <textarea name="opentime" placeholder="ex)이용시간, 휴무일 등" cols="80" rows="3" required></textarea>
            <h id="hsub">최대 1000자만 입력 가능합니다</h>
         </div>
      </div>
      <hr width="800px">
      <div class="cafelab">
         &emsp;  <span id="tag"> #태그등록</span>
         <div class="cafeche">
            <input type="checkbox" name="cafetag" value="#시그니처" id="signature">
            <label for="signature">#시그니처</label>
            <input type="checkbox" name="cafetag" value="#포토존" id="photo">
            <label for="photo">#포토존</label> 
            <input type="checkbox" name="cafetag" value="#사진소품" id="photost">                          
            <label for="photost">#사진소품</label>
            <input type="checkbox" name="cafetag" value="#모던풍" id="moden">
            <label for="moden">#모던풍</label>
            <input type="checkbox" name="cafetag" value="#한라산뷰" id="mountain"> 
            <label for="mountain">#한라산뷰</label><br><br>
            <input type="checkbox" name="cafetag" value="#테마카페" id="thema">
            <label for="thema">#테마카페</label>
            <input type="checkbox" name="cafetag" value="#오션뷰" id="see">
            <label for="see">#오션뷰</label>
            <input type="checkbox" name="cafetag" value="#해외감성" id="fcountry">
            <label for="fcountry">#해외감성</label>
            <input type="checkbox" name="cafetag" value="#디저트" id="dessert">
            <label for="dessert">#디저트</label>
            <input type="checkbox" name="cafetag" value="#친환경" id="eco">
            <label for="eco">#친환경</label>
         </div>
      </div> 
      <hr width="800px">
      <div id="content_header">
         <br><br>
         <h6><i class="bi bi-star-fill"></i>사업자 정보</h6><!--별모양 필수입력표시, h6과 i에 준 효과가 각각 달라서 둘다 씀-->
      </div>
      <hr width="800px">
      <div class="cafelab">
         <div class="cafeinfo">
         <span id="bus">사업자번호</span>
         <input type="text" name="busnum" size="30px" placeholder="숫자만 입력해 주세요" maxlength='10'
         oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"> <br>
         <span id="bus">대표자</span>
         <input type="text" name="ceoname" placeholder="대표자명 입력" size="40px"> <br>
         <span id="bus">사업자등록증</span>
         <input class="upload-name1" placeholder="png,jpeg,gif 등록가능" size="40px">
          &emsp; <input type="file" id="file1" name="cafebuslicense" accept="image/png,image/jpeg,image/gif"> 
          <label for="file1">파일찾기</label><br>
         <span id="bus">영업허가증</span>
         <input class="upload-name2" placeholder="png,jpeg,gif 등록가능" size="40px">
		&emsp; <input type="file" id="file2" name="cafepermit" accept="image/png,image/jpeg,image/gif">	
          <label for="file2">파일찾기</label>
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
            <input type="checkbox" name="agree" value="agree" id="agree" class="agree"> 
         <label for="agree">위 개인정보 수집이용에 동의합니다.(필수)</label>         
       </div> <br><br>
      </div>
      <div class="end">
         <button type="button" id="end">메뉴등록하러가기!</button> 
      </div>


      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script> //주소검색하기
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

      <script > //업로드가능 파일개수 제한
         var fileNo = 0;
         var filesArr = new Array();
         
         /* 첨부파일 추가 */
         function addFile(obj){
             var maxFileCnt = 8;   // 첨부파일 최대 개수
             var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
             var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
             var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수
         
             // 첨부파일 개수 확인
             if (curFileCnt > remainFileCnt) {
                 alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
             } else {
                 for (const file of obj.files) {
                     // 첨부파일 검증
                     if (validation(file)) {
                         // 파일 배열에 담기
                         var reader = new FileReader();
                         reader.onload = function () {
                             filesArr.push(file);
                         };
                         reader.readAsDataURL(file);
         
                         // 목록 추가
                         let htmlData = '';
                         htmlData += '<div id="file' + fileNo + '" class="filebox">';
                         htmlData += '   <p class="name">' + file.name + '</p>';
                         htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far fa-minus-square"></i></a>';
                         htmlData += '</div>';
                         $('.file-list').append(htmlData);
                         fileNo++;
                     } else {
                         continue;
                     }
                 }
             }
             // 초기화
             document.querySelector("input[type=file]").value = "";
         }
      </script>
      <script> //첨부한 사진 미리보기(여러장)
         function readMultipleImage(input) {
            const multipleContainer = document.getElementById("cafe_photo")
            
            // 인풋 태그에 파일들이 있는 경우
            if(input.files) {
                // 이미지 파일 검사 (생략)
                console.log(input.files)
                // 유사배열을 배열로 변환 (forEach문으로 처리하기 위해)
                const fileArr = Array.from(input.files)
                const $colDiv1 = document.createElement("div") //사진이 들어갈 div공간 생성
                const $colDiv2 = document.createElement("div")//사진이 들어갈 div공간 생성
                $colDiv1.classList.add("row") //사진이 들어갈 div 이름부여
                $colDiv2.classList.add("row") //사진이 들어갈 div 이름부여
                fileArr.forEach((file, index) => {
                    const reader = new FileReader()
                    const $imgDiv = document.createElement("div") //이미지하나가 들어갈 div생성 
                    const $img = document.createElement("img")
                    $img.classList.add("image")
                    const $label = document.createElement("label")
                    $label.classList.add("image-label")
                    $label.textContent = file.name
                    $imgDiv.appendChild($img)
                    $imgDiv.appendChild($label)
                    reader.onload = e => {
                        $colDiv1.style.width = 900 + "px"
                        $colDiv1.style.height = 200 + "px"
                        $colDiv2.style.width = 0 + "px"
                        $colDiv2.style.height = 0 + "px"
                        $img.src = e.target.result
                        $img.style.width = 80 + "%"
                        $img.style.height = 80 + "%"
                        $img.style.objectFit = "cover"
                        $imgDiv.style.width = 200 + "px"
                        $imgDiv.style.height = 200 + "px"
                    }
                    
                    console.log(file.name)
                    if(index % 1 == 0) {
                        $colDiv1.appendChild($imgDiv)
                    } else {
                        $colDiv2.appendChild($imgDiv)
                    }
                    
                    reader.readAsDataURL(file)
                })
                multipleContainer.appendChild($colDiv1)
                multipleContainer.appendChild($colDiv2)
            }
        }
        const inputMultipleImage = document.getElementById("file")
        inputMultipleImage.addEventListener("change", e => {
            readMultipleImage(e.target)
        })
      </script>


      <script
         src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
         integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
         crossorigin="anonymous">
      </script> 
            <script
            src="https://code.jquery.com/jquery-3.6.0.js"></script>
            <script> //업로드한 파일이름 넣기
               $("#file").on('change',function(){
                console.log("들어옴");
               var fileName = $("#file").val();
               $(".upload-name").val(fileName);
               });
               $("#file1").on('change',function(){
                console.log("들어옴");
               var fileName = $("#file1").val();
               $(".upload-name1").val(fileName);
               });
               $("#file2").on('change',function(){
                console.log("들어옴");
               var fileName = $("#file2").val();
               $(".upload-name2").val(fileName);
               });
            </script>
            <script>
               $(document).ready(function(){

                  $("#end").on("click", function(){

                     if(cheked = $('#agree').is(':checked')){
                        $("#end").attr("type","submit");
                      
                     }else{
                        alert("개인정보 수집 및 이용동의를 체크해주세요");
                     }
                     
                  });
               });
                  
            </script>
                      <!--   <script>
               $(function(){
               
               // 체크박스가 체크되면 버튼 활성화 되게 만들기

                   $('.square input[type="checkbox"]').click(function(){
                       var tmpp = $(this).prop('checked'); 
                       // this를 사용하여 클릭한 checkbox 가 체크되도록 설정
                       if(tmpp){
                           $(".agree").prop("disabled",false);
                       }
                       else{
                    	   alert('개인정보 수집 및 이용에 동의해주세요');
                           $(".agree").prop("disabled",true);
                       }
                   });
               });
            </script> --> 
            
   

     </div>
    </div>
   </form>
</body>
</html>