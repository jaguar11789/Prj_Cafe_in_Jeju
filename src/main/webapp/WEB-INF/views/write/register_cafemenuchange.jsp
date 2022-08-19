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
<title>희원이 메뉴등록 </title>
<!-- CDN -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
   crossorigin="anonymous" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="../resources/css/css2.css" />
	<script src="/resources/js/register_cafe_cafemenu.js"></script>
   <!-- 위의 CDN링크에서 갖고 온다 -->
   
   
</head>

<body>
   <!-- header부분 -->

   <!-- 바디시작 -->
 <form action="register_menu" id="content_form" method="post" enctype="multipart/form-data">
      <div class="container">
         <div class="middle">
      <header id="content_header">
        <h5>내 카페 수정하기</h5>
        <br><br>
        <h6>내 카페 메뉴 수정</h6>
      </header>     
      
      <hr width="800px">
      <div id="menu">

<!-- <div class="cafemenu1">
         &emsp; <span>메뉴명</span>
         &emsp;<input type="text" placeholder="메뉴명을 입력하세요" size="40px">
         &emsp; <input type="checkbox" name="cmenu" id="bmenu"> 대표메뉴<br><br>
         &emsp; <span id="bus">메뉴사진</span>
      <input class="upload-name" placeholder="100mb 이하 등록가능" size="40px">
      &emsp; <input type="file" id="file"  name="cimg" accept="image/png,image/jpeg,image/gif">
      <label class="file-find-f" for="file">파일찾기</label>
      <input type="image" src="" alt="" width="150" height="150" id="food_image"><br>
   </div> -->
   <hr width="800px">
  </div>
   
<br />
<br />
<br />

   <div class="plus">
      <a href="#" onclick="createMenu()" >메뉴 추가<i class="bi bi-plus-lg"></i></a>
   </div>

   <div id="content_header">
      <br><br>
      <h6>내 카페 메뉴판사진 수정</h6>
      <hr width="800px">
   </div>
   <div>
      <!-- <div class="cafemenu2">
         &emsp; <span>사진등록</span>
         <input class="upload-name11" placeholder="다중선택가능(4장이하)" size="40px">
         &emsp; <input type="file" id="menuboard" onchange="addFile(this);" accept="image/png,image/jpeg,image/gif" multiple>
         <label for="menuboard" class="file-find-m">파일찾기</label><br><br>
         &emsp;  <input type="image" src="" alt="" width="150" height="150" value="sfjlksdf" id="menu_image">
         <div id="menu_img">
         </div>
      </div> -->
      <div>
         <input type="submit" value="카페 수정 완료 !" id="end"> 
      </div>
      </div>
    </div>
   </form>
</body>
	<script>
		function sign() {
			alert("eeee");
		}
	</script>

   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
      crossorigin="anonymous">
   </script>
   <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script>
      function test(){
         alert("test");
      }
   </script>
   
   <script>
   function menuplus(){


   }
      
   </script>

   <script > //업로드가능 파일개수 제한
      var fileNo = 0;
      var  filesArr = new Array();
      
      /* 첨부파일 추가 */
      function addFile(obj){
          var maxFileCnt = 4;   // 첨부파일 최대 개수
          var attFileCnt = document.querySelectorAll('.filebox').length; // 기존 추가된 첨부파일 개수
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
                      htmlData += '<div id="file11' + fileNo + '" class="filebox">';
                      htmlData += '   <p class="name">' + file.name + '</p>';
                      htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');">'+
                                  '<p class="delete_gg"></p></a>';
                      htmlData += '</div>';
                      $('.file-list').append(htmlData);
                      fileNo++;
                  } else {
                      continue;
                  }
              }
          }
          // 초기화
           //document.querySelector("input[type=file]").value = "";
      }
      /* 첨부파일 검증 */
      function validation(obj){
          const fileTypes = ['image/gif', 'image/jpeg', 'image/png'];
          if (obj.name.length > 100) {
              alert("파일명이 100자 이상인 파일은 제외되었습니다.");
              return false;
          } else if (obj.size > (100 * 1024 * 1024)) {
              alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
              return false;
          } else if (!fileTypes.includes(obj.type)) {
              alert("첨부가 불가능한 파일은 제외되었습니다.");
              return false;
          } else {
              return true;
          }
      }
      
      /* 첨부파일 삭제 */
      function deleteFile(num) {
          document.querySelector("#file" + num).remove();
          filesArr[num].is_delete = true;
      }
      
   </script>
   
   <script> //메뉴사진 보이기
   function readImage(input) {
      // 인풋 태그에 파일이 있는 경우
      if(input.files && input.files[0]) {
          // 이미지 파일인지 검사 (생략)
          // FileReader 인스턴스 생성
          const reader = new FileReader()
          // 이미지가 로드가 된 경우
          reader.onload = e => {
              const previewImage = document.getElementById("food_image")
              previewImage.src = e.target.result
          }
          // reader가 이미지 읽도록 하기
          reader.readAsDataURL(input.files[0])
      }
      }
      // input file에 change 이벤트 부여
      const inputImage = document.getElementById("file")
      inputImage.addEventListener("change", e => {
          readImage(e.target)
      })
   </script>
      <!-- <script>
         function readImage(input) {
            // 인풋 태그에 파일이 있는 경우
            if(input.files && input.files[0]) {
                // 이미지 파일인지 검사 (생략)
                // FileReader 인스턴스 생성
                const reader = new FileReader()
                // 이미지가 로드가 된 경우
                reader.onload = e => {
                    const previewImage = document.getElementById("menu_image")
                    previewImage.src = e.target.result
                }
                // reader가 이미지 읽도록 하기
                reader.readAsDataURL(input.files[0])
            }
            }
            // input file에 change 이벤트 부여
            const inputImage = document.getElementById("file1")
            inputImage.addEventListener("change", e => {
                readImage(e.target)
            })
         </script> -->
         <script> //멀티플일 때 여러개의 이미지 보여주기
         function readMultipleImage(input) {
            const multipleContainer = document.getElementById("menu_img")
            
            // 인풋 태그에 파일들이 있는 경우
            if(input.files) {
                // 이미지 파일 검사 (생략)
                console.log(input.files)
                // 유사배열을 배열로 변환 (forEach문으로 처리하기 위해)
                const fileArr = Array.from(input.files)
                const $colDiv1 = document.createElement("div")
                const $colDiv2 = document.createElement("div")
                $colDiv1.classList.add("row")
                $colDiv2.classList.add("row")
                fileArr.forEach((file, index) => {
                    const reader = new FileReader()
                    const $imgDiv = document.createElement("div")   
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
                        $colDiv2.style.backgroundColor = "yellow"
                        $img.src = e.target.result
                        $img.style.width = 80 + "%"
                        $img.style.height = 80 + "%"
                        $img.style.objectFit = "cover"
                        $imgDiv.style.width = 200 + "px"
                        $imgDiv.style.height = 200 + "px"
                        $label.style.cssFloat = "all:none"
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
   <!-- <script>

      //클레스 이름을 다시 설정하는 법 ? 
      //추가할때마다 변경되어야하는 사항이 많으니 단순 복사에만 초점이 맞춰진 노드 복사가 아니라 
      //js 명령어 중 html 소스를 그대로 쓰는 코딩을 해야 할 것 같습니다 -! -희수
      var i=0;
      function menuplus()  {
         i++;
       // 'test' node 선택
       const plusDiv = document.getElementById('menu');
       
       // 노드 복사하기
       const newNode = plusDiv.cloneNode(true);
       
       // 복사된 Node id 변경하기
       newNode.id = 'menu';
     
       // 복사한 노드 붙여넣기
       plusDiv.after(newNode);
      }     
   </script> -->




<script>
            var i = 0;
            function createMenu(){
                    i = i+1;
                // appendChild(노드하나) append(여러노드,문자)
                // const menu = document.createTextNode('gd');                
                // div1.appendChild(menu);

                const multipleContainer = document.getElementById("menu")

                const div1 = document.createElement('div');
                
                var br = document.createElement("br")
                var hr = document.createElement("hr");
                const div2 = document.createElement("div")
                var span1 = document.createElement("span")
                var span2 = document.createElement("span")
                
                var label1 = document.createElement("label");

                var menunane = document.createTextNode('메뉴명');
                var mainmenu = document.createTextNode('대표메뉴');
                var menuimg = document.createTextNode('메뉴사진');
                // var findfile = documnet.createTextNode('파일찾기');
                
                
                    var input1 = document.createElement('input');
                    var input2 = document.createElement('input');
                    var input3 = document.createElement('input');
                    var input4 = document.createElement('input');
                    var input5 = document.createElement('input');
                    
                    div1.id='plusmenu'+i;
                    div1.className='cafemenu1'
                    
                    
                    input1.setAttribute("type","text")
                    input1.setAttribute("placeholder","메뉴명을 입력하세요");
                    input1.setAttribute("size","40px");
                    input1.setAttribute("name","cmenu");
                    
                    input2.setAttribute("type","checkbox")
                    input2.setAttribute("value","대표메뉴")
                    
                    // input3.setAttribute("type","text")
                    input3.setAttribute("placeholder","100mb 이하 등록가능")
                    input3.setAttribute("size","40px")
                    input3.className='upload-name'+i;
                    input3.id='upload-name';
                    
                    
                    input4.setAttribute("type","file")
                    input4.setAttribute("accept","image/png,image/jpeg,image/gif")
                    input4.setAttribute("onclick","getId(this)")
                    input4.setAttribute("name","cimg");
                    input4.setAttribute("id","file"+i);
                    
                    input5.setAttribute("type","image");
                    input5.setAttribute("width","150px");
                    input5.setAttribute("height","150px");
                    input5.setAttribute("id","food_image"+i);
                    input5.setAttribute("src","");
                    
                    
                    span1.appendChild(menunane);
                    span2.appendChild(menuimg);
                    
                    label1.className='file-find-f';
                    label1.setAttribute("for","file"+i); //이미지
                    label1.append("파일찾기");
                    // label1.setAttribute("value","파일찾기");
                    
                    
                    div2.innerHTML +="&emsp;";
                    div2.appendChild(span1)
                    div2.innerHTML +="&nbsp;"
                    div2.innerHTML +="&emsp;";
                    div2.appendChild(input1);
                    div2.innerHTML +="&emsp;";
                    div2.innerHTML +="&nbsp;"
                    div2.appendChild(input2);
                    div2.appendChild(mainmenu);
                    div2.appendChild(br);
                    div2.innerHTML +="&nbsp;"
                    div2.appendChild(br);

                    div2.innerHTML +="&emsp;";
                    div2.appendChild(span2);
                    div2.innerHTML +="&nbsp;"
                    div2.appendChild(input3);
                    div2.innerHTML +="&emsp;";
                    div2.appendChild(input4);
                    div2.innerHTML +="&emsp;";
                    div2.appendChild(label1);
                    div2.appendChild(input5)
                    div2.appendChild(br);



                    div2.appendChild(hr);

                    div1.appendChild(div2)
                
                
                multipleContainer.append(div1);
                
            
                

        //         <div class="cafemenu1" style="background-color: ;">
        //         &emsp; <span>메뉴명</span>
        //         &emsp;<input type="text" placeholder="메뉴명을 입력하세요" size="40px">
        //         &emsp; <input type="checkbox" name="" id="bmenu"> 대표메뉴<br><br>
        //         &emsp; <span id="bus">메뉴사진</span>
        //         <input class="upload-name" placeholder="100mb 이하 등록가능" size="40px">
        //         &emsp; <input type="file" id="file" accept="image/png,image/jpeg,image/gif">
        //         <label class="file-find-f" for="file">파일찾기</label>
        //         <input type="image" src="" alt="" width="150" height="150" id="food_image"><br>
        //   </div>





                
                //div에 따른 증가한 i값이 남음//////////////////////////////
                //메뉴판사진 id값 바꾸기//////////////////////////////////
                //////////////////////////div id를 class로 바꿔야함
                //파일찾기 버튼 label과 합치기//////////////////////
                //파일찾기 버튼누를시 들어가질 않음///////////////////////

                //강사님찬스 : ID값을 받아오려고 하는데 onclick을 쓰자니 fuction이 뻑남 안에서 내부적으로 ID값을 받아오는는 방식 필요
                

                function readImage(input) {
                    // 인풋 태그에 파일이 있는 경우


                    if(input.files && input.files[0]) {
                        // 이미지 파일인지 검사 (생략)
                        // FileReader 인스턴스 생성
                        const reader = new FileReader()
                        // 이미지가 로드가 된 경우
                        reader.onload = e => {
                            const previewImage = document.getElementById("food_image"+j);
                            previewImage.src = e.target.result;
                        }
                        // reader가 이미지 읽도록 하기
                        reader.readAsDataURL(input.files[0])
                    }
                    }
                    // input file에 change 이벤트 부여
                    const inputImage = document.getElementById("file"+i) ///
                    inputImage.addEventListener("change", e => {
                        readImage(e.target);
                    })

                    $("#file").on('change',function(){ ///
                    console.log("들어옴");
                    var fileName = $("#file").val();
                    $(".upload-name").val(fileName);
                    });

                    
                    $("#file"+i).on('change',function(){ ///
                    console.log("들어옴");
                    var fileName = $("#file"+j).val();
                    $(".upload-name"+j).val(fileName);
                    });


            }
            function getId(tagid){
                
                if(tagid.id=="file1"){
                    j = 1;
                }else if(tagid.id=="file2"){
                    j = 2;
                }else if(tagid.id=="file3"){
                    j = 3;
                }else if(tagid.id=="file4"){
                    j = 4;
                }else if(tagid.id=="file5"){
                    j = 5;
                }else if(tagid.id=="file6"){
                    j = 6;
                }else if(tagid.id=="file7"){
                    j = 7;
                }else if(tagid.id=="file8"){
                    j = 8;
                }else if(tagid.id=="file9"){
                    j = 9;
                }else if(tagid.id=="file10"){
                    j = 10;
                }
            }

            
        </script>






<script
src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>

$("#file11").on('change',function(){ ///
                    console.log("들어옴");
                    var fileName = $("#file11").val();
                    $(".upload-name11").val(fileName);
                    });


</script>




</html>