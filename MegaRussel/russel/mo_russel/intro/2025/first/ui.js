$(function(){
	tabMenu('.tab-wrap','.tab-cont');

	fixmenu();

	reviewSlide();

	studyHallSlide();

	manageSlide();

	// 강사진 슬라이드
	if($('.cont04 .teacher-wrap div').hasClass('teacher-rolling')) {
		teachSlide();
	}else if($('.cont04 .teacher-wrap div').hasClass('teacher-sub-list')){
		teacherSlide();
	};	

	if($('.cont06-1').hasClass('russel_bd')){
		contentSlide('.con-slide.type01','.swiper-pagination.style03');
		contentSlide('.con-slide.type02','.swiper-pagination.style04');
	}

	programSlide();
	proSlide('.pro-slide.pro01','.swiper-pagination.pro01');
	proSlide('.pro-slide.pro02','.swiper-pagination.pro02');
	proSlide('.pro-slide.pro03','.swiper-pagination.pro03');
	proSlide('.pro-slide.pro04','.swiper-pagination.pro04');
})


//데이터 산출 기준
$(function(){
    $('.data-txt').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

//학원 데이터 산출 기준
$(function(){
    $('.info-stxt').on('click',function(){
        $('.data-view').toggle();
    });

})

//고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 110;
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

	//1번만 실행 변수
	let playStart01 = true

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
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$target.addClass('on').siblings().removeClass('on');
			}
		});

		// fix-menu 탭 영역 진입 시 fix-button 클래스 on 추가
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);
			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		if($('.cont01').hasClass('intro') || $('.cont01').hasClass('russel_us')) {
			// cont01 화살표 애니메이션 N회 실행
			if(scroll >= $('.cont01').offset().top - 150 && playStart01 == true) {
				$('.cont01 .arr').addClass('ani');
				// playStart01 = false
			}
			// cont01 입결 애니메이션 N회
			if(scroll >= $('.graph-wrap').offset().top - 150 && playStart01 == true){
				countNum();
				playStart01 = false
			}

			if($('.cont02').hasClass('on')) {
				$('.cont01 .arr').removeClass('ani')
				playStart01 = true
			}
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
			duration: 1800,
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

// cont02 학생 리뷰
function reviewSlide(){
	var rSwiper = new Swiper('.review-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: true,
		spaceBetween: 26,
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

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.review-slide .swiper-wrapper .swiper-slide').length - 2;
	let bulletWidth = 100 / slideLeng
	$(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	//스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con02 = $(".cont02")
		let con02Top = con02.offset().top-150;
		let con03Top = $(".cont03").offset().top-150;
		
		if (scroll >= con02Top && scroll <= con03Top) {
			con02.addClass('on')
			rSwiper.autoplay.start();
		} else {
			con02.removeClass('on')
			rSwiper.autoplay.stop();
		}
	})
}

// cont03 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	// 코어 일때
	var slideSetting = {
		slidesPerView : "5",
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	}
	if ($('.studyHall-navi').hasClass('core')) {
		var stuSlideNav = new Swiper('.studyHall-navi', slideSetting)
	}

	// 코어대전일 때
	var contSetting = {
		spaceBetween: 5,
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: false,
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true
	}
	if ($('.js-cont-wrap').hasClass('core_dj')) {
		var slideCont = new Swiper('.studyHall-slide', contSetting);

		// tab-slide
		var tabSlide = new Swiper('.tab-slide',{
			loop:true,
			speed: 500,
			spaceBetween: 10,
			autoplay:{
				delay: 4000,
				disableOnInteraction: false,
			},
			observer: true,
			observeParents: true,
			pagination: {
				el: ".swiper-pagination.style01",
				clickable: true
			},
		});
		// tab-slide02
		var tabSlide02 = new Swiper('.tab-slide02',{
			loop:true,
			speed: 500,
			spaceBetween: 10,
			autoplay:{
				delay: 4000,
				disableOnInteraction: false,
			},
			observer: true,
			observeParents: true,
			pagination: {
				el: ".swiper-pagination.style02",
				clickable: true
			},
		});

	} else {
		var slideCont = new Swiper('.studyHall-slide', {
			loop: true,
			centeredSlides: true,
			slidesPerView: "auto",
			spaceBetween: 10,
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
		});
	
		
		//스크롤 떨림 현상 방지
		$(window).scroll(function(){
			var scroll = $(window).scrollTop();
			let con03 = $(".cont03")
			let con03Top = con03.offset().top-150;
			let con04Top = $(".cont04").offset().top-150;
			
			if (scroll >= con03Top && scroll <= con04Top) {
				con03.addClass('on')
				slideCont.autoplay.start();
			} else {
				con03.removeClass('on')
				slideCont.autoplay.stop();
	
			}
		})
	}

	//section3 바자관 롤링 내 이미지 클릭 시 딤드처리
	$('.schedule_link').on('click',function(){
		slideCont.autoplay.stop();
		$('.layer-tt').addClass('on')
		$('.mask-bg').css('display','block')
	});
	$('.layer-tt .bt-close-tt').on('click',function(){
		slideCont.autoplay.stop();
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	});
}

// cont04 선생님 롤링 슬라이드01
function teachSlide() {
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
function teacherSlide(){
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

//cont05 관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	var manageCont = new Swiper('.manage-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: manageSlideNav
		},
		spaceBetween: 10, 
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con05 = $(".cont05")
		let con05Top = con05.offset().top-150;
		let con06Top = $(".cont06").offset().top-150;
		// let con06_01Top = $(".cont06_01").offset().top-150;
		
		if (scroll >= con05Top && scroll <= con06Top) {
			con05.addClass('on')
			manageCont.autoplay.start();
		} else {
			con05.removeClass('on')
			manageCont.autoplay.stop();
		}
	});
}

// cont06 학습 콘텐츠
function programSlide(){
	var slideSetting = {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	}

	if ($('.program-navi').hasClass('russel_bd')) {
		var programNav = new Swiper('.program-navi', slideSetting)
	} else {
		var programNav = new Swiper('.program-navi', {
			slidesPerView: 4,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			allowTouchMove:false,
		});
	}

	var programCont = new Swiper('.program-slide', {
		slidesPerView: "auto",
		centeredSlides: true,
		// loop: false,
		// loopAdditionalSlides: 1,
		speed : 500,
		allowTouchMove: false,
		observer: true,
		observeParents: true,
		thumbs: {
			swiper: programNav
		},
		on: {
			beforeTransitionStart: function (){
				setTimeout(function() {
					$('.program-slide > .swiper-wrapper > .swiper-slide .program-wrap').css('display','none')
					$('.program-slide > .swiper-wrapper > .swiper-slide-active .program-wrap').css('display','block')
				},500)
				setTimeout(function() {
					$('.program-slide > .swiper-wrapper > .swiper-slide-active .program-wrap').css('display','block')
				},50)
			}
		}
	});	
	
	// 스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con06 = $(".cont06")
	// 	let con06Top = con06.offset().top-150;
	// 	let con07Top = $(".cont07").offset().top-150;
		
	// 	if (scroll >= con06Top && scroll <= con07Top) {
	// 		con06.addClass('on')
	// 		programCont.autoplay.start();
	// 	} else {
	// 		con06.removeClass('on')
	// 		programCont.autoplay.stop();

	// 	}
	// });
}

function proSlide(slide, pagging){
	var pSlide = new Swiper(slide,{
		loop:true,
		speed: 500,
		spaceBetween: 10,
		autoHeight:true,
		// autoplay:{
		// 	delay: 7000,
		// 	disableOnInteraction: false,
		// },
		observer: true,
		observeParents: true,
		pagination: {
			el: pagging,
			clickable: true
		},
	});


	//스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con06 = $(".cont06")
	// 	let con06Top = con06.offset().top-150;
	// 	let con07Top = $(".cont07").offset().top-150;
		
	// 	if (scroll >= con06Top && scroll <= con07Top) {
	// 		con06.addClass('on')
	// 		pSlide.autoplay.start();
	// 	} else {
	// 		con06.removeClass('on')
	// 		pSlide.autoplay.stop();

	// 	}
	// });
}


function contentSlide(slide, pagging){
	var cSlide01 = new Swiper(slide,{
		loop:true,
		speed: 500,
		spaceBetween: 10,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		observer: true,
		observeParents: true,
		pagination: {
			el: pagging,
			clickable: true
		},
	});


	//스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con06_1 = $(".cont06-1")
		let con06_1Top = con06_1.offset().top-150;
		let con06Top = $(".cont06").offset().top-150;
		
		if (scroll >= con06_1Top && scroll <= con06Top) {
			con06_1.addClass('on')
			cSlide01.autoplay.start();
		} else {
			con06_1.removeClass('on')
			cSlide01.autoplay.stop();

		}
	})
}

// cont07 콘텐츠 팝업
$(function(){
	$('.program_link').on('click',function(){
		$('.layer-tt02').addClass('on')
		$('.mask-bg').css('display','block')
	});
	$('.layer-tt02 .bt-close-tt').on('click',function(){
		$('.layer-tt02').removeClass('on')
		$('.mask-bg').css('display','none')
	});
})
