$(function(){

	if($('.cont02 div').hasClass('result-slide-wrap')){
		resultSlide();
	}

	visualSlide();
	fixmenu();
	// clickJs();
	reviewSlide();
	studyHallSlide();

	if($('.cont05 .teacher-wrap div').hasClass('teacher-rolling')) {
		teachSlide();
	}else if($('.cont05 .teacher-wrap div').hasClass('teacher-sub-list')){
		teacherSlide();
	};

	manageSlide();
	rollSlide('.s-slide.type01', '.p-type01')
	rollSlide('.s-slide.type02', '.p-type02')
	rollSlide('.s-slide.type03', '.p-type03')
	programSlide();
	proSlide('.pro-slide.pro01','.swiper-pagination.pro01');
	proSlide('.pro-slide.pro02','.swiper-pagination.pro02');
	// proSlide('.pro-slide.pro03','.swiper-pagination.pro03');
	proSlide('.pro-slide.pro04','.swiper-pagination.pro04');
	mockSlide();
	
	tabMenu('.tab-wrap','.tab-cont');
})




// cont01 결과 슬라이드(대구)
function resultSlide(){
	if ($(".result-slide .swiper-wrapper .swiper-slide").length == 1) {
		// slide 1개 일 경우
		var rSlide = new Swiper('.result-slide', {
			slidesPerView: 1,
			spaceBetween: 26,
			allowTouchMove: false,
		});
	} else {
		var rSlide = new Swiper('.result-slide', {
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
	}

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.result-slide .swiper-wrapper .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".result-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

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




/* visual bg 슬라이드 */
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
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 110;
	var $fix_h = $('.js-fix-menu').height() + 100;
	var $bt_fix = $('.js-fix-menu li');

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
		
		$doc.animate({scrollTop:$contWrap_top - $fix_h}, 800);
	});

	//1번만 실행 변수
	let playStart01 = true;
	let playStart02 = true;

	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		// 각 cont진입 시 클래스 on 추가
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

		

		// cont02 입결 애니메이션 N회
		if($('.cont02 .inner ul').hasClass('achieve-box')) {

			if(scroll >= $('.cont02').offset().top - 150 && playStart02 == true){
				countNum();
				playStart02 = false
			}
		}

		//cont07 화살표 애니메이션 실행
		var gtop = $('.cont07').offset().top - 120;

		if(scroll >= gtop && playStart01 == true) {
			$('.arrow-wrap').addClass('on')
			playStart01 = false
		}

	});
}

/* cont01 만점자 팝업 */
function clickJs() {
    $(".stu-review .click").on("click", function() {
        $(this).toggleClass("on");
    });
}

/* cont02 데이터 산출 기준 */
$(function(){
    $('.data-txt').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

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

// //학원 데이터 산출 기준
// $(function(){
//     $('.info-stxt').on('click',function(){
//         $('.data-view').toggle();
//     });

// })

/* cont03 학생 리뷰 슬라이드 */
function reviewSlide(){
	var rSwiper = new Swiper('.review-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: true,
		spaceBetween: 30,
		speed: 500,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.review-slide .swiper-wrapper .swiper-slide').length - 2;
	let bulletWidth = 100 / slideLeng
	$(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	//스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con03 = $(".cont03")
		let con03Top = $(".cont03").offset().top - 150;
		let con04Top = $(".cont04").offset().top - 150;
		
		if (scroll >= con03Top && scroll <= con04Top) {
			con03.addClass('on')
			rSwiper.autoplay.start();
		} else {
			con03.removeClass('on')
			rSwiper.autoplay.stop();
		}
	})
}

/* cont04 바자관 슬라이드 */
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
		let con04 = $(".cont04")
		let con04Top = $(".cont04").offset().top-150;
		let con05Top = $(".cont05").offset().top-150;
		
		if (scroll >= con04Top && scroll <= con05Top) {
			con04.addClass('on')
			slideCont.autoplay.start();
		} else {
			con04.removeClass('on')
			slideCont.autoplay.stop();

		}
	})
	

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

/* cont05 선생님 슬라이드01 */
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

/* cont05 선생님 슬라이드02 */
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

/* cont06 입시관리 탭 */
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	})

	var manageCont = new Swiper('.manage-slide', {
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 5, 
		// autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		observer: true,
		observeParents: true,
		thumbs: {
			swiper: manageSlideNav
		},
		// autoplay:{
		// 	delay: 7000,
		// 	disableOnInteraction: false,
		// },
		on: {
			beforeTransitionStart: function () {
				setTimeout(function() {
					$('.manage-slide > .swiper-wrapper > .swiper-slide .s-wrap').css('display','none')
					$('.manage-slide > .swiper-wrapper > .swiper-slide-active .s-wrap').css('display','block')
				},500)
				
				setTimeout(function() {
					$('.manage-slide > .swiper-wrapper > .swiper-slide .s-wrap').css('display','none')
					$('.manage-slide > .swiper-wrapper > .swiper-slide-active .s-wrap').css('display','block')
				},10)
			}
		}
	})

	// //  스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let cont06Top = $(".cont06").offset().top-150;
	// 	let con07Top = $(".cont07").offset().top-150;
		
	// 	if (scroll >= cont06Top && scroll <= con07Top) {
	// 		manageCont.autoplay.start();
	// 	} else {
	// 		manageCont.autoplay.stop();

	// 	}
	// })

}

/* cont06 입시관리 탭 내 슬라이드 */
function rollSlide(sSlide, paging){
	var comSlide = new Swiper(sSlide, {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		spaceBetween: 5,
		allowTouchMove: true,
		observer: true,
		observeParents: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: paging,
		},
	});

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont06Top = $(".cont06").offset().top-150;
		let cont07Top = $(".cont07").offset().top-150;
		
		if (scroll >= cont06Top && scroll <= cont07Top) {
			comSlide.autoplay.start();
		} else {
			comSlide.autoplay.stop();

		}
	})
}

/* cont08 실전 대비 슬라이드 */
function mockSlide(){
	var mockSlide = new Swiper(".mock-slide", {
		loop: true,
		slidesPerView: 1,
		spaceBetween: 10,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		observer: true,
		observeParents: true,	
		pagination: {
			el: ".swiper-pagination",
			clickable: true
		}
	});
}

// cont08 학습 콘텐츠
function programSlide(){
	var programNav = new Swiper('.program-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});

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
	// 	let con08 = $(".cont08")
	// 	let con08Top = con08.offset().top-150;
	// 	let con09Top = $(".cont09").offset().top-150;
		
	// 	if (scroll >= con08Top && scroll <= con09Top) {
	// 		con08.addClass('on')
	// 		programCont.autoplay.start();
	// 	} else {
	// 		con08.removeClass('on')
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
		// 	delay: 4000,
		// 	disableOnInteraction: false,
		// },
		observer: true,
		observeParents: true,
		pagination: {
			el: pagging,
			clickable: true
		},
	});
}

// cont09 콘텐츠 팝업
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