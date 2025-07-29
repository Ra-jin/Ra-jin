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
	reviewSlide();
	studyHallSlide();
	stuSlide();
	programSlide();

	if($(".js-cont").hasClass("russel_sm")){
		rollSlide();
	}

	if($(".js-cont").hasClass("russel_w")){
		rollSlide();
	}

	if($(".js-cont").hasClass("russel_yj")){
		viewSlide();
	}
});


/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();
	var $quick_top = $('.quick').offset().top;

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
		
		if($(".half-wrap").hasClass("russel_yj")){
			if(scroll >= $quick_top){
				$('.quick').addClass('fix');
				$('.quick a').eq(0).hide();
			}else{
				$('.quick').removeClass('fix')
				$('.quick a').eq(0).show();
			}
		}else{
			if(scroll >= $quick_top){
				$('.quick').addClass('fix');
			}else{
				$('.quick').removeClass('fix')
			}
		}


	});
}

// 입결슬라이드
function reviewSlide(){
	rvSlide = new Swiper (".review-slide", {
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		},
	});
}

// 학생슬라이드
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

// 남기숙 후기영역
function viewSlide(){
	var viewSwiper = new Swiper(".roll-slide.type02",{
		slidesPerView: 2,
		spaceBetween: 25,
		loop: true,
		loopAdditionalSlides : 3,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		},
	});
}

// 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 3,
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
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true,
	});
	
	// cont03에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con10 = $(".cont10")
		let con10Top = con10.offset().top-150;
		let con11Top = $(".cont11").offset().top-150;
		
		if (scroll >= con10Top && scroll <= con11Top) {
			con10.addClass('on')
			slideCont.autoplay.start();
		} else {
			con10.removeClass('on')
			slideCont.autoplay.stop();

		}
	})
}

//학생 맞춤 관리
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
			spaceBetween: 40,
			freeMode: {
				enabled: true,
				momentumBounce:false
			},
		});
	});
}

//전용 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 3,
		slidesPerGroup : 3,
		spaceBetween: 40,
		loop: true,
		loopAdditionalSlides : 3,
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
	// cont06에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con13 = $(".cont13")
		let con13Top = con13.offset().top-150;
		let con14Top = $(".cont14").offset().top-150;
		
		if (scroll >= con13Top && scroll <= con14Top) {
			con13.addClass('on')
			pSlide.autoplay.start();
		} else {
			con13.removeClass('on')
			pSlide.autoplay.stop();

		}
	})
}
