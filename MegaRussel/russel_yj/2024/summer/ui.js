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

	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"220px"})

	fixmenu();
	manageSlide();
	programSlide();
	rollSlide();
	planSlide();

});


/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();
	// var $quick_top = $('.quick').offset().top;

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
		if($('.headerWrap').hasClass('pos-sticky') === false){
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
		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');
		}else{
			$('.fix-menu').removeClass('fix')
		}

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h -102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		// if(scroll >= $quick_top){
		// 	$('.quick').addClass('fix');
		// 	$('.quick a').eq(0).hide();
		// }else{
		// 	$('.quick').removeClass('fix')
		// 	$('.quick a').eq(0).show();
		// }


	});
}

//  1:1 맞춤 관리 탭슬라이드
function manageSlide(){
	var stuSlideNav02 = new Swiper('.manage-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	var slideCont02 = new Swiper('.manage-slide', {
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav02
		},
		observer: true,
		observeParents: true,
	});
}

//전용 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 3,
		slidesPerGroup : 1,
		spaceBetween: 40,
		loop: true,
		loopAdditionalSlides : 5,
		allowTouchMove: true,
		speed: 3000,
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type01",
			clickable: true
		},
	});
}


// 서의치 학생슬라이드
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

// 학습계획표 탭슬라이드
function planSlide(){
	var planSlideNav = new Swiper('.plan-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	var slideCont = new Swiper('.plan-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: planSlideNav
		},
		// spaceBetween: 10,
	});	
	
	// 서의치일 경우
	if($('.cont').hasClass('russel_sm')){
		$(window).scroll(function(){
			var scroll = $(window).scrollTop();
			var planSltop = $('.cont10').offset().top - 200;
			var botbar = $('.bottom-bar').offset().top - 1550;
			if(scroll >= planSltop && scroll < botbar) {
				slideCont.autoplay.start();
			}
			else{
				slideCont.autoplay.stop();
			}		
		});
	}

}

