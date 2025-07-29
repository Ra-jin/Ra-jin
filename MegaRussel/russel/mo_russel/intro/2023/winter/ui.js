$(function() {

	fixmenu();
	cardSwiper('.card-slide.type01', '.swiper-pagination.type01');
	cardSwiper('.card-slide.type02', '.swiper-pagination.type02');
	cardSwiper('.card-slide.type03', '.swiper-pagination.type03');
	cardSwiper('.card-slide.type04', '.swiper-pagination.type04');
	cardSwiper('.card-slide.type05', '.swiper-pagination.type05');
	cardSwiper('.card-slide.type06', '.swiper-pagination.type06');
	bajaSwiper()
	manageSlide()
	noticeSwiper()
	learnSwiper()
	examSwiper()
	teacherSwiper()
	passSwiper()

});

//데이터 산출 기준
$(function(){
    $('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})
// 학생 리뷰 팝업
$(function() {
	//open
	$('.stu-pop li a').on('click', function() {
		$(this).parent().addClass('on').siblings().removeClass('on')
	})
	//close
	$('.stu-layerpop a').on('click', function() {
		$('.stu-pop li').removeClass('on')
	})

})

start = true
/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
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

	//1번만 실행 변수
	let playStart01 = true

	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 fixmenu 활성화
		if($('.container').hasClass('intro')){

			if(scroll >= $fix_top){
				$('.fix-menu').addClass('fix');

				/* 2월 시작반 모집중 flag */
				$('.container.intro .fix-menu .mozip img').attr("src", function(idx, j){ return j.replace("_off.gif","_on.gif")});
				$('.container.intro .fix-menu .mozip').css("top", "0")
				$('.container.intro .fix-menu .mozip-wrap').css("bottom", "4px")
			}else{
				$('.fix-menu').removeClass('fix')

				/* 2월 시작반 모집중 flag */
				$('.container.intro .fix-menu .mozip img').attr("src", function(idx, j){ return j.replace("_on.gif","_off.gif")});
				$('.container.intro .fix-menu .mozip').css("top", "unset")
				$('.container.intro .fix-menu .mozip').css("bottom", "0")
				$('.container.intro .fix-menu .mozip-wrap').css("bottom", "45px")
			};

		}else{

			if(scroll >= $fix_top){
				$('.fix-menu').addClass('fix');
	
			}else{
				$('.fix-menu').removeClass('fix')
			};
		}

		// 각 cont진입 시 클래스 active 추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$target.addClass('active').siblings().removeClass('active');
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

		// cont07 화살표 애니메이션 N회 실행
		if(scroll >= $('.cont07 .start').offset().top - 172 && playStart01 == true) {
			$('.cont07 .arrow-ico').addClass('scale-ani')
			playStart01 = false
		}
		if($('.cont06').hasClass('active') || $('.bottom-bar').hasClass('active')) {
			$('.cont07 .arrow-ico').removeClass('scale-ani')
			playStart01 = true
		}

	});
}


// 합격자 롤링
function passSwiper() {

	var passSwiper = new Swiper('.pass-slide',{
		direction: 'vertical',
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		speed:1000,
		slidesPerView: 'auto',
		spaceBetween: 5,
	});
}

// 합격성공리뷰 슬라이드
function cardSwiper(mainCon, paging) {
	var swiperNum = new Swiper(mainCon, {
		slidesPerView: 1,
		spaceBetween: 0,
		loop: true,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: paging,
			clickable: true,
		},
		autoHeight: 'true',
	});
	

	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll02 = $(window).scrollTop();

		//cont02 리뷰슬라이드 영역진입시에만 활성화(하단 영역 떨림현상 방지)
		var gTop07 = $(".cont02");
		var $gtopScroll07  = gTop07.offset().top - 102;
		var gEnd = $(".cont03").offset().top;

		if (!$(".container").hasClass('cont_bc')) {
			if(wScroll02 >= $gtopScroll07 && wScroll02 < gEnd){
				swiperNum.autoplay.start(0)
			} else {
				swiperNum.autoplay.stop()
			}
		} 

	})
}

// 동영상 레이어팝업
//네이버
function openVideo(url) {
	$('.v-layer-wrap').show()

	$('.play-video iframe').attr('src', 'https://tv.naver.com/embed/'+ url)

	$('.v-layer-wrap .btn-x').on('click', function() {
		$('.v-layer-wrap').hide()
		$('.play-video iframe').attr('src','')
	})
	
}
//유튜브
function openVideo02(url) {
	$('.v-layer-wrap').show()

	$('.play-video iframe').attr('src', 'https://www.youtube.com/embed/'+ url)

	$('.v-layer-wrap .btn-x').on('click', function() {
		$('.v-layer-wrap').hide()
		$('.play-video iframe').attr('src','')
	})
	
}


// 선생님 롤링
function teacherSwiper() {

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
			momentumBounce:false,
		},
		observer: true,
		observeParents: true,
	});
}

// 바자관 슬라이드
function bajaSwiper() {
	var bSwiper = new Swiper(".baja-slide", {
		slidesPerView: 1,
		spaceBetween: 0,
		loop: true,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type07",
			clickable: true,
		},
		autoHeight: 'true',
	});
	
	//cont3 바자관 롤링 내 이미지 클릭 시 딤드처리
	$('.bt-tt').on('click',function(){
		bSwiper.autoplay.stop()
		$('.layer-tt').addClass('on')
	})
	$('.bt-close-tt').on('click',function(){
		bSwiper.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}

/* 입시관리 탭슬라이드 */
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var slideCont02 = new Swiper('.manage-slide', {
		loop: true,
		slidesPerView: "auto",
		autoHeight: true,
		autoplay:{
			delay: 5000,
		},
		thumbs: {
			swiper: manageSlideNav
		},
		observer: true,
		observeParents: true,
	});


	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll03 = $(window).scrollTop();

		//cont06 입시관리 슬라이드 영역진입시에만 활성화(하단 영역 떨림현상 방지)
		var gTop08 = $(".cont06");
		var $gtopScroll08  = gTop08.offset().top - 102;
		var gEnd02 = $(".cont07").offset().top - 102;
		if(wScroll03 >= $gtopScroll08 && wScroll03 < gEnd02){
			slideCont02.autoplay.start(0)
		} else {
			slideCont02.autoplay.stop()
		}
	})
}

// 가정통신문 슬라이드
function noticeSwiper() {
	var nSwiper = new Swiper(".notice-slide", {
		slidesPerView: 1,
		spaceBetween: 0,
		loop: true,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
        navigation: {   
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
		observer: true,
		observeParents: true,
	});
	
}
// 학습 콘텐츠 슬라이드
function learnSwiper() {
	var lSwiper = new Swiper(".learning-slide", {
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 5000,
		slidesPerView: 'auto',
		spaceBetween: 20,
		freeMode: {
			enabled: true,
			momentumBounce:false,
		},
		observer: true,
		observeParents: true,
	});
	
}

// 실전 모의고사 슬라이드
function examSwiper() {
	var eSwiper = new Swiper(".exam-slide", {
		slidesPerView: 1,
		spaceBetween: 0,
		loop: true,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type08",
			clickable: true,
		},
	});
	
}