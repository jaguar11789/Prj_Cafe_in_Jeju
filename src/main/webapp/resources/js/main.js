//슬라이더 초기값
var slideIndex = 1
// 시작시 실행되는 showSlides()함수 slideIndex = 1
showSlides(slideIndex)
// n값을 불러와 slideIndex의 값에 더한 후 showSlides함수를 실행
function plusSlides(n) {
	showSlides((slideIndex += n))
}
// image controls(currentSlide라는 변수 설정)
function currentSlide(n) {
	// n값을 불러와 slideIndex의 값에 대입한 후 showSlides함수를 실행
	showSlides((slideIndex = n))
}
// showSlides 함수 실행 전달받은 값을 공백으로 해 놓음
function showSlides() {
	// 반복문 초기화
	var i
	// 각 사진이 들어있는 클레스 mySlides 불러 온다
	var slides = document.getElementsByClassName('mySlides')
	// 각 이미지에 대한 dot 클레스를 불러온다
	var dots = document.getElementsByClassName('dot')
	// 반복문 시작
	for (i = 0; i < slides.length; i++) {
		// 모든 사진은 none 처리
		slides[i].style.display = 'none'
	}
	// slidIndex에 1씩 더해준다
	slideIndex++
	// slideIndex가 사진의 갯수보다 커지면 1로 초기화
	if (slideIndex > slides.length) {
		slideIndex = 1
	}
	// 반복문 시작
	for (i = 0; i < dots.length; i++) {
		// dot 클래스가 갖고있는 모든 active 클래스를 지운다 ("" 로 치환)
		dots[i].className = dots[i].className.replace(' active', '')
	}
	// slides[slideIndex - 1] if문으로 처리받은 slideIndex값에 -1을 해 
	// slides 의 클래스를block으로 만든다
	slides[slideIndex - 1].style.display = 'block'
	// 그에 맞는 dot 클래스를 가진 span 에 active 클래스를 추가한다
	dots[slideIndex - 1].className += ' active'
	// 자동으로 넘어가는 시간을 5초로 지정
	setTimeout(showSlides, 5000)
}