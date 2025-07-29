$(function(){
	//데이터 산출 기준
	dataResult();

	//고정메뉴, 스크롤 이벤트
	fixmenu();

	// cont02 상승리뷰 슬라이드
	if ($('.review-slide div').hasClass('type03') || $('.review-slide div').hasClass('type05') || $('.review-slide div').hasClass('type06')) {
		reviewSlide02();
	}else{
		reviewSlide01();
	}

	if ($('.cont03 div').hasClass('grade-slide-wrap')) {
		// cont03 학년별 탭슬라이드
		gradeSlide();
	}

	// cont03 최상위권 탭슬라이드
	firstClassSlide();

	// cont04 바자관 탭슬라이드
	studyHallSlide();

	// cont05 관리 탭슬라이드
	manageSlide();
	// cont08 관리 탭슬라이드(분당)
	if($('.container').hasClass('russel_bd')){
		manageSlide02();
	}

	// cont05 선생님 롤링 슬라이드
	if ($('.cont06 div').hasClass('teacher-rolling')) {
		teacherSlide01()
	}

	if ($('.cont06 div').hasClass('teacher-sub-list')) {
		teacherSlide02()
	}	
	
	// cont06 학습 콘텐츠 슬라이드
	programSlide();



	// tabMenu('.tab-wrap','.tab-cont');

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





// cont02 상승리뷰 슬라이드
function reviewSlide01(){
	if ($(".review-slide .swiper-wrapper .swiper-slide").length == 1) {
		// slide 1개 일 경우
		var rSlide = new Swiper('.review-slide', {
			slidesPerView: 1,
			spaceBetween: 26,
			allowTouchMove: false,
		});
	} else {
		var rSlide = new Swiper('.review-slide', {
			// slidesPerView: 1.1,
			slidesPerView: 1,
			loop: true,
			// loop: false,
			loopAdditionalSlides : 1,
			centeredSlides: true,
			allowTouchMove: true,
			autoHeight: true,
			spaceBetween: 15,
			speed: 300,
			autoplay:{
				delay: 7000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination.type01",
				clickable: true
			},
			on: {
				reachEnd:function () {
					
					// let slideAfter = $('.review-slide .swiper-slide').addClass('on')

				},
			 },
		});
	}



	// slide 갯수에 따른 pagination width값 조절
	// let slideLeng = $('.review-slide .swiper-slide').length - 4
	let slideLeng = $('.review-slide .swiper-slide').length - 4
	// let slideLeng = $('.review-slide .swiper-slide').length
	let bulletWidth = 100 / slideLeng
	$(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont02Top = $(".cont02").offset().top-150;
		let con03Top = $(".cont03").offset().top-150;
		
		if (scroll >= cont02Top && scroll <= con03Top) {
			rSlide.autoplay.start();
		} else {
			rSlide.autoplay.stop();

		}
	})
}

// cont02 상승리뷰 슬라이드(영통)
function reviewSlide02(){
	if ($(".review-slide .swiper-wrapper .swiper-slide").length == 1) {
		// slide 1개 일 경우
		var rSlide = new Swiper('.review-slide', {
			slidesPerView: 1,
			spaceBetween: 26,
			allowTouchMove: false,
		});
	} else {
		var rSlide = new Swiper('.review-slide', {
			slidesPerView: 0.9,
			loop: true,
			loopAdditionalSlides : 1,
			centeredSlides: true,
			allowTouchMove: true,
			autoHeight: true,
			spaceBetween: 15,
			speed: 300,
			autoplay:{
				delay: 7000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination.type01",
				clickable: true
			},
		});
	}



	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.review-slide .swiper-slide').length - 4
	let bulletWidth = 100 / slideLeng
	$(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont02Top = $(".cont02").offset().top-150;
		let con03Top = $(".cont03").offset().top-150;
		
		if (scroll >= cont02Top && scroll <= con03Top) {
			rSlide.autoplay.start();
		} else {
			rSlide.autoplay.stop();

		}
	})
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

	if ($(".grade-slide .swiper-wrapper .swiper-slide").length == 2) {
		// slide 2개 일 경우
		var slideCont = new Swiper('.grade-slide', {
			spaceBetween: 10,
			loop: false,
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
	} else {
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
	}
	
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

// cont04 바자관 탭슬라이드
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
		let cont04Top = $(".cont04").offset().top-150;
		let cont05Top = $(".cont05").offset().top-150;
		
		if (scroll >= cont04Top && scroll <= cont05Top) {
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


// cont05 관리 탭슬라이드
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
		let cont05Top = $(".cont05").offset().top-150;
		let cont06Top = $(".cont06").offset().top-150;
		

		if($('.container').hasClass('russel_bd')){
			let cont08Top = $(".cont08").offset().top-150;
			if (scroll >= cont05Top && scroll <= cont08Top) {
				slideCont.autoplay.start();
			} else {
				slideCont.autoplay.stop();
	
			}
		}
		else{
			if (scroll >= cont05Top && scroll <= cont06Top) {
				slideCont.autoplay.start();
			} else {
				slideCont.autoplay.stop();
	
			}
		}
		
	})


}

// cont08 관리 탭슬라이드(분당)
function manageSlide02(){
	var stuSlideNav = new Swiper('.manage-navi02', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	


	var slideCont = new Swiper('.manage-slide02', {
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
		let cont08Top = $(".cont08").offset().top-150;
		let cont06Top = $(".cont06").offset().top-150;
		
		if (scroll >= cont08Top && scroll <= cont06Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();

		}
	})


}


// cont05 선생님 롤링 슬라이드
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

// cont05 선생님 롤링 슬라이드02
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

// cont06 학습 콘텐츠 슬라이드
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





