$(function(){
	 sclTop()
})
//컨텐츠에 도달했을때
function sclTop(){
	$(window).scroll(function(){
        var $cont = $('.js-cont');
        var scroll = $(window).scrollTop();
        $cont.each(function(i){
            var wH 		= $(window).height()/3;
            var target      = $cont.eq(i);
            var target_top  = Math.floor(target.offset().top) - wH;
            if(scroll >= target_top){
                target.addClass('on'); 
            }
        })
	});
}

//count 한번만 실행
let countStart = true
// 스크롤 이벤트
$(window).scroll(function(){
	var scroll = $(window).scrollTop();

	//.cont02에 스크롤시 count 스타트
	if($(".cont02 *").hasClass("counter")) {
		var gTop = $(".cont02");
		var $gtopScroll  = gTop.offset().top-300;
		if(scroll >= $gtopScroll && countStart == true){
			gTop.addClass("on");
			countNum()
			//count 한번만 실행
			countStart = false
		} else {
			//$('.counter').text(0);
		}
	}
});

function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		{
			duration: 1500,
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

//cont02 카드 슬라이드
var cardSlide = new Swiper('.card-swiper', {
	loop: false,
	loopedSlides: 3, // 실제 슬라이드 수와 일치하게 설정
	effect: 'fade',
	fadeEffect: { crossFade: true },
	slidesPerView: 1,
	speed: 500,
	allowTouchMove: true,
	// autoplay: {
	//   delay: 7000,
	//   disableOnInteraction: false,
	// },
	observer: true,
	observeParents: true,
	watchSlidesProgress: true,
	watchSlidesVisibility: true,
	preloadImages: false,
	lazy: true,
	loadPrevNext: true,
	loadPrevNextAmount: 1,
	pagination: {
		el: ".pager01",
		clickable: true,
		type: "bullets",
	},
})

//cont02 합격 대학 슬라이드 
var uniSlide = new Swiper('.uni-slide', {
	slidesPerView: "1",
	spaceBetween: 20,
	centeredSlides: true,
	centeredSlidesBounds: true,
	autoplay: {
	  delay: 3000,
	  disableOnInteraction: false,
	},
	loop : true,
	loopAdditionalSlides: 1, 
	speed : 500, 
	allowTouchMove : true,
	observer: true,
	observeParents: true, 
	autoHeight : true,
});

// 기숙사 생활공간
var gallery = new Swiper('.js-gallery1', {
	keyboardControl: false,
	loop: true,
	speed:500,
	slidesPerView: 'auto',
    watchOverflow : true,
	autoplay: {
		delay: 3000,
		disableOnInteraction: false,
	},
	pagination: {
		el: ".js-thumb1",
		clickable: true,
		renderBullet: function (index, className) {
			return '<span class="' + className + '"><img src="'+ $('.js-gallery1 .swiper-slide img').eq(index).attr('src') +'"></span>'; //slide의 img src 가져와서 bullet span태그에 붙여넣음
		}
	},
	navigation: {
	nextEl: '.swiper-button-next',
	prevEl: '.swiper-button-prev',
	},
	spaceBetween: 10,
	autoHeight: true,
});

// cont07 자습관
var fadeslider01 = new Swiper('.fade-slider01', {
	direction: 'horizontal',
	effect: 'fade',
	fadeEffect: { crossFade: true },
	slidesPerView: 1,
	speed:1000,
	loop: true,
	observer: true,
	observeParents: true,
	slidesPerView : 'auto',
	autoplay: {
		delay: 3000,
		disableOnInteraction: true,
	}, //3초에 한번씩 자동 넘김
});
// cont07 자습관 학습/생활
var fadeslider02 = new Swiper('.fade-slider02', {
	direction: 'horizontal',
	effect: 'fade',
	fadeEffect: { crossFade: true },
	slidesPerView: 1,
	speed:1000,
	loop: true,
	observer: true,
	observeParents: true,
	slidesPerView : 'auto',
	autoplay: {
		delay: 3000,
		disableOnInteraction: true,
	}, //3초에 한번씩 자동 넘김
});

// cont09 자습관 학습/생활
var fadeslider03 = new Swiper('.fade-slider03', {
	direction: 'horizontal',
	effect: 'fade',
	fadeEffect: { crossFade: true },
	slidesPerView: 1,
	speed:1000,
	loop: true,
	observer: true,
	observeParents: true,
	slidesPerView : 'auto',
	autoplay: {
		delay: 3000,
		disableOnInteraction: true,
	}, //3초에 한번씩 자동 넘김
});

// 교재 슬라이드
var bookSlide = new Swiper('.books-slide', {
	slidesPerView: "auto",
	spaceBetween: 30,
	centeredSlides: true,
	centeredSlidesBounds: true,
	loop : true,
	loopAdditionalSlides: 1, 
	speed : 500, 
	allowTouchMove : true,
	observer: true,
	observeParents: true, 
	pagination: {
		el: ".swiper-pagination.type03",
		clickable: true
	}
});

var frameSlide = new Swiper('.frame-slide', {
	slidesPerView: "auto",
	spaceBetween: 20,
	centeredSlides: true,
	centeredSlidesBounds: true,
	loop : true,
	loopAdditionalSlides: 1, 
	speed : 500, 
	allowTouchMove : true,
	observer: true,
	observeParents: true, 
});
