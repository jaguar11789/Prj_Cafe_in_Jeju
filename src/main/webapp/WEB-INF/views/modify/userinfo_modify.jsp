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
<title>vscode수정</title>

<!-- *jquery -->
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- *user_modify 공통 css -->
<link rel="stylesheet" href="../resources/css/modify/user_modify.css">
<!-- CDN -->

</head>



<body>
   <div id="grid">
      <ul>
         <h2>
            <b style="color: #444444;">내 정보관리</b>
         </h2>
         <br/>
         <li><a href="user_modify_info" style="color: #444444;"><b>개인정보 변경</b></a><br></li>
         <li><a href="user_modify_pwd" style="color: #444444;">비밀번호 변경</a><br></li>
         <li><a href="user_modify_sec" style="color: #444444;">회원탈퇴</a></li>
      </ul>


    

      <div class="gridinfo">

         <div class=" border_underline">
            <h3>개인정보 변경</h3>
         </div>

         <div class="border_underline">
            <form action="user_info_userImgupdate" method="post" enctype="multipart/form-data">
                     <div class="user_profile modify_form">
                     <div>프로필사진</div>
                     
                     <div class="user_img_box">
                     <!-- 유저이미지가 있고 없고에 따라 유저이미지 보여주기 -->
                     <c:set var="user_img" value="${userinfo.user_imgfile }"/>
                     <c:choose>
                     <c:when test="${user_img != null && user_img != '' }">
                     <img src="../resources/upload/user_profile/${user_img}" alt="" class="user_img" id="preview"/>                                          
                     </c:when>
                     <c:otherwise>
                     <img src="../resources/upload/user_profile/user.png" alt="" class="user_img" id="preview"/>   
                     </c:otherwise>
                     </c:choose>
                     </div>
                     
                     
                     <div class="user_info">
                     <input type="file" id="file_upload" style="visibility: hidden;" onchange="readURL(this);"  name="user_imgfile">
                     <input type="button" class="modi_btn"  value="수정" onclick="upload();">
                     </div>
                     
                  <div class="user_info_modi">
                     <input type="submit" class="modi_check" value="확인">
                     <input type="button" class="cancle_btn" value="취소">
                  </div>
                  
               </div>
            </form>
         </div>


         <div class=" border_underline">
            <form action="user_info_update">
               <div class="modify_form">
                  
                  <div>   
                     <label for="user_nickname">닉네임</label>
                  </div>
                  
                  <!-- 수정 전 유저정보 보여주기 -->
                  <div class="user_info">
                     <span>${userinfo.user_nickname }</span>
                     <input type="button" class="modi_btn" value="수정">
                  </div>
                  
                  <!-- 수정버튼 클릭하면 보일 부분 -->
                  <div class="user_info_modi" style="display: none;">
                     <input type="text" name="user_nickname" placeholder="${userinfo.user_nickname }" size="20">
                     <input type="submit" class="modi_check" value="확인">
                     <input type="button" class="cancle_btn" value="취소">
                  </div>
               </div>
            </form>
         </div>
         

         <div class=" border_underline">
            <form action="user_info_update">
               <div class="modify_form">
                  <div>   
                     <label for="user_sex">성별</label>
                  </div>
                  
                  
                  <div class="user_info">
                     <span>${userinfo.user_sex }</span>
                     <input type="button" class="modi_btn" value="수정">
                  </div>
                  
                  
                  <div class="user_info_modi">
                     <input type="radio" name="user_sex" class="check_sex" value="여성" checked>
                     <label for="여성">여성</label>
                     <input type="radio" name="user_sex" class="check_sex" value="남성" >
                     <label for="남성">남성</label>
                     
                     <input type="submit" class="modi_check" value="확인">
                     <input type="button" class="cancle_btn" value="취소">
                  </div>
               </div>
            </form>
         </div>

         <div class=" border_underline">
            <form action="user_info_update" >
               <div class="modify_form">
                  <div>   
                     <label for="user_birth">생년월일</label>
                  </div>
                  
                  <div class="user_info" >
                     <span>${user_birth }</span>
                     <input type="button" class="modi_btn" value="수정">
                  </div>
                  
                  <div class="user_info_modi">
                     <input type="date" name="user_birth" value="${user_birth }">
                     <input type="submit" class="modi_check" value="확인">
                     <input type="button" class="cancle_btn" value="취소">               
                  </div>                  
               </div>
            </form>
         </div>

         <div class=" border_underline">
            <form action="user_info_update">
               <div class="modify_form">
                  <div>   
                     <label for="user_pnum">연락처</label>
                  </div>
                  
                  <div class="user_info">
                     <span>${userinfo.user_pnum }</span>
                     <input type="button" class="modi_btn" value="수정">
                  </div>
                  
                  <div class="user_info_modi">
                     <input type="text" name="user_pnum" placeholder="${userinfo.user_pnum }" >
                     <input type="submit" class="modi_check" value="확인">
                     <input type="button" class="cancle_btn" value="취소">                                 
                  </div>                  
               </div>
            </form>
         </div>


         <div class=" border_underline">
            <form action="user_info_update">
               <div class="modify_form">            
               <div>   
                  <label for="email">이메일</label>
               </div>
                  
               <div class="user_info">
                  <span>${userinfo.user_email }</span>
                  <input type="button" class="modi_btn" value="수정">
               </div>
                  
               <div class="user_info_modi">
                  <input type="email" name="user_email" placeholder="${userinfo.user_email }">
                  <input type="submit" class="modi_check" value="확인">
                  <input type="button" class="cancle_btn" value="취소">               
               </div>                  
               </div>
            </form>
         </div>
         
      </div>
   </div>
   
   
   
   <script>
   //버튼 클릭시 이미지 파일 첨부 나오게하기
   function upload(){
      let upload_btn = document.getElementById("file_upload");
      upload_btn.click();
   }
   
   
   //첨부파일 미리보기
   function readURL(input) {
      
        if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function(e) {
            document.getElementById('preview').src = e.target.result;
          };
          reader.readAsDataURL(input.files[0]);
        } else {
          document.getElementById('preview').src = "";
        }
      }
   
   
   
   
   //수정버튼 클릭하면 확인,취소 버튼 나오면서 인풋창 나오게 하기
   $(document).ready(function () {
      var imgsrc = $(".user_img").attr("src");
      
      
   //아래 내용들은 클래스가 모두 같아서 버튼 클릭할때 내가 클릭한 버튼만 셀렉될 수 있도록 적용한거!
     $(".modify_form:eq(0)").addClass("selected"); //첫번째 항목만 selected 클래스를 적용
    //    $(".test1").not(":eq(0)").find(".content").hide();//첫번째 항목 이외의 content를 숨김
     /** 링크에 대한 클릭 이벤트 처리 */
     $(".modi_btn").click(function () {
    $(this).toggleClass("selected");
    //클릭된 나 자신을 제외한 나머리 링크들은 slected 클래스를 무조건 제거
    $(".modi_btn").not(this).removeClass("selected");
    // 펼칠 내용 영역 선택
    var target1 = $(this).parents(".modify_form").find(".user_info_modi");
   var target2 = $(this).parents(".border_underline");
    var other = $(this).parents(".modify_form").find(".user_info");

    target1.show();
   target2.css("border-bottom","solid 1px black")
   

    other.hide();

    return false;
  });

  $(".cancle_btn").click(function () {
    $(this).toggleClass("selected");
    //클릭된 나 자신을 제외한 나머리 링크들은 slected 클래스를 무조건 제거
    $(".modi_btn").not(this).removeClass("selected");
    // 펼칠 내용 영역 선택
    var target1 = $(this).parents(".modify_form").find(".user_info");
   var target2 = $(this).parents(".border_underline");
   var target3 = $(this).parents(".modify_form").find(".user_img");
    var other = $(this).parents(".modify_form").find(".user_info_modi");

    target1.show();
   target2.css("border-bottom","solid 1px #ccc");

   target3.attr("src", imgsrc); //취소버튼 클릭시 기존 이미지로 바꿔주기
    other.hide();

    return false;
  });
});
</script>



</body>
</html>