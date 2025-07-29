$(function() {
	// var $top = $('.winter-wrap').offset().top;
	// $('html, body').animate({scrollTop:$top},500);
	//gnb틀고정용
	var $top2 = $(".winter-wrap").position().top
	var headerH = $('.headerWrap').outerHeight();
	var headerfix = $('.headerWrap').hasClass('pos-sticky');
	window.onload = function() {
		setTimeout(function(){        
			if(headerfix == true){		
				$("html,body").animate({scrollTop: 0}, 0);	
				$('body, html').animate({scrollTop : 191 }, 500)
			}
			else{                    
				$('body, html').animate({scrollTop : $top2 - headerH/10 }, 500)
			}              
		}, 200);
	}
	//탭1의 padding-top설정
	$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"234px"})

	fixmenu();
	rollSlide();
	bajaSlide('.baja-slide-navi.type01', '.baja-slide.type01');
	bajaSlide('.baja-slide-navi.type02', '.baja-slide.type02');
	bajaSlide('.baja-slide-navi.bc', '.baja-slide.bc');
	tSlide();
	manageSlide();
	studySlide();
	tabSlide();
	stSlide();
	programSlide();
});


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
		var $cont_top = $cont_i.offset().top - 102;

		if (i == 0) {
			$doc.animate({scrollTop:$cont_top}, 800);
		}else {
			$doc.animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
	});

	//count 한번만 실행
	let countStart = true

	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		if(scroll >= $fix_top){
			$fix_menu.css({
				'position':'fixed',
			});
			$('.fix-menu-wrap').addClass('fix');
			
			/* 2월 시작반 모집중 flag */
			if($('.fix-menu > div').hasClass('mozip')) {
				$('.mozip img').attr("src", function(idx, j){ return j.replace("_off.png","_on.png")});
			}

		}else{
			$fix_menu.css({
				'position':'absolute',
			});
			$('.fix-menu-wrap').removeClass('fix');

			/* 2월 시작반 모집중 flag */
			if($('.fix-menu > div').hasClass('mozip')) {
				$('.mozip img').attr("src", function(idx, j){ return j.replace("_on.png","_off.png")});
			}
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		// 그래프
		var gTop2 = $(".cont07");
		var graphScroll = $(window).scrollTop();
		var $graphTopScroll  = gTop2.offset().top-150;

		if(graphScroll >= $graphTopScroll){
			gTop2.addClass("on");
		} else {
			gTop2.removeClass("on");
		}
	});
}

// 대학 슬라이드
function rollSlide(){
	var rSwiper = new Swiper('.roll-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		speed: 2500,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
	});

	$('.roll-swiper').hover(function(){
			rSwiper.autoplay.stop()
		},function(){
			rSwiper.autoplay.start()
		}
	)

	$(".roll-swiper").on("mouseenter", function() {
        rSwiper.autoplay.stop();
    });

    $(".roll-swiper").on("mouseleave", function() {
        rSwiper.autoplay.start();
    });
}

/* 바자관 탭슬라이드 */
function bajaSlide(tab, contBox){
	var bajaSlideNav = new Swiper(tab, {
		slidesPerView: 'auto',
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var slideCont = new Swiper(contBox, {
		loop: true,
		autoHeight: 'true',
		spaceBetween: 60,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
		},
		thumbs: {
			swiper: bajaSlideNav 
		}
	});

	// $('.baja-slide .swiper-slide').hover(function(){
	// 	slideCont.autoplay.stop();
	// },function(){
	// 	slideCont.autoplay.start();
	// });
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
function randomIdx()  {
	var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide = Math.floor(Math.random() * slideTotal);
	return parseInt(r_slide);
}

// 생활관리 슬라이드
function manageSlide(){
	var mSlideNav = new Swiper('.manage-slide-nav', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var mSlide = new Swiper('.manage-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: true,
		autoplay:{
			delay: 7000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: mSlideNav
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;

				$('.manage-slide-nav .swiper-slide').eq(activeIndex).addClass('on').siblings().removeClass('on');
			}
		}
	});
}

// 맞춤관리 슬라이드
function studySlide(){
	var studyNav = new Swiper('.study-slide-nav', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var studySlide = new Swiper('.study-slide', {
		loop: true,
		centeredSlides: true,
		allowTouchMove: true,
		autoHeight: true,
		autoplay:false,
		thumbs: {
			swiper: studyNav
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;

				$('.study-slide-nav .swiper-slide').eq(activeIndex).addClass('on').siblings().removeClass('on');
			}
		}
	});
}

// 입시관리 슬라이드 
function tabSlide(){
	var $slide = $('.tab-slide > .swiper-wrapper > .swiper-slide')

	if($slide.length >= 2){
		var swipertab = new Swiper('.tab-slide', {
			slidesPerView: 1,
			loop: true,
			allowTouchMove: true,
			autoplay:true,
			autoplay:{
				delay: 4000,
				disableOnInteraction: false,
			},
			effect : 'fade',
			fadeEffect: {
				crosssFade: true
			},
		});

	}else{
		var swiperTab = new Swiper('.tab-slide', {
			loop:false,
			allowTouchMove: false
		});
	}

}

// 가정통신문 슬라이드 
function stSlide(){
	var $slide = $('.stu-slide > .swiper-wrapper > .swiper-slide')

	if($slide.length >= 2){
		var swiperSt = new Swiper('.stu-slide', {
			slidesPerView: 1, 
			loop: true,
			allowTouchMove: true,
			autoplay:true,
			autoplay:{
				delay: 6000,
				disableOnInteraction: false,
			},
			effect : 'fade',
			fadeEffect: {
				crosssFade: true
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
		});

	}else{
		var swiperSt = new Swiper('.stu-slide', {
			loop:false,
			allowTouchMove: false
		});
		$('.swiper-button-prev, .swiper-button-next').css('display','none')
	}

}

//프로그램 슬라이드
function programSlide(){
	var programSlideNav = new Swiper('.program-slide-nav', {
		slidesPerView: 2,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		
	});
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 1,
		loop: true,
		autoHeight: true,
		allowTouchMove: true,
		spaceBetween: 40,
		autoplay:{
			delay: 7000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: programSlideNav
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;

				$('.program-slide-nav .swiper-slide').eq(activeIndex).addClass('on').siblings().removeClass('on');
			}
		}
	});
}

// 부천 모집요강 탭
$('.tab li').on('click', function(){
	var idx = $(this).index();
	$(this).addClass('on').siblings().removeClass('on');
	$(this).parent().next().children('.content').removeClass('on');
	$(this).parent().next().children('.content').eq(idx).addClass('on');
});