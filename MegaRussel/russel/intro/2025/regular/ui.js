$(function() {
	/*======================================
					고정값
	========================================*/
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

	//스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);
	/*======================================
					//고정값
	========================================*/

	//탭1의 padding-top설정
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"200px"})

	// 비주얼 슬라이드 
	visualSlide()
	
	fixmenu();

	// cont03 리뷰슬라이드
	if($('.cont03 div').hasClass('review-slide')) {
		rSlide()
	}
	// cont04 바자관시간표 팝업
	$('.bt-tt02').on('click',function(){
		$('.layer-pop01').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop01 .bt-close').on('click',function(){
		$('.layer-pop01').removeClass('on')
		$('.mask-bg').css('display','none')
	})
	// cont04 바자관시설보기 팝업
	$('.bt-tt').on('click',function(){
		$('.layer-pop').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop .bt-close').on('click',function(){
		$('.layer-pop').removeClass('on')
		$('.mask-bg').css('display','none');
	})
	// cont05 선생님 슬라이드
	if($('.cont05 div').hasClass('teacher-swiper')){
		tSlide();
	}
	if($('.cont05 div').hasClass('teacher-sub-list')){
		teacherSlide();
	}

	// cont08 학습 콘텐츠
	programSlide();
});

/* 비주얼 bg 슬라이드 */
function visualSlide(){
	var vSwiper = new Swiper('.visual-slide',{
		speed: 2000,
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
	var $cont = $('.js-cont');
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();
	var $fix_top02 = $('.fix-menu').offset().top

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top - 100;

		$('html, body').animate({scrollTop:$cont_top }, 800);
		// 헤더가 pos-sticky 없을때 첫번째 탭 타겟위치
		// if (i == 0) {
		// 	if($('.headerWrap').hasClass('pos-sticky') === false){
		// 		$('html, body').animate({scrollTop:$cont_top + 20}, 800);
		// 	}
		// 	else{
		// 		// 첫번째 탭 클릭시 컨텐츠 위에서 아래로 스크롤이동
		// 		if($cont_top > preScrollTop ){
		// 			$('html, body').animate({scrollTop:$cont_top + $fix_h + 30 }, 800);				
		// 		}
		// 		// 첫번째 탭 컨텐츠 아래에서 위로 스크롤이동
		// 		else{
		// 			$('html, body').animate({scrollTop:$cont_top }, 800);
		// 		}
		// 	}
		// }
		// // 헤더가 pos-sticky 없을때 타겟위치
		// else if($('.headerWrap').hasClass('pos-sticky') === false){
		// 	$('html, body').animate({scrollTop:$cont_top - $fix_h}, 800);
		// }
		// else {			
			// 클릭시 컨텐츠 위에서 아래로 스크롤이동
		if($cont_top > preScrollTop ){
			$('html, body').animate({scrollTop:$cont_top + $fix_h/2 }, 800);				
		}
		else{
			// 클릭시 컨텐츠 아래에서 위로 스크롤이동
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
		// }
	});

	//count 한번만 실행
	let countStart = true
	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		var $fix_top = $('.fix-menu').offset().top

		// 스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}
		if (scroll <= $fix_top02) {
			$('.fix-menu').removeClass('fix');
		}

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 100);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
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

		// .cont07 도달하면 실행
		var cont07Offset = $('.cont07').offset().top; 

		if (scroll  >= cont07Offset) {
			$('.arrow-wrap').addClass('on');
		} else {
			$('.arrow-wrap').removeClass('on');
		}

		// .cont08 도달하면 실행
		var cont08Offset = $('.cont08').offset().top; 

		if (scroll  >= cont08Offset) {
			$('.coming-img').addClass('on');
		} else {
			$('.coming-img').removeClass('on');
		}
		// 퀵 fixed 메뉴
		var regularWrapTop = $('.regular-wrap').offset().top;

		if(scroll >= regularWrapTop + 350) {
			$('.f-quick').addClass('fixed')
		} else {
			$('.f-quick').removeClass('fixed')
		}
	});
}

/* cont02 카운트 */
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

// cont03 리뷰슬라이드
function rSlide(){
	var rSwiper = new Swiper('.review-slide',{
		autoplay: {
			delay: 7000,
			disableOnInteraction: false,
		  },
		loop:true,
		loopAdditionalSlides: 1,
		centeredSlides: true,
		speed: 500,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: -10,
		pagination: {
			el: '.swiper-pagination.type01',
			type: 'fraction',
		  },
	});
	
	$(window).scroll(function(){
		var scroll02 = $(window).scrollTop();
		
		// .cont03 도달하면 실행
		var cont03Offset = $('.cont03').offset().top; 

		if (scroll02  >= cont03Offset) {
			rSwiper.autoplay.start();
		} else {
			
			rSwiper.autoplay.stop();
		}
	})
}
// cont04 선생님 슬라이드
function tSlide(){
	var slideIndex01 = $(".teacher-swiper .swiper-slide").index()
	
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
	var slideTotal01 = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide01 = Math.floor(Math.random() * slideTotal01);
	return parseInt(r_slide01);
}

function teacherSlide(){
	var slideIndex02 = $(".teacher-sub-list .swiper-slide").index()
	
	var tSwiper = new Swiper('.teacher-sub-list',{
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
        initialSlide : randomIdx02(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.teacher-sub-list').hover(
		function(){
			tSwiper.autoplay.stop();
    },
		function(){
			tSwiper.autoplay.start();
		}
	);
}

//슬라이드 랜덤
function randomIdx02()  {
	var slideTotal02 = $('.teacher-sub-list .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide02 = Math.floor(Math.random() * slideTotal02);
	return parseInt(r_slide02);
}


// cont08 학습 콘텐츠
function programSlide(){
	var programNav = new Swiper('.program-navi', {
		slidesPerView: 4,
		spaceBetween: 12,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});

	var programCont = new Swiper('.program-slide', {
		loop: true,
		spaceBetween: 10,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 8000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: programNav
		},
		observer: true,
		observeParents: true,
		
		on: {
			transitionEnd: function () {
				if (window.AOS) {
					AOS.refresh();
				}
			}
		}
	});	
	
	$('.program-slide .swiper-slide').hover(
		function(){
			programCont.autoplay.stop();
    },
		function(){
			programCont.autoplay.start();
		}
	);
}