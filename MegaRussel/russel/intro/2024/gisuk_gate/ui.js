$(function() {
	//gnb틀고정용
	$(window).load(function(){
		//페이지 로드 시 스크롤 visual로 이동
		$('html, body').animate({
			scrollTop : $('.visual-wrap').offset().top + 1			
		});
	});	
    
	//페이지 로드 후 1초 동안 스크롤 중지 후 1초 지나면 스크롤 가능하도록
	function delay(){
		setTimeout(enableScroll ,1000);
	}

	//스크롤 시 스크롤 안 되게 하는 이벤트 제거
	function enableScroll(){
		$(window).off("scroll", disableScroll);
	}

	//스크롤 안 되게 하는 이벤트
	function disableScroll(){
		//페이지 상단 위치값 찾기
		var target = document.querySelector('.visual-wrap');
		var endY = target.getBoundingClientRect().top + window.pageYOffset;

		////스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);



});

//비주얼 영역에서 휠 아래방향일떄 다음섹션이동
let visScrollTop = 970;
let isAnimating = false;

function scrollToVisualContent() {
    if (!isAnimating) {
        isAnimating = true;
        const visualContent = document.querySelector('.visual-content');
        if (visualContent) {
            window.scrollTo({
                top: visualContent.offsetTop + 1150,
                behavior: 'smooth'
            });
            setTimeout(() => {
                isAnimating = false;
            }, 1000); 
        } else {
            isAnimating = false;
        }
    }
}

function handleWheel(event) {
    const scrollTop = window.scrollY;
    if (scrollTop < visScrollTop && event.deltaY > 0) { // 스크롤 위치가 970px 미만이고 휠 아래로
        event.preventDefault();
        scrollToVisualContent();
    }
}
// wheel 이벤트 리스너를 한 번만 등록
window.addEventListener('wheel', handleWheel, { passive: false });

// 스크롤 위치 업데이트를 위한 scroll 이벤트 리스너
window.addEventListener('scroll', function() {
    visScrollTop = Math.max(970, window.scrollY);
});


$(document).ready(function() {
	
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

	//count 한번만 실행
	let countStart = true
	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//.cont02에 스크롤시 count 스타트
		if($(".cont01 *").hasClass("counter")) {
			var gTop = $(".cont01");
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
});

/* cont01 카운트 */
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
	loop: true,
	loopedSlides: 3, // 실제 슬라이드 수와 일치하게 설정
	effect: 'fade',
	fadeEffect: { crossFade: true },
	slidesPerView: 1,
	speed: 500,
	allowTouchMove: true,
	autoplay: {
	  delay: 7000,
	  disableOnInteraction: false,
	},
	navigation: {
	  nextEl: ".card-btn-next",
	  prevEl: ".card-btn-prev",
	},
	observer: true,
	observeParents: true,
	watchSlidesProgress: true,
	watchSlidesVisibility: true,
	preloadImages: false,
	lazy: true,
	loadPrevNext: true,
	loadPrevNextAmount: 1
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

//  스크롤 떨림 현상 방지
$(window).scroll(function(){
	var scroll = $(window).scrollTop();
	let con02 = $(".cont02")
	let conTop02 = con02.offset().top;
	let conTop03 = $(".cont03").offset().top-150;
	
	if (scroll >= conTop02 && scroll <= conTop03) {
		con02.addClass('on')
		uniSlide.autoplay.start();
	} else {
		con02.removeClass('on')
		uniSlide.autoplay.stop();
	}
})

// 기숙사 생활공간
var gallery = new Swiper('.js-gallery1', {
	keyboardControl: false,
	loop: true,
	speed:500,
	slidesPerView: 'auto',
    watchOverflow : true,
	autoplay: {
		delay: 7000,
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

// cont06 자습관
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
// cont06 자습관 학습/생활
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

// 기숙사 시설 전면개편 슬라이드
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

//퀵배너 바로가기
$(".targetPos").click('on',function(e){ 
	$('html,body').animate({scrollTop:$(this.hash).position().top + 105 }, 500);
});


// 오메가 슬라이드
var omegaslide = new Swiper('.omega-slide', {
	slidesPerView: "auto",
	spaceBetween: 20,
	loop : true,
	loopAdditionalSlides: 1, 
	speed : 500, 
	allowTouchMove : true,
	observer: true,
	observeParents: true, 
	autoplay: {
		delay: 3000,
		disableOnInteraction: true,
	}, //3초에 한번씩 자동 넘김
});

