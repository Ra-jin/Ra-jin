$(function() {
	timeSlide();
});

// 표준 시간표 슬라이드
function timeSlide(){
	//슬라이드가 하나일 경우 반복x
	if ($(".time-slide .swiper-slide").length == 1) {
		var timeSlideNav = new Swiper('.time-navi', {
			slidesPerView: 'auto',
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			allowTouchMove:false,
		});	
		var slideCont = new Swiper('.time-slide', {
			loop: false,
			loopAdditionalSlides : 1,
			autoHeight: true,
			speed : 500,
			allowTouchMove: true,
			thumbs: {
				swiper: timeSlideNav
			},
			observer: true,
			observeParents: true,
			pagination: {
				el: ".swiper-pagination.time-pager",
				clickable: true
			},
		});
	}
	else{
		var timeSlideNav = new Swiper('.time-navi', {
			slidesPerView: 'auto',
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			allowTouchMove:false,
		});	
		var slideCont = new Swiper('.time-slide', {
			loop: true,
			loopAdditionalSlides : 1,
			autoHeight: true,
			speed : 500,
			allowTouchMove: true,
			autoplay:{
				delay: 3000,
				disableOnInteraction: false,
			},
			thumbs: {
				swiper: timeSlideNav
			},
			observer: true,
			observeParents: true,
			pagination: {
				el: ".swiper-pagination.time-pager",
				clickable: true
			},
		});
	}
}

//프리윈터스쿨 프로그램 슬라이드
var conSwiper01 = new Swiper('.cont-slide01', {
	slidesPerView: 'auto',
	loop: true,
	allowTouchMove: true,
	spaceBetween: 20,
	speed: 500,
	autoplay:{
		delay: 3000,
		disableOnInteraction: false,
	},
	pagination: {
		el: ".swiper-pagination.type01",
		clickable: true
	}
});
var conSwiper02 = new Swiper('.cont-slide02', {
	slidesPerView: 'auto',
	loop: true,
	allowTouchMove: true,
	spaceBetween: 20,
	speed: 500,
	autoplay:{
		delay: 3000,
		disableOnInteraction: false,
	},
	pagination: {
		el: ".swiper-pagination.type02",
		clickable: true
	}
});

// 바자관 레이어 팝업
function jsPopup(number){
	if(number == 'no1'){
		$('.baja-layer-popup').removeClass('on')
		$('.mask-bg').css('display','block')
		$('.baja-layer-popup.no1').css('display','block')
	}
	else if(number == 'no2'){
		$('.baja-layer-popup').removeClass('on')
		$('.mask-bg').css('display','block')
		$('.baja-layer-popup.no2').css('display','block')
	}
	else if(number == 'no3'){
		$('.baja-layer-popup').removeClass('on')
		$('.mask-bg').css('display','block')
		$('.baja-layer-popup.no3').css('display','block')
	}
}

function closebg(){
	$('.mask-bg').css('display','none')
	$('.baja-layer-popup').css('display','none')
}

$('.baja-layer-popup .bt-close').on('click',function(){
	$('.baja-layer-popup').removeClass('on')
	$('.mask-bg').css('display','none')
	$('.baja-layer-popup').css('display','none')
});

//데이터 산출 기준
$(function(){
    $('.data-txt').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})


//count 한번만 실행
let countStart = true
$(window).scroll(function(){
	var scroll = $(window).scrollTop();

	if ($('.container').hasClass('russel_us')){
		//.cont02에 스크롤시 count 스타트
		var gTop = $('.cont02');
		var $gtopScroll  = gTop.offset().top-80;
		if(scroll >= $gtopScroll && countStart == true){
			$('.cont02').addClass('on');
			countNum();			
			//count 한번만 실행
			countStart = false
		} else {
			$('.cont02').removeClass('on');
		}
	}
});

/* cont02 카운트 */
function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		{
			duration: 1800,
			easing:'linear',
			//4자리 수일때 콤마사용
			step: function() {
			$this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			},
			complete: function() {
			$this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			}
		});
	});
};