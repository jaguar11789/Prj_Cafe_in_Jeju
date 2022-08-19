<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>제주도 1등 카페추천, Cafe:in_Jeju</title>
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- 이미지맵 반응형 만들어주는 api  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.min.js"></script>
    
    <!-- fullpage cdn -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.css"/>
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
          <img
            src="./resources/indeximg/jeju_map.png"
            usemap="#image-map"
            id="img_map"
            style="width: 100vw; height: 100vh"
          />
          
      <map name="image-map">
          <area alt="한경" title="한경" href="./list/hangyong_detail" coords="545,609,554,643,576,658,596,670,615,682,619,692,610,700,602,709,602,722,591,724,578,731,571,741,569,753,568,763,522,753,507,756,479,770,444,787,413,797,410,722,452,673,483,648,520,621" shape="poly">
          <area alt="한경" title="한경" href="./list/hangyong_detail" coords="545,609,554,643,576,658,596,670,615,682,619,692,610,700,602,709,602,722,591,724,578,731,571,741,569,753,568,763,522,753,507,756,479,770,444,787,413,797,410,722,452,673,483,648,520,621" shape="poly">
          <area alt="한림" title="한림" href="./list/hanlim_detail" coords="544,597,544,607,557,637,583,654,612,671,619,678,625,692,637,699,642,705,642,715,654,710,676,705,700,697,734,682,761,682,776,682,754,666,744,648,753,634,742,619,720,622,702,612,690,598,666,570,656,551,652,539,676,515,683,505,680,492,639,504,600,520,571,532,552,553" shape="poly">
          <area alt="애월" title="애월" href="./list/aewol_detail" coords="787,680,814,670,863,614,855,592,834,553,834,511,810,465,794,441,748,457,710,475,685,487,690,501,675,526,665,535,661,546,673,565,685,582,700,604,715,613,734,613,754,624,754,638,749,652,763,667" shape="poly">
          <area alt="제주" title="제주" href="./list/jeju_detail" coords="805,441,847,426,885,415,922,407,953,405,980,426,990,460,1002,495,1017,531,1024,554,1004,554,985,556,966,561,939,570,919,565,903,571,890,580,876,592,864,597,853,576,837,551,842,519,815,471" shape="poly">
          <area alt="조천" title="조천" href="./list/jocheon_detail" coords="966,403,1004,393,1031,393,1046,383,1068,373,1088,369,1097,369,1112,359,1132,352,1160,417,1171,454,1165,502,1161,532,1161,549,1160,563,1144,569,1134,580,1117,580,1093,593,1075,603,1053,578,1032,563,1019,522,1009,488,998,452,986,427" shape="poly">
          <area alt="구좌" title="구좌" href="./list/gujwa_detail" coords="1139,352,1165,359,1204,344,1236,342,1266,340,1304,335,1326,333,1348,325,1380,345,1402,388,1470,391,1502,427,1450,456,1421,472,1385,489,1331,508,1288,517,1270,528,1244,544,1216,554,1188,566,1168,567,1165,544,1178,449" shape="poly">
          <area alt="성산" title="성산" href="./list/sungsan_detail" coords="1502,439,1489,466,1514,486,1540,503,1516,584,1502,617,1470,637,1446,671,1419,717,1409,732,1390,717,1361,679,1334,669,1294,662,1280,662,1287,625,1305,593,1297,545,1280,528,1290,517,1333,513,1387,491" shape="poly">
          <area alt="표선" title="표선" href="./list/pyoseon_detail" coords="1270,536,1288,546,1299,590,1283,621,1273,658,1294,666,1329,671,1356,683,1385,715,1402,732,1377,754,1346,777,1311,775,1300,778,1261,766,1246,732,1233,700,1216,682,1170,665,1139,654,1121,648,1083,607,1112,587,1138,583,1161,576,1175,571,1193,573" shape="poly">
          <area alt="남원" title="남원" href="./list/namwon_detail" coords="1134,666,1104,675,1080,692,1043,699,1010,702,987,709,988,719,1036,746,1036,780,1037,800,1049,841,1061,882,1097,865,1110,854,1121,841,1175,834,1222,824,1275,804,1299,785,1258,773,1229,717,1212,687,1168,668" shape="poly">
          <area alt="서귀포" title="서귀포" href="./list/seogipo_detail" coords="978,714,983,728,1009,736,1032,752,1026,802,1053,884,1032,877,1002,886,941,880,880,904,849,908,836,886,761,875,732,889,724,802,759,779,788,689,802,682,829,691,854,691,876,708" shape="poly">
          <area alt="안덕면" title="안덕면" href="./list/anduck_detail" coords="776,691,737,689,698,708,642,719,642,758,622,772,598,796,610,852,632,894,644,886,702,901,727,887,713,799,751,775" shape="poly">
          <area alt="대정" title="대정" href="./list/daejung_detail" coords="413,807,437,797,520,759,566,766,600,776,589,797,596,832,601,854,623,900,608,915,596,946,557,964,532,929,508,888,484,888,437,841" shape="poly">
      </map>ㄴ
        </div>

        <!-- !링크에 이미지 넣기! -->
      </div>
      
      
      <script>

      $(document).ready(function() {
            $('img[usemap]').rwdImageMaps();
      });

      
      </script>

  </body>
</html>