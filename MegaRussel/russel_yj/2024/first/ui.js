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

	//탭1의 padding-top설정
	if ($(".js-cont").eq(0).hasClass('russel_sm')) {
		$(".js-cont").eq(0).children().eq(0).css({"padding-top":"225px"})
	} else {
		$(".js-cont").eq(0).children().eq(0).css({"padding-top":"245px"})
	}

	fixmenu();
	rollSlide()
	studySlide();
	tabSlide();
	if ($('.visual-wrap').hasClass('russel_sm')) {
		programSlide()
	}
	
	tabMenu('.bt-tab.t_01','.cont-box.t_01');
});

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 170;
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
					$('html, body').animate({scrollTop:$cont_top + $fix_h + 20 }, 800);				
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
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		// 퀵 fixed 메뉴
		var $contFirstTop  = $cont.eq(0).offset().top;

		if(scroll >= $contFirstTop) {
			$('.f-quick').addClass('fixed')
		} else {
			$('.f-quick').removeClass('fixed')
		}


		//여기숙 우측 배너 css 속성 변경
		if($('.visual-wrap').hasClass('.f-quick')){

			var eventHeight = $(".quick.russel_w").height();
			var winSclInner	= $(window).scrollTop() + $(window).innerHeight() - eventHeight;
	
			var $quickCon = $('.quick.russel_w');
			var $quickCon_top  = Math.floor($quickCon.offset().top);
	
			var midCont      = $(".first-wrap");
			var midCont_top  = Math.floor(midCont.offset().top);
	
			if(winSclInner >= $quickCon_top){
				$quickCon.addClass("on");
			}
		}

		//프로그램 컨텐츠 영역에서만 이벤트 띠배너가 보이게 하기
		// if(winSclInner > midCont_top && winSclInner02 < $btmCon_top ) {
		// 	$quickCon.css('visibility','visible');
		// }

		// if(winSclInner < midCont_top){
		// 	$quickCon.css('visibility','visible');
		// }else if(winSclInner02 > $btmCon_top){
		// 	$quickCon.css('visibility','hidden');
		// }

		if(winSclInner < midCont_top + 500 && $quickCon.hasClass("on")){
			$quickCon.removeClass("on");
		}
	});

}

// 대학 슬라이드
function rollSlide(){
	var rSwiper = new Swiper('.roll-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		speed: 2500,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
	});

	$('.roll-swiper').hover(function(){
			rSwiper.autoplay.stop()
		},function(){
			rSwiper.autoplay.start()
		}
	)

	$(".roll-swiper").on("mouseenter", function() {
        rSwiper.autoplay.stop();
    });

    $(".roll-swiper").on("mouseleave", function() {
        rSwiper.autoplay.start();
    });
}


// 맞춤관리 슬라이드
function studySlide(){
	var studyNav = new Swiper('.study-slide-nav', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var studySlide = new Swiper('.study-slide', {
		loop: true,
		centeredSlides: true,
		allowTouchMove: true,
		autoHeight: true,
		autoplay:false,
		thumbs: {
			swiper: studyNav
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;

				$('.study-slide-nav .swiper-slide').eq(activeIndex).addClass('on').siblings().removeClass('on');
			}
		}
	});
}

// 입시관리 슬라이드 
function tabSlide(){
	var $slide = $('.tab-slide > .swiper-wrapper > .swiper-slide')

	if($slide.length >= 2){
		var swipertab = new Swiper('.tab-slide', {
			slidesPerView: 1,
			loop: true,
			allowTouchMove: true,
			autoplay:true,
			autoplay:{
				delay: 4000,
				disableOnInteraction: false,
			},
			effect : 'fade',
			fadeEffect: {
				crosssFade: true
			},
		});

	}else{
		var swiperTab = new Swiper('.tab-slide', {
			loop:false,
			allowTouchMove: false
		});
	}

}

//전용 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 3,
		slidesPerGroup : 3,
		loop: true,
		loopAdditionalSlides : 3,
		allowTouchMove: true,
		spaceBetween: 26,
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
	// cont09에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con09 = $(".cont09")
		let con09Top = con09.offset().top-150;
		let bottomTop = $(".cont10").offset().top-150;
		
		if (scroll >= con09Top && scroll <= bottomTop) {
			con09.addClass('on')
			pSlide.autoplay.start();
		} else {
			con09.removeClass('on')
			pSlide.autoplay.stop();

		}
	})
}