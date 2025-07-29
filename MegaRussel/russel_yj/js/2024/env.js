// 페이지 첫 진입시 비주얼 영역 맞춤
$(function() {
    // var scrollPositionTop = Math.floor($(".yj-sub-wrap-full").offset().top);
    // $("html, body").animate({scrollTop: scrollPositionTop}, 500, function(){});
    var $top = $('.env-wrap').offset().top;
    $('html, body').animate({scrollTop:$top},500);
    
    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        var $vtopScroll  = $('.visual-area').offset().top-150;
        if($('.env-wrap div').hasClass('visual-area')){
            
            if(scroll >= $vtopScroll) {
				$('.visual-area').addClass("on");
			} else {
				$('.visual-area').removeClass("on");
			}
        }
    });
    

    sleepSlide();
    contSlide();

    safeSlide();
    imgSlide();
});


/* cont03_1 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
    trigger: ".sec0", // 객체기준범위
    pin: true, // 고정
    start: "top top", // 시작점
    end: "=+2100", // 끝점
    scrub: 1, // 모션바운스
    markers: false, // 개발가이드선 (false 없애기)
    }
})

.to('.sec0 .box01 ', {duration: 2, delay: 2})
.to('.sec0 .box01', {duration: 0, opacity: 0, y: -100})

.to('.sec0 .box02', {duration: 0, opacity: 1, y: 0})
.to('.sec0 .box02', {duration: 2, delay: 2})
.to('.sec0 .box02', {duration: 0, opacity: 0, y: -100})

.to('.sec0 .box03', {duration: 0, opacity: 1, y: 0})
.to('.sec0 .box03', {duration: 2, delay: 2})
.to('.sec0 .box03', {duration: 0, opacity: 0, y: -100})

.to('.sec0 .box04', {duration: 0, opacity: 1, y: 0})
.to('.sec0 .box04', {duration: 2, delay: 2})
.to('.sec0 .box04', {duration: 0});



function sleepSlide(){
    var sSlide = new Swiper('.sleep-slide', {
        loop:true,
        // centeredSlides: true,
        // centeredSlidesBounds: true,
        allowTouchMove: false,
        speed: 1000,
        slidesPerView: 'auto',
        spaceBetween: 25,
        observer: true,
        observeParents: true,
        autoplay: {
            delay: 2000,
        },
        navigation: {
            nextEl: ".swiper-button-next.sleep",
            prevEl: ".swiper-button-prev.sleep",
        },
    });
}
var listArray = ["slide1","slide2","slide3"];

function safeSlide(){
    var sfSwiper = new Swiper('.safe-slide', {
        loop: true,
        autoplayDisableOnInteraction: false,
        slidesPerView: 1, 
        speed:3000,
        effect: 'fade',
        fadeEffect: {
            crossFade: true
        },
        pagination:{
            el:".pager",
            clickable: true,
            bulletActiveClass: 'on',
            renderBullet: function (i, className) {
            return '<span class="' + className + '">' + '<i></i>' + '<b></b>'  + '</span>';
            }
        },
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
    });

    var play = 0
    $('.slide-box .play-btn').on('click', function(){
        if(play == 0){
            $(this).toggleClass('on');
            sfSwiper.autoplay.stop();
            play = 1;
        }else if(play == 1){
            $(this).removeClass('on');
            sfSwiper.autoplay.start();
            play = 0;
        }
        
    });
}

function contSlide(){
    var slideSetting = {
		slidesPerView: 2,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	}

    if ($('.cont-slide-navi').hasClass('russel_w') || $('.cont-slide-navi').hasClass('russel_wm')) {
		var cSlideNav = new Swiper('.cont-slide-navi', slideSetting)
	} else {

		var cSlideNav = new Swiper('.cont-slide-navi', {
			slidesPerView: 3,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			allowTouchMove:false,
		});	
	}

    var cSlide = new Swiper('.cont-slide', {
        autoplay: {
            delay: 5000,
        },
        loop:true,
        // loopAdditionalSlides : 3,
        centeredSlides: true,
        centeredSlidesBounds: true,
        allowTouchMove: false,
        speed: 3000,
        effect: 'fade',
        slidesPerView: 'auto',
        observer: true,
        observeParents: true,
        thumbs: {
			swiper: cSlideNav
		},
        pagination: {   
            el: ".cont-page",   
            type : 'fraction',   
        },
    });
}

function imgSlide(){
    var imgSwiper = new Swiper('.img-slide', {
        autoplay:{
            delay: 4000,
            disableOnInteraction: false,
        },
        loop:true,
        centeredSlides: true,
        centeredSlidesBounds: true,
        allowTouchMove: false,
        speed: 1000,
        spaceBetween: 50,
        slidesPerView: 'auto',
        observer: true,
        observeParents: true,
    });
}