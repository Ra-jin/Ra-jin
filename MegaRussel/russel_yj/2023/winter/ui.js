$(function() {
	// var $top = $('.winter-wrap').offset().top -102;
	// $('html, body').animate({scrollTop:$top},500);
	//탭1의 padding-top설정
	//gnb틀고정용
	var $top2 = $(".winter-wrap").position().top
	var headerH = $('.headerWrap').outerHeight();
	var headerfix = $('.headerWrap').hasClass('pos-sticky');
	window.onload = function() {
		setTimeout(function(){        
			if(headerfix == true){		
				$("html,body").animate({scrollTop: 0}, 0);	
				$('body, html').animate({scrollTop : 183 }, 500)
			}
			else{                    
				$('body, html').animate({scrollTop : 183 }, 500)
			}              
		}, 200);
	}
	$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"234px"})

	tabMenu('.bt-tab.t_01','.cont-box.t_01');
	tabMenu('.bt-tab.t_02','.cont-box.t_02');

	fixmenu();
	passSlide();
	rollSlide();
	studySlide();
	tabSlide();

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

		//스크롤시 fixmenu 활성화
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
		}else{
			$fix_menu.css({
				'position':'absolute',
			});
			$('.fix-menu-wrap').removeClass('fix');
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});


		//.cont00에 스크롤시 count 스타트
		var gTop = $(".cont01");
		var chartEl = $(".graph02 > div");
		var $gtopScroll  = gTop.offset().top-70;
		if(scroll >= $gtopScroll){
			gTop.addClass("on");
			//도넛차트 on일때 한번만 시작
			if(gTop.hasClass("on") && chartEl.hasClass('chart-area') && start == true) {
				chartDn()
				start = false
			}
		} else {
			gTop.removeClass("on");
			if (chartEl.hasClass('chart-area')) {
				//도넛차트 destroy
				$("#doughnut-chart").remove();
				$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
				start = true
			}
		}

		// 그래프
		var gTop2 = $(".cont09");
		var graphScroll = $(window).scrollTop();
		var $graphTopScroll  = gTop2.offset().top-150;

		if(graphScroll >= $graphTopScroll){
			gTop2.addClass("on");
		} else {
			gTop2.removeClass("on");
		}



		//여기숙 우측 배너 css 속성 변경, 서의치관 우측배너 조건 추가
		var wScroll = $(window).scrollTop();
		var winterWrap = $('.winter-wrap');
		var winterWrapTop = $('.winter-wrap').offset().top;

		if(wScroll >= winterWrapTop + 50){
			$('.quick.russel_w').addClass('on');
		}else {
			$('.quick').removeClass('on')
		}	
		if(wScroll >= 821){
			$('.quick02').addClass('on');
		}else{
			$('.quick02').removeClass('on')
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

/* 합격 시스템 롤링 */
function passSlide() {
	var cardSwiper = new Swiper(".pass-swiper", {
		slidesPerView: 'auto',
		spaceBetween: 40,
		loop: true,
		loopAdditionalSlides: 1, 
		autoplay: {
		delay: 7000,
		disableOnInteraction: false,
		},
		centeredSlides: true,
		on: {
			beforeTransitionStart : function () {

				$('.pass-swiper .swiper-slide-active').addClass('active').siblings().removeClass('active')
			}
		},	
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
