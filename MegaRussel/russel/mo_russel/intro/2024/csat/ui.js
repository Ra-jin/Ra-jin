$(function() {

	dataView();
	rvSlide();
	cSlide();
	stSlide();
	tSlide02();
	tSlide03();
});

// visual > 데이타 보기
function dataView(){
	$('.data-txt').on('click',function(){
		$(this).next('.data-detail').toggleClass('on')
	})
}


// Q1 > 학생리뷰슬라이드
function rvSlide(){
	var rvSlide = new Swiper('.rv-slide', {
		slidesPerView: 1,
		spaceBetween: 10,
		loop: true,
		autoplay: {
			delay: 7000,
			disableOnInteraction: false,
		},
		autoHeight: true,
		pagination: {
			el: ".swiper-pagination.type01",
			clickable: true,
			},
	});

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont01Top = $(".q1-wrap").offset().top-150;
		let con02Top = $(".q2-wrap").offset().top-150;
		
		if (scroll >= cont01Top && scroll <= con02Top) {
			rvSlide.autoplay.start();
		} else {
			rvSlide.autoplay.stop();
		}
	})
}


// Q2 > 내부환경슬라이드
function cSlide(){
	var cSlide = new Swiper('.c-slide', {
		slidesPerView: 2,
		spaceBetween: 10,
		loop: true,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
	});

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont02Top = $(".q2-wrap").offset().top-150;
		let con03Top = $(".q3-wrap").offset().top-150;
		
		if (scroll >= cont02Top && scroll <= con03Top) {
			cSlide.autoplay.start();
		} else {
			cSlide.autoplay.stop();
		}
	})
}


// Q3 > 학생슬라이드
function stSlide(){
	var swiperStudent = new Swiper('.st-slide', {
		spaceBetween: 40,
		loop: true,
		autoplay: {
			delay: 7000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
	
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.st-slide .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".st-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")
}


// Q4 > 탭
$(document).ready(function() {
	// 페이지 로드 후 첫 번째 탭을 기본으로 활성화
	$('.tab-link').first().addClass('on');
	var firstImg = $('.tab-link').first().find('img');
	var firstImgSrc = firstImg.attr('src');
	firstImg.attr('src', firstImgSrc.replace('.jpg', '_on.jpg'));
	$('#tab-content-1').addClass('on');

	// 탭 클릭 이벤트 처리
	$('.tab-link').click(function(event) {
		event.preventDefault();

		// 모든 탭의 이미지를 원래 상태로 되돌림
		$('.tab-link img').each(function() {
			var imgSrc = $(this).attr('src');
			if (imgSrc.includes('_on.jpg')) {
				$(this).attr('src', imgSrc.replace('_on.jpg', '.jpg'));
			}
		});

		// 클릭한 탭의 이미지에 _on 추가
		var clickedImg = $(this).find('img');
		var clickedImgSrc = clickedImg.attr('src');
		clickedImg.attr('src', clickedImgSrc.replace('.jpg', '_on.jpg'));

		// 모든 탭에서 on 클래스 제거
		$('.tab-link').removeClass('on');

		// 클릭한 탭에 on 클래스 추가
		$(this).addClass('on');

		// 모든 컨텐츠 숨기기
		$('.t-cont').removeClass('on');

		// 클릭한 탭에 해당하는 컨텐츠 보여주기
		var contentId = '#tab-content-' + $(this).data('tab');
		$(contentId).addClass('on');
	});
});


// Q4 > 탭 두번째 슬라이드
function tSlide02(){
	var swiper = new Swiper('.t-slide.t-02', {
	slidesPerView: 1,
	loop: true,
		autoplay: {
		delay: 7000,
		disableOnInteraction: false,
	},
	pagination: {
		el: ".swiper-pagination",
		clickable: true,
	},
	observer: true,
	observeParents: true,
	});	

}

// Q4 > 탭 세번째 슬라이드
function tSlide03(){
	var swiper = new Swiper('.t-slide.t-03', {
	slidesPerView: 1,
	loop: true,
		autoplay: {
		delay: 3000,
		disableOnInteraction: false,
	},
	pagination: {
		el: ".swiper-pagination",
		clickable: true,
	},
	observer: true,
	observeParents: true,
	});	

}