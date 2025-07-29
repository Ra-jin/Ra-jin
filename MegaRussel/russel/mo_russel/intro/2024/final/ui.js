$(function(){

	//수능 디데이
	dDay();

	//데이터 산출 기준
	dataResult();

	// cont01 전략 탭슬라이드
	strategySlide();

	//고정메뉴, 스크롤 이벤트
	if ($('.fix-menu').hasClass('js-fix-menu')) {
		fixmenu();
	}

	// cont02 선생님 롤링 슬라이드
	if ($('.cont02 div').hasClass('teacher-rolling')) {
		teacherSlide01()
	}

	if ($('.cont02 div').hasClass('teacher-sub-list')) {
		teacherSlide02()
	}	

	// cont03 바자관 탭슬라이드
	if ($('.cont03 div').hasClass('study-slide-wrap')) {
		studyHallSlide();
	}

	// cont03 파이널 탭슬라이드
	if ($('.cont03 div').hasClass('final-slide-wrap')) {
		finalSlide();
	}

	// cont04 학습 콘텐츠 슬라이드
	if ($('.cont04 div').hasClass('program-slide')) {
		programSlide();
	}

	// tabMenu('.tab-wrap','.tab-cont');

})

// D-Day
function dDay(){
    var dday = new Date("Nov 15,2024,00:00:00").getTime(); //디데이
	setInterval(function(){
		var now = new Date(); //현재 날짜 가져오기
		var distance = dday - now;
		var d = Math.floor(distance / (1000 * 60 * 60 * 24));
		$('.dday').html('D-'+d)
	}, 1000);
}

//데이터 산출 기준
function dataResult(){

	$('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
}

// cont01 전략 탭슬라이드
function strategySlide(){
	var stuSlideNav = new Swiper('.strategy-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,

	});	

	var slideCont = new Swiper('.strategy-slide', {
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		spaceBetween: 10,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true, 

	});

	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont01Top = $(".cont01").offset().top-150;
		let cont02Top = $(".cont02").offset().top-150;
		
		if (scroll >= cont01Top && scroll <= cont02Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();

		}
	})

}

// 고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	//var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 100;
	var $bt_fix = $('.js-fix-menu li');
	var $fix_h = $('.js-fix-menu').height() + 100;

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
		
		$doc.animate({scrollTop:$contWrap_top - $fix_h}, 800);
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

		// 각 cont진입 시 클래스 active 추가
		// $cont.each(function(i){
		// 	var $target = $cont.eq(i);
		// 	var $target_top  = Math.floor($target.offset().top - $fix_h);
		// 	if(scroll >= $target_top){
		// 		$target.addClass('active').siblings().removeClass('active');
		// 	}
		// });

		// fix-menu 탭 영역 진입 시 fix-button 클래스 on 추가
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);
			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

	});
}

// cont02 선생님 롤링 슬라이드
function teacherSlide01() {
	var teacherSwiper = new Swiper('.teacher-rolling',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 3000,
		slidesPerView: 'auto',
		spaceBetween: 20,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
		observer: true,
		observeParents: true
	});
}

// cont02 선생님 롤링 슬라이드02
function teacherSlide02(){
	var tSwiper = new Swiper('.teacher-sub-list' ,{
		// allowTouchMove: false,
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		centeredSlidesBounds: true,
		loop:true,
		speed: 2700,
		slidesPerView: 'auto',
		spaceBetween: 15,
	});
}

// cont03 바자관 탭슬라이드
function studyHallSlide(){

	var stuSlideNav = new Swiper('.study-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	var slideCont = new Swiper('.study-slide', {
		spaceBetween: 10,
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true,
	});
	
	
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont03Top = $(".cont03").offset().top-150;
		let cont04Top = $(".slideEnd").offset().top-150;
		
		if (scroll >= cont03Top && scroll <= cont04Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();

		}
	})

	//시간표 클릭 시 딤드처리
	$('.bt-tt').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-tt').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.bt-close-tt').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})

}

// cont03 파이널 탭슬라이드
function finalSlide(){

	var stuSlideNav = new Swiper('.final-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	var slideCont = new Swiper('.final-slide', {
		spaceBetween: 10,
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true,
	});
	
	
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont03Top = $(".cont03").offset().top-150;
		let cont04Top = $(".cont04").offset().top-150;
		
		if (scroll >= cont03Top && scroll <= cont04Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();

		}
	})


}

// cont04 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		spaceBetween: 26,
		speed: 2000,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.program",
			clickable: true
		},
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.program-slide .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".program-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")
}





