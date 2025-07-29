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
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"210px"})

	fixmenu();

	// cont04 학생 슬라이드
	rollSlide();

	// cont07 강사진 슬라이드
	tSlide();

	// cont08 학습 콘텐츠
	studyHallSlide();
	stuSlide();

	// cont09 콘텐츠리스트 롤링
	cSlide();

	// cont10 프로그램 컨텐츠
	//programSlide();

});

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 80;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top - 102;

		// 헤더가 pos-sticky 없을때 첫번째 탭 타겟위치
		if (i == 0) {
			if($('.headerWrap').hasClass('pos-sticky') === false){
				$('html, body').animate({scrollTop:$cont_top + 20}, 800);
			}
			else{
				// 첫번째 탭 클릭시 컨텐츠 위에서 아래로 스크롤이동
				if($cont_top > preScrollTop ){
					$('html, body').animate({scrollTop:$cont_top + $fix_h + 30 }, 800);				
				}
				// 첫번째 탭 컨텐츠 아래에서 위로 스크롤이동
				else{
					$('html, body').animate({scrollTop:$cont_top }, 800);
				}
			}
		}
		// 헤더가 pos-sticky 없을때 타겟위치
		else if($('.headerWrap').hasClass('pos-sticky') === false){
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 20}, 800);
		}
		else {			
			// 클릭시 컨텐츠 위에서 아래로 스크롤이동
			if($cont_top > preScrollTop ){
				$('html, body').animate({scrollTop:$cont_top + $fix_h/2 }, 800);				
			}
			// 클릭시 컨텐츠 아래에서 위로 스크롤이동
			else{
				$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
			}
		}
	});

	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		// 스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
			$(".js-cont").eq(0).children().eq(0).css({"padding-top":"130px"})
		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}else{
			$('.fix-menu').removeClass('fix')
			$(".js-cont").eq(0).children().eq(0).css({"padding-top":"210px"})
		}

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
		// 퀵 fixed 메뉴
		var winterWrapTop = $('.half-wrap').offset().top;

		if(scroll >= winterWrapTop + 350) {
			$('.f-quick').addClass('fixed')
		} else {
			$('.f-quick').removeClass('fixed')
		}
	});
}


// cont04 학생슬라이드
function rollSlide(){
	$(".roll-slide").each(function(i){
		var $this = $(this);
		var slide = $this.addClass('roll-slide-' + parseInt(i+1))
	
		var rSwiper = new Swiper(slide, {
			autoplay: {
				delay: 0,
				disableOnInteraction: false,
				pauseOnMouseEnter: true,
			},
			loop:true,
			centeredSlides: true,
			centeredSlidesBounds: true,
			spaceBetween: 30,
			speed: 3500,
			grabCursor: true,
			initialSlide : randomIdx(),//슬라이드 시작 랜덤
			slidesPerView: 'auto',
			freeMode: {
				enabled: true,
				momentumBounce:false
			},
		});

		$('.roll-slide').hover(
			function(){
				rSwiper.autoplay.stop();
		},
			function(){
				rSwiper.autoplay.start();
			}
		);
    });
}

//슬라이드 랜덤
function randomIdx()  {
	var slideTotal01 = $('.roll-slide .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide01 = Math.floor(Math.random() * slideTotal01);
	return parseInt(r_slide01);
}

// cont07 선생님 슬라이드
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
}

//슬라이드 랜덤
function randomIdx()  {
	var slideTotal01 = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide01 = Math.floor(Math.random() * slideTotal01);
	return parseInt(r_slide01);
}

// cont08 학습 콘텐츠
function studyHallSlide(){
	var studyHallNav = new Swiper('.studyHall-navi', {
		slidesPerView: 3,
		// spaceBetween: 2,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});

	var studyHallCont = new Swiper('.studyHall-slide', {
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
			swiper: studyHallNav
		},
		observer: true,
		observeParents: true
	});	
	
	$('.studyHall-slide .swiper-slide').hover(
		function(){
			studyHallCont.autoplay.stop();
    },
		function(){
			studyHallCont.autoplay.start();
		}
	);

	$(window).scroll(function () {
        var scroll = $(window).scrollTop();
        let con08 = $(".cont08");
    	let con08Top = con08.offset().top - 150;
        let con09Top = $(".cont09").offset().top - 150;

        if (scroll >= con08Top && scroll <= con09Top) {
            con08.addClass('on');
            studyHallCont.autoplay.start();
        } else {
            con08.removeClass('on');
            studyHallCont.autoplay.stop();
        }
    });
}

//cont08 학생 맞춤 관리
function stuSlide(){
	$(".stu-slide").each(function(i){
		var $this = $(this);
		var slide01 = $this.addClass('stu-slide-' + parseInt(i+1))

		var stuSlide = new Swiper(slide01, {
			autoplay: {
				delay: 0,
				disableOnInteraction: false,
				pauseOnMouseEnter: true,
			},
			loop:true,
			centeredSlides: true,
			centeredSlidesBounds: true,
			speed: 3500,
			grabCursor: true,
			initialSlide : randomIdx(),//슬라이드 시작 랜덤
			slidesPerView: 'auto',
			spaceBetween: 30,
			freeMode: {
				enabled: true,
				momentumBounce:false
			},
		});
	});
}

// cont09 콘텐츠리스트 롤링 슬라이드
function cSlide(){
	var ctSwiper = new Swiper('.con-roll',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 5000,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 80,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}

// cont10 프로그램 컨텐츠
function programSlide(){
	var proSwiper = new Swiper('.program-slide',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 5000,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

	$('.program-slide').on('mouseenter', function () {
        proSwiper.autoplay.stop();
		// proSwiper.speed = 0; 
    }).on('mouseleave', function () {
        proSwiper.autoplay.start();
		// proSwiper.speed = 5000; 
    });
}