$(function(){
	fixmenu();
	tabMenu('.regular-schedule .year-tab','.regular-schedule .year-cont')
	// 대구일 경우
	if($(".container").hasClass('russel_dg') ) {
		tabMenu('.study-schedule .year-tab','.study-schedule .year-cont')
		window.onload = function() {
			id_hash();
		}
	}
	// cont01 그래픽
	graphSlide('.graph-swiper.g01', '.gp01');
	// rollSlide('.s-slide.type01', '.p-type01')
	teacherSwiper();
	// studyHallSlide();
	// programSlide();

});

//고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 102;
	var $bt_fix = $('.js-fix-menu li');
	var $fix_h = $('.js-fix-menu').height() + 114;

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		// e.preventDefault();
		if (e.cancelable) e.preventDefault();

		var i = $(this).index();
		var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
		
		$doc.animate({scrollTop:$contWrap_top - $fix_h}, 800);
	});

	//1번만 실행 변수
	let gStart = true

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

		// var contName = $('.container').hasClass('russel_com');
		var campusCom = $('.cont01').hasClass('russel_com');
		var contName02 = $('.container').hasClass('intro');
		if(campusCom == true){
			var gtop = $('.cont01').offset().top - 120;
			// var graph = $('cont01 .graph');

			//화살표 애니메이션 실행
			if(scroll >= gtop  && gStart == true) {
				$('.russel_com .graph').addClass('on')
				gStart = false
			}
			if($('.cont02').hasClass('active')) {
				$('.russel_com .graph').removeClass('on')
				gStart = true
			}
		}else{

		}

		// 슬라이드 떨림현상 제거
		const c_ct = $(".container").hasClass('russel_ct');
		const c_bc = $(".container").hasClass('russel_bc');
		const c_dc = $(".container").hasClass('russel');
		const c_gn = $(".container").hasClass('russel_gn');
		const c_bd = $(".container").hasClass('russel_bd');
		const c_dg = $(".container").hasClass('russel_dg');
		const c_md = $(".container").hasClass('russel_md');
		const c_pc = $(".container").hasClass('russel_pc');
		const c_yt = $(".container").hasClass('russel_yt');
		const c_gj = $(".container").hasClass('core_gj');
		const c_dj = $(".container").hasClass('core_dj');
		const c_wj = $(".container").hasClass('core_wj');
		const c_cw = $(".container").hasClass('core_cw');

		var con02H = $('.cont02').outerHeight();		
		var con03H = $('.cont03').outerHeight();		
		var con05H = $('.cont05').outerHeight();		
		var con06H = $('.cont06').outerHeight();	

		if(c_dg) {
			
		}
		else{
			var cont02Top = $('.cont02').offset().top -200;
		}
		var cont03Top = $('.cont03').offset().top -200;
		var cont05Top = $('.cont05').offset().top -200;
		var cont06Top = $('.cont06').offset().top -200;
		var offline02 = cont02Top + con02H;
		var offline03 = cont03Top + con03H;
		var offline05 = cont05Top + con05H;
		var offline06 = cont06Top + con06H;

		if(c_ct || c_dc || c_gn || c_bd || c_md || c_pc || c_yt || c_gj || c_dj || c_wj || c_cw) {
			if (scroll >= cont02Top && scroll < offline02) {
				cardSlide.autoplay.start();
			} else {
				cardSlide.autoplay.stop();
			}
		}else if(c_bc || c_dg){

		}else {
			if (scroll >= cont02Top && scroll < offline02) {
				cardSlide.autoplay.start();
				cardSlide02.autoplay.start();
			} else {
				cardSlide.autoplay.stop();
				cardSlide02.autoplay.stop();
			}
		}

		// if (scroll >= cont02Top && scroll < offline02) {
		// 	cardSlide.autoplay.start();
		// 	cardSlide02.autoplay.start();
		// } else {
		// 	cardSlide.autoplay.stop();
		// 	cardSlide02.autoplay.stop();
		// }

		if (scroll >= cont03Top && scroll < offline03) {
			stuSlideNav.autoplay.start();
			slideCont.autoplay.start();

		} else {
			stuSlideNav.autoplay.stop();
			slideCont.autoplay.stop();
		}
		if (scroll >= cont05Top && scroll < offline05) {
			comSlide.autoplay.start();
		} else {
			comSlide.autoplay.stop();
		}
		if (scroll >= cont06Top && scroll < offline06) {
			programSlideNav.autoplay.start();
			programCont.autoplay.start();
		} else {
			programSlideNav.autoplay.stop();
			programCont.autoplay.stop();
		}
	});
}


//인트로 차트 모션
var con02 = $(".cont02")
var con03 = $(".cont03")
// const c_intro = $(".container").hasClass('intro');
const c_us = $(".container").hasClass('russel_us');
const c_corejj = $(".container").hasClass('core_jj');
const c_corecw = $(".container").hasClass('core_cw');
const c_corecj = $(".container").hasClass('core_cj');
const c_corewj = $(".container").hasClass('core_wj');


if(c_corecj || c_us) {
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		var itemType01 = $('.graph_item01').offset().top - 120;
		if(scroll >= itemType01) {
			$('.graph_item01').addClass('on')
		}
		if($('.cont02').hasClass('active')) {
			$('.graph_item01').removeClass('on')
		}	
	});
}

		

// visual animation
const images = $(".bg-fade");
let currentImageIndex = 0;

function showNextImage() {
	$(images[currentImageIndex]).fadeOut(1000);
	currentImageIndex = (currentImageIndex + 1) % images.length;
	$(images[currentImageIndex]).fadeIn(1000);
}

$(images[currentImageIndex]).fadeIn(1000);
setInterval(showNextImage, 3000); 

//데이터 산출 기준
$(function(){
    $('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

//학원 데이터 산출 기준
$(function(){
    $('.info-stxt').on('click',function(e){
    	$('.data-view').toggle();
    });

})


// 그래프 슬라이드
function graphSlide(gslide, gpaging){
	var graph = new Swiper(gslide,{
		loop: true,
		slidesPerView: 1,
		spaceBetween: 20, 
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: gpaging,
			clickable: true
		}
	})
}

//카드형슬라이드
var cardSlide = new Swiper('.card-swiper', {
	loop:true,
	effect: 'fade',
	grabCursor: true,
	speed : 500,
	// allowTouchMove: true,
	autoplay:{
		delay: 7000,
		disableOnInteraction: false,
	},
	navigation: {
		nextEl: ".card-btn-next", 
		prevEl: ".card-btn-prev",
	},
})
var cardSlide02 = new Swiper('.card-swiper-02', {
	loop:true,
	effect: 'fade',
	grabCursor: true,
	speed : 500,
	// allowTouchMove: true,
	autoplay:{
		delay: 7000,
		disableOnInteraction: false,
	},
	navigation: {
		nextEl: ".card-btn-next", 
		prevEl: ".card-btn-prev",
	},
})




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


// cont03 바자관 탭슬라이드
var stuSlideNav = new Swiper('.studyHall-navi', {
	slidesPerView: 4,
	freeMode: true,
	watchSlidesVisibility: true,
	watchSlidesProgress: true,
	allowTouchMove:false,
});	
var slideCont = new Swiper('.studyHall-slide', {
	loop: true,
	// centeredSlides: true,
	slidesPerView: "auto",
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

//일반슬라이드

var comSlide = new Swiper('.s-slide', {
	loop: true,		
	slidesPerView: "auto",
	autoHeight: true,
	speed : 500,
	allowTouchMove: true,
	spaceBetween: 2,
	observer: true,
	observeParents: true,
	autoplay:{
		delay: 5000,
		disableOnInteraction: false,
	},
	pagination: {
		el: '.p-type01',
		clickable: true
	},
});


// 모의고사 슬라이드

var programSlideNav = new Swiper('.program-slide-navi', {
	slidesPerView: 4,
	freeMode: true,
	watchSlidesVisibility: true,
	watchSlidesProgress: true,
	allowTouchMove:false,	
})

var programCont = new Swiper('.program-slide', {
	centeredSlides: true,
	autoHeight: true,
	spaceBetween: 25,
	speed : 500,
	autoplay:{
		delay: 3000,
		disableOnInteraction: false,
	},
	allowTouchMove: true,
	thumbs: {
		swiper: programSlideNav
	},
	pagination: {
		el: ".swiper-pagination",
		clickable: true
	}
})	

function id_hash(){
	var heightval = window.location.hash;
	
	var $top = $('.regular-go-wrap').offset().top;
	var $fixHeight = $('.fix-menu.js-fix-menu').outerHeight() + 100;
	var $contTop1 = $('#plan01').offset().top - $fixHeight;
	var $contTop2 = $('#plan02').offset().top - $fixHeight + 50;

	// console.log(heightval)

	if(heightval == "#plan01"){
		$("html, body").animate({scrollTop:$contTop1}, 500)         
	} 
	else if(heightval == "#plan02"){
		$("html, body").animate({scrollTop:$contTop2}, 500)       
	}

}





