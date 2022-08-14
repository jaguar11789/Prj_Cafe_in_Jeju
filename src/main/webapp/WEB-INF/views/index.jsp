<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>fullpage js</title>
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- fullpage cdn -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.css"
    />
       <script
      src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.js"></script>
    <link rel="stylesheet" href="./resources/css/index.css" />
    <script src="./resources/js/index.js"></script>
  </head>
  <body>
    <!--!header 들어갈 부분-->
    <header class="header">
      <div class="wrap">
        <!-- *마우스 호버시 내려오는 영역 -->
        <div class="logo">
          <span>
            <a href="./list/main">
              <img src="./resources/img/logo2.png" alt="logo_img" />
            </a>
          </span>
        </div>

        <!-- ?여기에 호버 발생하면 위에 헤더 부분 나오게 하기 -->
        <div class="dropdown">
          <!-- *화살표 이미지 삽입 -->
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="40"
            height="40"
            fill="currentColor"
            class="bi bi-caret-down-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"
            />
          </svg>
          <!-- *화살표 이미지 삽입 코드 end -->
        </div>

        <!-- *마우스 호버전 로고 보이게 -->
        <span class="logo">
          <a href="./list/main">
              <img src="./resources/img/logo2.png" alt="logo_img" />
            </a>
        </span>
      </div>
    </header>

    <!-- *fullpage 부분 -->
   <div class="fullpage container">
      <!-- page1 -->
      <div class="section s1">
         <div></div>
      </div>

      <!-- page2 -->
      <div class="section s2">
         <div>
            <img src="resources/indeximg/jeju_map.png" name="mainimg"
               usemap="#image-map" id="img_map"
               style="width: 100vw; height: 100vh">
				<map name="image-map">
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="1138,351,1177,453,1164,562,1178,568,1196,558,1277,516,1391,490,1503,428,1470,391,1405,390,1381,357,1379,343,1355,330,1315,336,1296,319,1271,322,1255,334,1265,340,1201,346,1164,357,1173,364"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						<!--조천  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="1136,353,1174,456,1162,576,1110,580,1078,606,1029,569,1028,543,990,444,987,423,952,405,1028,390,1066,374,1067,345,1096,348,1104,364,1122,356"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--제주시 -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="951,406,985,424,989,449,1026,546,1026,558,991,551,952,566,915,564,867,605,840,554,837,506,815,464,803,433,838,419,908,407"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--애월읍  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="800,436,836,510,838,557,869,609,810,678,785,685,749,657,736,623,673,586,659,546,689,505,677,490,726,465"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--한림읍  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="544,605,558,639,625,684,628,719,696,705,730,683,782,685,744,658,734,625,662,584,655,547,682,504,674,490,591,527,565,538,549,565"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--한경면  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="418,800,521,749,583,764,625,720,622,685,555,640,539,609,480,649,413,717"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--대정읍  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="416,803,517,751,589,767,623,769,594,794,603,852,635,900,612,909,595,940,563,959,525,924,511,888,486,883,424,826"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--안덕면  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="783,689,757,776,718,803,733,894,704,903,643,888,636,898,609,853,597,795,627,773,631,723,705,707,732,686"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--서귀포  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="788,688,845,686,874,699,882,709,937,709,980,709,990,725,1037,752,1032,804,1056,890,1032,873,999,885,935,877,876,904,848,902,834,880,760,876,735,892,721,806,760,777,782,704"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--남원읍  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="1130,660,1216,687,1254,767,1305,784,1278,805,1217,827,1121,843,1095,871,1057,887,1035,803,1040,748,993,723,981,707,1029,696,1078,690,1106,667"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--표선면  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="1084,607,1126,656,1223,685,1284,668,1287,621,1305,590,1295,545,1270,527,1183,572,1162,583,1113,584"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
						<!--성산읍  -->
					<area target="_self" alt="notebook" title="home" href="./home"
						coords="1504,621,1466,643,1411,735,1349,777,1307,782,1257,765,1221,690,1284,672,1289,665,1290,621,1307,590,1297,543,1272,525,1294,516,1396,494,1503,432,1486,465,1537,503"
						shape="poly"
						onmouseover="if(document.images) mainimg.src='resources/indeximg/gujwa.png'"
						onmouseout="if(document.images) mainimg.src='resources/indeximg/jeju_map.png'">
						
				</map>
			</div>
<!--조천 : 1136,353,1174,456,1162,576,1110,580,1078,606,1029,569,1028,543,990,444,987,423,952,405,1028,390,1066,374,1067,345,1096,348,1104,364,1122,356 
제주시 : 951,406,985,424,989,449,1026,546,1026,558,991,551,952,566,915,564,867,605,840,554,837,506,815,464,803,433,838,419,908,407
애월읍 : 800,436,836,510,838,557,869,609,810,678,785,685,749,657,736,623,673,586,659,546,689,505,677,490,726,465
한림읍 : 544,605,558,639,625,684,628,719,696,705,730,683,782,685,744,658,734,625,662,584,655,547,682,504,674,490,591,527,565,538,549,565
한경면 : 418,800,521,749,583,764,625,720,622,685,555,640,539,609,480,649,413,717
대정읍 : 416,803,517,751,589,767,623,769,594,794,603,852,635,900,612,909,595,940,563,959,525,924,511,888,486,883,424,826
안덕면 : 783,689,757,776,718,803,733,894,704,903,643,888,636,898,609,853,597,795,627,773,631,723,705,707,732,686
서귀포 : 788,688,845,686,874,699,882,709,937,709,980,709,990,725,1037,752,1032,804,1056,890,1032,873,999,885,935,877,876,904,848,902,834,880,760,876,735,892,721,806,760,777,782,704
남원읍 : 1130,660,1216,687,1254,767,1305,784,1278,805,1217,827,1121,843,1095,871,1057,887,1035,803,1040,748,993,723,981,707,1029,696,1078,690,1106,667
표선면 : 1084,607,1126,656,1223,685,1284,668,1287,621,1305,590,1295,545,1270,527,1183,572,1162,583,1113,584
성산읍 : 1504,621,1466,643,1411,735,1349,777,1307,782,1257,765,1221,690,1284,672,1289,665,1290,621,1307,590,1297,543,1272,525,1294,516,1396,494,1503,432,1486,465,1537,503
-->
         <!-- !링크에 이미지 넣기! -->
      </div>

      <footer class="section fp-auto-height">
         <h1>Footer</h1>
      </footer>
   </div>
   <script src="jquery.rwdImageMaps.min.js"></script>
   <script
      src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
   <script>
      $(function() {
         $('img[usemap]').rwdImageMaps();
      });
   </script>
</body>
</html>