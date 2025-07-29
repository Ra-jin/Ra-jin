$(function () {
	/*======================================
					고정값
	========================================*/

	// // 페이지 로드 후 1초 동안만 스크롤 비활성화
	// let isScrollLocked = true;

	// $(window).on('load', function () {
	// 	if (!window.location.hash) {
	// 		const target = document.querySelector('.visual-wrap');
	// 		if (target) {
	// 			const endY = target.getBoundingClientRect().top + window.pageYOffset;
	// 			window.scrollTo(0, endY + 1); // +1 픽셀은 트리거 목적
	// 		}
	// 	}

	// 	setTimeout(function () {
	// 		isScrollLocked = false;  // 1초 후 스크롤 해제
	// 	}, 1000);
	// });

	// // 스크롤 막기
	// $(window).on("scroll", function () {
	// 	if (isScrollLocked) {
	// 		const target = document.querySelector('.visual-wrap');
	// 		if (target) {
	// 			const endY = target.getBoundingClientRect().top + window.pageYOffset;
	// 			window.scrollTo(0, endY);
	// 		}
	// 	}
	// });

	let isScrollLocked = true;

	// hash가 있는 경우엔 스크롤 락 자체를 건너뛰기
	if (window.location.hash) {
		isScrollLocked = false;
	}

	$(window).on('load', function () {
		if (!window.location.hash) {
			const target = document.querySelector('.visual-wrap');
			if (target) {
				const endY = target.getBoundingClientRect().top + window.pageYOffset;
				window.scrollTo(0, endY + 1);
			}
		}

		setTimeout(function () {
			isScrollLocked = false;
		}, 1000);
	});

	// 스크롤 강제 고정 (hash 없는 경우만)
	$(window).on("scroll", function () {
		if (isScrollLocked) {
			const target = document.querySelector('.visual-wrap');
			if (target) {
				const endY = target.getBoundingClientRect().top + window.pageYOffset;
				window.scrollTo(0, endY);
			}
		}
	});



	// 탭1의 padding-top 설정
	$(".js-cont").eq(0).children().eq(0).css({ "padding-top": "220px" });

	fixmenu();

	if ($('.container').hasClass('russel')) {
		dcSpecialSlide();
	}

	studyHallSlide();
	manageSlide();

	if ($('.cont07 div').hasClass('teacher-swiper')) {
		tSlide();
	}
	if ($('.cont07 div').hasClass('teacher-sub-list')) {
		teacherSlide();
	}

	ctSlide();
});















// $(function() {
// 	/*======================================
// 					고정값
// 	========================================*/
// 	//gnb틀고정용
// 	$(window).on('load', function(){
// 		if (!window.location.hash) { // 이 조건을 추가!
// 			$('html, body').animate({
// 				scrollTop : $('.visual-wrap').offset().top + 1
// 			});
// 		}
// 	});


// 	//페이지 로드 후 1초 동안 스크롤 중지 후 1초 지나면 스크롤 가능하도록
// 	function delay(){
// 		setTimeout(enableScroll ,1000);
// 	}

// 	//스크롤 시 스크롤 안 되게 하는 이벤트 제거
// 	function enableScroll(){
// 		$(window).off("scroll", disableScroll);
// 	}

// 	//스크롤 안 되게 하는 이벤트
// 	function disableScroll(){
// 		//페이지 상단 위치값 찾기
// 		var target = document.querySelector('.visual-wrap');
// 		var endY = target.getBoundingClientRect().top + window.pageYOffset;

// 	//스크롤 Y값 이동
// 		window.scrollTo(0, endY);
// 	}
// 	$(window).on("load", delay);

	
// 	$(window).on("scroll", function () {
// 		if (!window.location.hash) {
// 			disableScroll();
// 		}
// 	});

// 	/*======================================
// 					//고정값
// 	========================================*/
	
// 	//탭1의 padding-top설정
// 	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"220px"})

// 	fixmenu();


// 	if($('.container').hasClass('russel')){

// 		// cont04-1 바자관 슬라이드
// 		dcSpecialSlide();
// 	}
	
// 	// cont05 바자관 슬라이드
// 	studyHallSlide();

// 	// cont06 관리 슬라이드
// 	manageSlide();

// 	// cont07 선생님 슬라이드
// 	if($('.cont07 div').hasClass('teacher-swiper')){
// 		tSlide();
// 	}
// 	if($('.cont07 div').hasClass('teacher-sub-list')){
// 		teacherSlide();
// 	}

// 	// cont08 콘텐츠 슬라이드
// 	ctSlide()
// });





/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();
	var $fix_top = $('.fix-menu').offset().top

	// fixmenu 클릭 시 이동
	$bt_fix.on('click', function (e) {
		e.preventDefault();
		var i = $(this).index();
		var $cont_i = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
	  
		// 첫 번째 탭이 아니면 -100
		if (i !== 0) {
		  $cont_top -= 100;
		}
	  
		// 클릭 시 컨텐츠 위에서 아래로 스크롤 이동
		if ($cont_top > preScrollTop) {
		  $('html, body').animate({ scrollTop: $cont_top + $fix_h / 2 }, 800);
		} else {
		  // 클릭 시 컨텐츠 아래에서 위로 스크롤 이동
		  $('html, body').animate({ scrollTop: $cont_top - $fix_h + 3 }, 800);
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
		}else if(scroll <= $fix_top - 100){
			$('.fix-menu').removeClass('fix')
		}
		

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 100);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
		//.cont02에 스크롤시 클래스 'on'추가
		var gTop = $(".cont02");
		var $gtopScroll  = gTop.offset().top-300;
		if(scroll >= $gtopScroll ){
			gTop.addClass("on");
		} 
		
	});
}

// cont05 바자관 슬라이드
function studyHallSlide(){
	
	// 5개 슬라이드
	var slideSetting = {
		slidesPerView: 5,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		grabCursor: true,
	}
		
	if ($('.studyHall-navi').hasClass('s-five')) {
		var stuSlideNav = new Swiper('.studyHall-navi', slideSetting)
	} else {
		var stuSlideNav = new Swiper('.studyHall-navi', {
			slidesPerView: 4,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			allowTouchMove:false,
			grabCursor: true,
		});	
	}

	var slideCont = new Swiper('.studyHall-slide', {
		loop: true,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		grabCursor: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true
	});
    //  스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll03 = $(window).scrollTop();
		
		// .cont05 도달하면 실행
		let cont05Top = $(".cont05").offset().top;
		let con06Top = $(".cont06").offset().top;

		if (scroll03 >= cont05Top && scroll03 <= con06Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();
		}
	});
    $('.studyHall-slide').hover(
		function(){
			slideCont.autoplay.stop();
    },
		function(){
			slideCont.autoplay.start();
		}
	);
}

// cont04-1 대치 스페셜 슬라이드
function dcSpecialSlide(){
	
	var specialSlideNav = new Swiper('.special-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		grabCursor: true,
	});	

	var mSlideCont = new Swiper('.special-slide', {
		loop: true,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		grabCursor: true,
		// autoplay:{
		// 	delay: 5000,
		// 	disableOnInteraction: false,
		// },
		thumbs: {
			swiper: specialSlideNav
		},
		spaceBetween: 40,
		observer: true,
		observeParents: true,
		on: {
            slideChange: function () {
                // 현재 활성화된 슬라이드의 인덱스 가져오기 (loop 모드 주의)
                let activeIndex = this.realIndex; // Swiper는 loop 모드에서 가상 인덱스를 사용

                let secondNavSlide = document.querySelector('.special-navi .swiper-slide:nth-child(2)');

            }
		}
	});

}


// cont06 관리 슬라이드
function manageSlide(){
	
	var manageSlideNav = new Swiper('.manage-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		grabCursor: true,
	});	

	var mSlideCont = new Swiper('.manage-slide', {
		loop: true,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		grabCursor: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: manageSlideNav
		},
		observer: true,
		observeParents: true,
		on: {
            slideChange: function () {
                // 현재 활성화된 슬라이드의 인덱스 가져오기 (loop 모드 주의)
                let activeIndex = this.realIndex; // Swiper는 loop 모드에서 가상 인덱스를 사용

                let secondNavSlide = document.querySelector('.manage-navi .swiper-slide:nth-child(2)');

                if (activeIndex === 2) { // 3번째 슬라이드 (0부터 시작하므로 2)
                    secondNavSlide.classList.add('dg-bg');
                } else {
                    secondNavSlide.classList.remove('dg-bg');
                }
            }
		}
	});
	
    //  스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll02 = $(window).scrollTop();
		
		// .cont06 도달하면 실행
		let cont06Top = $(".cont06").offset().top;
		let con07Top = $(".cont07").offset().top;

		if (scroll02 >= cont06Top && scroll02 <= con07Top) {
			mSlideCont.autoplay.start();
		} else {
			mSlideCont.autoplay.stop();
		}
	});
    $('.manage-slide').hover(
		function(){
			mSlideCont.autoplay.stop();
    },
		function(){
			mSlideCont.autoplay.start();
		}
	);
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

//전용 학습 콘텐츠 슬라이드
function ctSlide(){
	var ctSlide = new Swiper('.ct-slide', {
		spaceBetween: 40,
		loop: true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		grabCursor: true,
		speed: 6000,
		autoplay:{
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		slidesPerView: 'auto',
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}