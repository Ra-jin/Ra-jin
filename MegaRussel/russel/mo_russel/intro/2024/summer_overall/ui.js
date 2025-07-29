$(function(){
	//데이터 산출 기준
	dataResult();

	//고정메뉴, 스크롤 이벤트
	fixmenu();


	if ($('.cont03 div').hasClass('grade-slide-wrap')) {
		// cont03 학년별 탭슬라이드
		gradeSlide();
	}

	// cont03 최상위권 탭슬라이드
	firstClassSlide();
	
	// cont04 선생님 롤링 슬라이드
	if ($('.cont04 div div').hasClass('teacher-rolling')) {
		teacherSlide01()
	}

	if ($('.cont04 div div').hasClass('teacher-sub-list')) {
		teacherSlide02()
	}	

	// cont06 바자관 탭슬라이드
	studyHallSlide();

	// cont07 관리 탭슬라이드
	manageSlide();
	
	// cont08 학습 콘텐츠 슬라이드
	programSlide();


})

//데이터 산출 기준
function dataResult(){

	$('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
}


// 고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	//var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 102;
	var $bt_fix = $('.js-fix-menu li');
	var $fix_h = $('.js-fix-menu').height() + 102;

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


// cont03 최상위권 탭슬라이드
function firstClassSlide(){
	var stuSlideNav = new Swiper('.firstClass-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	


	var slideCont = new Swiper('.firstClass-slide', {
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
		pagination: {
			el: ".swiper-pagination.firstClass",
			clickable: true
		},
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


}

// cont03 학년별 탭슬라이드
function gradeSlide(){
	var stuSlideNav = new Swiper('.grade-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	


	var slideCont = new Swiper('.grade-slide', {
		spaceBetween: 10,
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
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

// cont06 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,

	});	


	var slideCont = new Swiper('.studyHall-slide', {
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
		pagination: {
			el: ".swiper-pagination.studyHall",
			clickable: true
		},		  
		on: {
			slideChange:function () {

				//탭이 5개일 경우
				if ($('.studyHall-slide-wrap').hasClass('core')) {
					if (this.realIndex == 0) {
					$('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').addClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').removeClass('br-0');
					$('.studyHall-navi .swiper-slide:eq(2)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(3)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(4)').removeClass('bl-0');
				} else if (this.realIndex == 1) {
					$('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').addClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').addClass('br-0');
					$('.studyHall-navi .swiper-slide:eq(2)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(3)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(4)').removeClass('bl-0');
				} else if (this.realIndex == 2) {
					$('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').removeClass('br-0');
					$('.studyHall-navi .swiper-slide:eq(2)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(3)').addClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(4)').removeClass('bl-0');
				} else if (this.realIndex == 3) {
					$('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').removeClass('br-0');
					$('.studyHall-navi .swiper-slide:eq(2)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(3)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(4)').addClass('bl-0');
				} else if (this.realIndex == 4) {
					$('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(1)').removeClass('br-0');
					$('.studyHall-navi .swiper-slide:eq(2)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(3)').removeClass('bl-0');
					$('.studyHall-navi .swiper-slide:eq(4)').removeClass('bl-0');
				}
				  
				}else{
					if (this.realIndex == 0) {
					 $('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(1)').addClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(2)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(3)').removeClass('bl-0');
					} else if (this.realIndex == 1) {
					 $('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(1)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(2)').addClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(3)').removeClass('bl-0');
					} else if (this.realIndex == 2) {
					 $('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(1)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(2)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(3)').addClass('bl-0');
					} else if (this.realIndex == 3) {
					 $('.studyHall-navi .swiper-slide:eq(0)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(1)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(2)').removeClass('bl-0');
					 $('.studyHall-navi .swiper-slide:eq(3)').removeClass('bl-0');
				  }

				}
			},
		 },
	});
	
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont05Top = $(".cont05").offset().top-150;
		let cont06Top = $(".cont06").offset().top-150;
		
		if (scroll >= cont05Top && scroll <= cont06Top) {
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


// cont07 관리 탭슬라이드
function manageSlide(){
	var stuSlideNav = new Swiper('.manage-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	


	var slideCont = new Swiper('.manage-slide', {
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true,
		pagination: {
			el: ".swiper-pagination.manage",
			clickable: true
		},
	});
	
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont06Top = $(".cont06").offset().top-150;
		let cont07Top = $(".cont07").offset().top-150;
		
		if (scroll >= cont06Top && scroll <= cont07Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();

		}
	})


}

// cont04 선생님 롤링 슬라이드
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

// cont04 선생님 롤링 슬라이드02
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

// cont08 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		spaceBetween: 26,
		speed: 2000,
		autoplay:{
			delay: 2000,
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

