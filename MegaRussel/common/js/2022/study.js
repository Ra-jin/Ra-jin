

// 클릭 시 컨텐츠 위치 이동
$(document).ready(function(){
	var s_top	= $(".study-wrap").offset().top
	$("html, body").animate({scrollTop:s_top},500);
	
	if(window.location.hash) {
		var hash = window.location.hash.substring(1);
		$('html,body').animate({
			'scrollTop':   $('#' + hash).offset().top
		}, 0);
	}else{
		$("html, body").animate({scrollTop:s_top},500);
	}	
	
	// 영상 플레이
	setTimeout(function() {
		$(".main-video").get(0).play()
	}, 4500)


	$(window).on('scroll',function(){
        var scroll 		= $(window).scrollTop();

		// flip박스 펼침
		var c_top = $('.flip-wrap').offset().top -300
		
		if(scroll >= c_top){
			$('.flip-wrap').addClass('active')
		}
		
		sclOn()	//고정메뉴 ON

	})

	// fixMenu()		//고정메뉴
	hoverBox()		//인덱스 마우스 오버
	slidePoint01()	//point01 슬라이드
	slidePoint02()	//point02 슬라이드
	infoPop()		//point02 슬라이드 내부 팝업
	stSlide()		//학생 후기 슬라이드
	serviceSlide()	//콘텐츠&서비스 슬라이드
	cafeSlide()		//식당운영 슬라이드
	tab()
	reviewSlide() 	//학생후기 슬라이드
})

// 인덱스 액션
function hoverBox(){
	var $bt_bg 		= $('.visualBg > .menu-list');
	var $bt_cont	= $('.visualCont > .menu-list > .m-tit');

	$bt_cont.on('mouseover',function(){
		var idx = $(this).parent().index()

		$(this).parent().addClass('on').siblings().removeClass('on')
		$bt_bg.eq(idx).addClass('on').siblings().removeClass('on')
		$('.bt-info-more').stop().fadeOut(10);

		if(idx == 0){
			$('.flip').attr('class','flip on');
		}else if(idx == 1){
			$('.flip').attr('class','flip on');
		}else if(idx == 2){
			$('.flip').attr('class','flip on');
		}else if(idx == 3){
			$('.flip').attr('class','flip on');
		}
	})

	$('.menu-list').on('mouseleave',function(){
		$('.flip').attr('class','flip');
		$('.bt-info-more').stop().fadeIn(10);
		$bt_bg.removeClass('on')
		$(this).removeClass('on')
	})

}

// fix&quick 메뉴 클릭 액션
// function fixMenu(){		
// 	var $bt			= $(".fix-menu li > a");
// 	var $bt_sub 	= $(".depth-02 > .in > a");
// 	var $cont		= $(".content-wrap");
// 	var $cont_sub	= $(".cont03 > .content");

// 	// 1depth
// 	$bt.on('click',function(e){
// 		e.preventDefault();

// 		var i 	= $(this).parent().index();
// 		var top	= $cont.eq(i).offset().top;

// 		$("html, body").animate({scrollTop:top},1000);	
// 	})

// 	// 2depth
// 	$bt_sub.on('click',function(e){
// 		e.preventDefault();

// 		var i 	= $(this).index();
// 		var top		= $cont_sub.eq(i).children('.inner').offset().top;

// 		$("html, body").animate({scrollTop:top},1000);	
// 	})
	
// 	$(window).on('scroll',function(){
// 		var $cont_t	= $(".content-wrap").eq(0).offset().top;

// 		if($(window).scrollTop() >= $cont_t){
// 			$('.fix-study-wrap').addClass('on')
// 		}else{
// 			$('.fix-study-wrap').removeClass('on')
// 		}
// 	});
// }

// 스크롤 시 해당 메뉴에 on
function sclOn(){
	var $bt			= $(".fix-menu > li > a");
	var $bt_sub		= $(".depth-02 > .in > a");
	var $cont		= $(".content-wrap");
	var $cont_sub	= $(".content");
	var $cont03_sub	= $(".content-wrap > .content");
	var winScl		= $(window).scrollTop();

	// 1depth
	$cont.each(function(idx){
		var target      	= $cont.eq(idx);
		var target_h		= $cont.height()/2
		var target_top  	= Math.floor(target.offset().top);
		var target_top1 	= $cont.eq(0).offset().top - target_h;
		

		if(winScl < target_top1){
			$bt.parent().removeClass("on")
		}else if(winScl >= target_top){
			$bt.parent().eq(idx).addClass("on").siblings().removeClass("on");
		}
	})

	// 각 컨텐츠에 클래스 애니메이션을 위한 클래스 ON 추가
	$cont_sub.each(function(idx){
		var target    	= $cont_sub.eq(idx);
		var target_top    = Math.floor(target.offset().top - 300);

		if(winScl >= target_top){
			$cont_sub.eq(idx).addClass("on")
		}
	})

	// 2depth
	// $cont03_sub.each(function(idx){
	// 	var target		= $cont03_sub.eq(idx).children('.inner');
	// 	var target_top  = Math.floor(target.offset().top);

	// 	if(winScl >= target_top){
	// 		$bt_sub.eq(idx).addClass("on").siblings().removeClass("on");
	// 	}
	// })
}

function reviewSlide(){
	var swiper01 = new Swiper('.slide-review', {		
		slidesPerView: 3,
		spaceBetween: 20,
		loop: true,
		allowTouchMove: false,
		autoplay:true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: '.slide-review ~ .swiper-button-next',
			prevEl: '.slide-review ~ .swiper-button-prev',
		},
    });
}

function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		
		{
			duration: 700,
			easing:'swing',
			step: function() {
			$this.text(Math.floor(this.countNum));
			},
			complete: function() {
			$this.text(this.countNum);
			}
		});
	});
}


//스크롤 이벤트
$(window).scroll(function(){
	if($('.cont > div').hasClass('cont04')) {
		var cTop = $(".cont04");
			// var cont05 = $(".cont05");
			var $ctopScroll  = cTop.offset().top-150;
			var gTop = $(".cont01 .start");
			// var chartEl = $(".doughnut > div");
			var $gtopScroll  = gTop.offset().top-150;
			if(scroll >= $gtopScroll){
				gTop.addClass("on");
			} else {
				gTop.removeClass("on");
			}
			if(scroll >= $ctopScroll) {
				cTop.addClass("on");
			} else {
				cTop.removeClass("on");
			}
	}
});

// point01 슬라이드
function slidePoint01(){
	var point01_Thumbs = new Swiper('.slide-point01-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false
	});	
	var slidePoint01 = new Swiper('.slide-point01', {
		loop: false,
		speed : 700,
		allowTouchMove: false,
		effect: 'fade',
		autoplay:true,
		autoplay:{
			delay: 6000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: point01_Thumbs
		},
	});
	
	var	$bt		= $('.bt-point01-slide li');
	var $bt02	= $('.slide-point01-navi .swiper-slide');
	var $slide	= $('.slide-point01 .swiper-slide')

	// 인덱스 > 입시담임선생님 관리 클릭 포커스
	$bt.on('click',function(idx){
		var idx = $(this).index();
		slidePoint01.slideTo(idx)
	})
}

// point02 슬라이드
function slidePoint02(){
	var point02_Thumbs = new Swiper('.slide-point02-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false
	});	
	var slidePoint02 = new Swiper('.slide-point02', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		speed : 500,
		allowTouchMove: true,
		autoplay:false,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: point02_Thumbs
		},
	});

	$('.slide-point02').hover(
		function(){
			slidePoint02.autoplay.stop()
		},
		function(){
			slidePoint02.autoplay.start(0)
		}
	)

}

// 학생 후기 슬라이드
function stSlide(){
	var $slide = $('.student-slide > .swiper-wrapper > .swiper-slide')
	// var slide_l = $slide.lenght;

	if($slide.length >= 2){
		var swiper02 = new Swiper('.student-slide', {
			slidesPerView: 1,
			spaceBetween: 60,
			loop: true,
			allowTouchMove: true,
			autoplay:true,
			autoplay:{
				delay: 6000,
				disableOnInteraction: false,
			},
			navigation: {
				nextEl: '.student-slide .swiper-button-next',
				prevEl: '.student-slide .swiper-button-prev',
			},
		});
		$('.student-slide').hover(
			function(){
				swiper02.autoplay.stop()
			},
			function(){
				swiper02.autoplay.start(0)
			}
		)
	}else{
        var swiper02 = new Swiper('.student-slide', {
            loop:false,
			allowTouchMove: false
        });
		$('.student-slide .swiper-button-prev, .student-slide .swiper-button-next').css('display','none')
    }
	
}

function serviceSlide(){
	var swiper03 = new Swiper('.list-service02', {
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 3800,
		grabCursor: true,
		slidesPerView: 'auto',
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
		// mousewheel:true
    });
	$('.list-service02').hover(
		function(){
			swiper03.autoplay.stop()
		},
		function(){
			swiper03.autoplay.start(0)
		}
	)
}

function cafeSlide(){
	var swiper04 = new Swiper('.cafeteria-slide', {		
		slidesPerView: 5,
		loop: true,
		allowTouchMove: false,
		autoplay:true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: '.cafeteria-slide .swiper-button-next',
			prevEl: '.cafeteria-slide .swiper-button-prev',
		},
    });
}

// 탭
function tab(){
	$('.tab-wrap').each(function(){
		var $bt     = $(this).find(".bt-tab > a");
		var $cont   = $(this).find(".cont-tab");

		$bt.first().addClass("on");
		$cont.first().addClass("on");

		$bt.on('click',function(e){
			e.preventDefault();
			var idx = $(this).index();

			$bt.eq(idx).addClass("on").siblings().removeClass("on");
			$cont.eq(idx).addClass("on").siblings().removeClass("on");
		})
	})
}

//point02 슬라이드 내부 팝업
function infoPop(){
	var $bt_info	= $('.ico-hand')
	var $bt_close	= $('.txt-detail .bt-close')

	$bt_info.on('click',function(){
		$('.txt-detail').css('display','none');
		$(this).next('.txt-detail').css('display','block');
	})

	$bt_close.on('click',function(){
		$(this).parent('.txt-detail').css('display','none');
	})
}

