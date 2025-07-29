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

	//스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);

	//탭1의 padding-top설정
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"220px"})

	fixmenu();

	// .cont03 바자관 슬라이드
	studyHallSlide();
	
	// cont06 학습콘텐츠
	programSlide();
})

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 86;
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
			$('html, body').animate({scrollTop:$cont_top - $fix_h}, 800);
		}
		else {			
			// 클릭시 컨텐츠 위에서 아래로 스크롤이동
			if($cont_top > preScrollTop ){
				$('html, body').animate({scrollTop:$cont_top + $fix_h/2 }, 800);				
			}
			else{
				// 클릭시 컨텐츠 아래에서 위로 스크롤이동
				$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
			}
		}
	});

	//count 한번만 실행
	let countStart = true
	let isScroll = true
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
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

	});
}


// .cont03 바자관 슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 4,
		spaceBetween: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	


	var slideCont = new Swiper('.studyHall-slide', {
		loop: true,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 8000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true
	});

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
}


// cont06 학습 콘텐츠
// function programSlide(){
// 	var slideSetting = {
// 		slidesPerView: 3,
// 		spaceBetween: 12,
// 		freeMode: true,
// 		watchSlidesVisibility: true,
// 		watchSlidesProgress: true,
// 		allowTouchMove:false,
// 	}

// 	if ($('.program-navi').hasClass('russel_bundang')) {
// 		var programNav = new Swiper('.program-navi', slideSetting)
// 	} else {
// 		var programNav = new Swiper('.program-navi', {
// 			slidesPerView: 4,
// 			spaceBetween: 12,
// 			freeMode: true,
// 			watchSlidesVisibility: true,
// 			watchSlidesProgress: true,
// 			allowTouchMove:false, 
// 		});
// 	}
	

// 	var programCont = new Swiper('.program-slide', {
// 		loop: true,
// 		spaceBetween: 10,
// 		autoHeight: true,
// 		speed : 500,
// 		allowTouchMove: true,
// 		autoplay:{
// 			delay: 8000,
// 			disableOnInteraction: false,
// 		},
// 		thumbs: {
// 			swiper: programNav
// 		},
// 		observer: true,
// 		observeParents: true
// 	});		

// 	$('.program-slide .swiper-slide').hover(
// 		function(){
// 			programCont.autoplay.stop();
//     },
// 		function(){
// 			programCont.autoplay.start();
// 		}
// 	);
// }


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
		observeParents: true
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