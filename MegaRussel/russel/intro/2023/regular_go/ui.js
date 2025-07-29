$(function() {
	var $top = $('.regularGo-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

    visualSlide();
	// fixmenu();
	// tSlide();
	// nav();
	// interviewSlide();
});



//좌측 네비바
function nav(){
	var $doc = $('html, body');
	var $bt_nav = $('.nav-wrap li');
	var $cont = $('.js-cont .js-box');
	var $fix_h = $('.js-fix-menu').height();

	$bt_nav.first().addClass("on");

	$bt_nav.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var cont_on = $cont.eq(i);
		var cont_top = cont_on.offset().top -150;
		$doc.animate({scrollTop:cont_top});
	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop() + 150;
		$cont.each(function(i){
			var $cont_top  = $cont.eq(i).offset().top - $fix_h;
			// var $cont_top  = $cont.eq(i).offset().top
			if(scroll > $cont_top){
				$bt_nav.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
	});
}


//우측 퀵바
// $(window).scroll(function(){
// 	var sclTop = $(window).scrollTop();
// 	var cont01_top = $('.cont01').offset().top - 130;
// 	// var cont01_top = $('.cont01').offset().top;
// 	var scrollEnd = $(".scroll-end").offset().top - 570;

// 	if (sclTop >= cont01_top && sclTop < scrollEnd) {
// 		$('.quick').addClass('bar-ani');
// 		$('.quick').addClass('bar-on');
// 	} else {
// 		$('.quick').removeClass('bar-ani');
// 		$('.quick').removeClass('bar-on');
// 	}

// });


/* 비주얼 bg 슬라이드 */
function visualSlide(){
	var vSwiper = new Swiper('.visual-slide',{
		speed: 700,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false, // 버튼클릭해도 계속 롤링
		},
		loop:true,
		slidesPerView: '1',
		effect: 'fade',
		fadeEffect: {
			crossFade: true
		},
	});
}


/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;

		if (i == 0) {
			$doc.animate({scrollTop:$cont_top}, 800);
		}else {
			$doc.animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
	});


	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		if(scroll >= $fix_top){
			$fix_menu.css({
				'position':'fixed',
			});
			$('.fix-menu-wrap').addClass('fix');
		}else{
			$fix_menu.css({
				'position':'absolute',
			});
			$('.fix-menu-wrap').removeClass('fix');
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		//좌측 네비바 스크롤이벤트
		$cont.each(function(i){
			var navCont      = $("#nav-cont");
			var navCont_top  = Math.floor(navCont.offset().top);
			var scrollEnd = $(".tab-box02").offset().top;

			if (scroll >= navCont_top && scroll < scrollEnd) {
				$('.nav-in').addClass('fix');
				$('.nav-wrap').addClass('on');
			} else {
				$('.nav-in').removeClass('fix');
				$('.nav-wrap').removeClass('on');
			}
		});

	});
}


//강사진
function tSlide(){
	var slideIndex = $(".teacher-swiper .swiper-slide").index()
	
	var tSwiper = new Swiper('.teacher-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 2500,
		grabCursor: true,
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.teacher-swiper').hover(
		function(){
			tSwiper.autoplay.stop();
    	},
		function(){
			tSwiper.autoplay.start();
		}
	);

}

//슬라이드 랜덤
function randomIdx(){
    var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}


// 탭메뉴
$('.js-bt-tab').each(function(){
	var $bt 	= $(this).children('span');
	var $cont	= $(this).parent().find('.js-tab-cont')

	$bt.first().addClass('on');
	$cont.first().addClass('on');

	$bt.on('click',function(e){
		e.preventDefault();
		var idx 	= $(this).index();
		$bt.eq(idx).addClass('on').siblings().removeClass('on');
		$cont.eq(idx).addClass('on').siblings().removeClass('on');
	})
})


//부천 인터뷰 슬라이드
function interviewSlide(){
	var interviewSwiper = new Swiper('.interview-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 2500,
		grabCursor: true,
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

}




