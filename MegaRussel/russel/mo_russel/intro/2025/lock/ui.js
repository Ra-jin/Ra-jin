$(function(){
    tabMenu('.tab-wrap','.tab-cont');
	fixmenu();

    // cont03
    studyHallSlide();
	// cont04
	manageSlide();

	programSlide();
	proSlide('.pro-slide.pro01','.swiper-pagination.pro01');
	proSlide('.pro-slide.pro02','.swiper-pagination.pro02');

	if($('.container').hasClass('russel_bc')){

		proSlide('.pro-slide.pro03','.swiper-pagination.pro03');
	}
	
	
	proSlide('.pro-slide.pro04','.swiper-pagination.pro04');
})

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
	});
}
/* cont03 바자관 슬라이드 */
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
			swiper: stuSlideNav
		},
		spaceBetween: 10, 
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

//cont04 관리 탭슬라이드
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
		let con04 = $(".cont04")
		let con04Top = con04.offset().top-150;
		if ($(".cont > div").hasClass('cont05')) {
			
			let con05Top = $(".cont05").offset().top-150;
			if (scroll >= con04Top && scroll <= con05Top) {
				con04.addClass('on')
				manageCont.autoplay.start();
			} else {
				con04.removeClass('on')
				manageCont.autoplay.stop();
	
			}
		}else {

			let con05Top = $(".cont06").offset().top-150;
			if (scroll >= con04Top && scroll <= con05Top) {
				con04.addClass('on')
				manageCont.autoplay.start();
			} else {
				con04.removeClass('on')
				manageCont.autoplay.stop();
	
			}
		}
		
	});
}

// cont06 학습 콘텐츠
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
