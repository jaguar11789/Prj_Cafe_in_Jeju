// *풀페이지 기능 스크립트
$(document).ready(function () {
  $(".fullpage").fullpage({
    //options here
    // licenseKey: 'OPEN-SOURCE-GPLV3-LICENSE',
    autoScrolling: true,
    scrollHorizontally: true,
    navigation: true,
    navigationPosition: "right",
    sectionsColor: ["#ffcccc", "#90cdce", "#ffeeaa"],
    navigationTooltips: ["first", "second", "footer"],
  });
});

//*마우스 호버 이벤트 처리
$(document).ready(function () {
	  $(".dropdown").mouseover(function () {
	    $("div.logo").slideDown(1000);
	    $(".bi").css("color", "rgba(255, 255, 255, 0.5)");
	    $("span.logo").fadeOut(500);
	  });
	  $(".header").mouseleave(function () {
	    $("div.logo").slideUp(1000);
	    $(".bi").css("color", "black");
	    $("span.logo").fadeIn(1000);
	  });
	});

