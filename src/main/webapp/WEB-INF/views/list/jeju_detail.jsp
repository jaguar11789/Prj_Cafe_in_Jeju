<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="../resources/css/jeju_local_detail.css">
    </head>

    <body>

    
    <!-- 슬라이드 사진 -->
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <!-- xmlns에는 들어갈 링크 넣기 -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../resources/listimg/coffee4.jpg" style="width: 100%; height: auto;" alt="">
            </div>
            <div class="carousel-item">
                <img src="../resources/listimg/coffee4.jpg" style="width: 100%; height: auto;" alt="">
            </div>
            <div class="carousel-item">
                <img src="../resources/listimg/coffee4.jpg" style="width: 100%; height: auto;" alt="">
            </div>

        </div>
        <!-- 사진을 좌우로 넘길 수 있게 -->
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    </div>
    <hr>
    <!-- 카페설명 -->
    <div class="container-goods">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td><a href="./cafe_info_menu"><img src="../resources/listimg/cafe.jpg" style="max-width: 100%; height: 300px;" alt=""></a></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td style="font-size: 25px; font-weight: bolder;"><a href="./cafe_info_menu">투썸 플레이스</a></td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;">카페주소:서울시 금천구 벚꽃로 40, 105동 XXXX호</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="container-goods">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td><a href="./cafe_info_menu"><img src="../resources/listimg/cafe.jpg" style="max-width: 100%; height: 300px;" alt=""></a></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td style="font-size: 25px; font-weight: bolder;"><a href="./cafe_info_menu">카아페이르음</a></td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;">카페주소:경기도 수원시 장안구 천천동 래미안 104동 ####호</td>
                </table>
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="container-goods">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td><img src="../resources/listimg/cafe.jpg" style="max-width: 100%; height: 300px;" alt=""></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td style="font-size: 25px; font-weight: bolder;">카아페이르음</td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;">카페주소:경기도 수원시 장안구 천천동 래미안 104동 ####호</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="container-goods">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td><img src="../resources/listimg/cafe.jpg" style="max-width: 100%; height: 300px;" alt=""></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td style="font-size: 30px; font-weight: bolder;">카아페이르음</td>
                    </tr>
                    <tr>
                        <td style="font-size: 25px;">카페주소:경기도 수원시 장안구 천천동 래미안 104동 ####호</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    







    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
</body>

</html>