$(function() {


	//gnb틀고정용
	var headerH = $('.headerWrap').outerHeight();
	var headerfix = $('.headerWrap').hasClass('pos-sticky');
	if(location.href.indexOf("/intro/2024/regular_go/index.asp#plan01") > 1){

		window.onload = function() {
			setTimeout(function(){   			
				load_hash()
			}, 500);
		}   
	}
	else if(location.href.indexOf("/intro/2024/regular_go/index.asp#plan02") > 1){

		window.onload = function() {
			setTimeout(function(){        
				load_hash()
			}, 500);
		}   
	}
	else if(location.href.indexOf("/intro/2024/regular_go/index.asp#benefit01") > 1){

		window.onload = function() {
			setTimeout(function(){        
				load_hash()
			}, 500);
		}   
	}
	else if(location.href.indexOf("/intro/2024/regular_go/index.asp#benefit02") > 1){

		window.onload = function() {
			setTimeout(function(){        
				load_hash()
			}, 500);
		}   
	}
	else{
		$(window).load(function(){
			//페이지 로드 시 스크롤 visual로 이동
			$('html, body').animate({
				scrollTop : $('.visual-wrap').offset().top + 0		
			});
		});	
	
		//페이지 로드 후 1초 동안 스크롤 중지 후 1초 지나면 스크롤 가능하도록
		function delay(){
			setTimeout(enableScroll ,200);
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
	}
	
	//탭1의 padding-top설정
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"215px"})

	studyHallSlide()
	fixmenu();

	programSlide()
	manageSlide()
	system();
	tabMenu('.tab-month','.cont-month')

	cardSlide()


	// 선생님슬라이드 -코어원주제외
	if(!$(".visual-area").hasClass('core_wj') ) {
		tSlide();
	}
});


//데이터산출기준
$('.graph-wrap .data-txt').on('mouseover',function(){
	$('.data-cont').addClass('on');
});
$('.graph-wrap .data-txt').on('mouseout',function(){
	$('.data-cont').removeClass('on');

});

// 개방형 구조 팝업
function layerPop() {
	$(".zoom-pop").addClass("on")
}
$(document).mouseup(function (e){
	var LayerPopup = $(".zoom-pop");
	if(LayerPopup.has(e.target).length === 0){
		LayerPopup.removeClass("on");
	}
});


//카드 슬라이드
function cardSlide() {
	var cardSwiper = new Swiper(".card-swiper", {

	  navigation: {
		nextEl: ".swiper-button-next", 
		prevEl: ".swiper-button-prev",
	  },
	  slidesPerView: 'auto',
	  spaceBetween: 40,
	  loop: true,
	  loopAdditionalSlides: 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
	  speed: 500,
	  autoplay: {
		delay: 7000,
		disableOnInteraction: false,
	  },
	  centeredSlides: true,
	  on: {
		  // 슬라이드 change시 메뉴이미지 변경 (beforeTransitionStart : 슬라이드 전환 시작 전에 이벤트가 시작됩니다.)
		  	// 슬라이드 change시 메뉴이미지 변경 (activeIndexChange : 활성화된 인덱스가 바뀔 때 이벤트가 발생합니다.)
			// 슬라이드 change시 메뉴이미지 변경 (slideChange : 슬라이드가 바뀔 때마다 이벤트가 발생합니다.)
			beforeTransitionStart : function () {

				$('.card-swiper .swiper-slide-active').addClass('active').siblings().removeClass('active')
				$('.card-swiper .swiper-slide').children().children('img').attr("src",function(idx, j){ return j.replace("_on.jpg",".jpg"); });
				$('.card-swiper .swiper-slide.active').children().children('img').attr("src", function(idx, j){ return j.replace(".jpg","_on.jpg"); });
			}



		},

	});
  }


// 비주얼 bg fade
const images = $(".bg-fade");
let currentImageIndex = 0;

function showNextImage() {
	$(images[currentImageIndex]).fadeOut(1000);
	currentImageIndex = (currentImageIndex + 1) % images.length;
	$(images[currentImageIndex]).fadeIn(1000);
}

$(images[currentImageIndex]).fadeIn(1000);
setInterval(showNextImage, 3000);



//최적화된 시스템
function system(){
	var idx = 1;
	setInterval(sysSlide, 2000);
	function sysSlide(){
		var sys_img = $('.sys-img li')
		sys_img.removeClass('on')
		sys_img.eq(idx).addClass('on')

		idx++;
		
		if(idx >= sys_img.length){
			idx = 0
		return idx;
		}
	}
}

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 80;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();
	var $fix_h02 = $('.fix-menu').height() + 150;

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
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 15}, 800);
		}
		else {			
			// 클릭시 컨텐츠 위에서 아래로 스크롤이동
			if($cont_top > preScrollTop ){
				$('html, body').animate({scrollTop:$cont_top + $fix_h/2 }, 800);				
			}
			else{
				// 클릭시 컨텐츠 아래에서 위로 스크롤이동
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

		// if($('.cont > div').hasClass('cont01')) {

		// 	// cont01에 스크롤시 이벤트 실행
		// 	var cTop = $(".cont01");
		// 	var $ctopScroll  = cTop.offset().top-150;

		// 	if(scroll >= $ctopScroll) {
		// 		cTop.addClass("on");
		// 	} else {
		// 		cTop.removeClass("on");
		// 	}
		// }

		var $jsBox = $('.js-box');

		$jsBox.each(function(i){

			// var $jsBox_top = $jsBox.eq(i).offset().top - 180;
			var $jsBox_top = Math.floor($jsBox.eq(i).offset().top - $fix_h02);

			if(scroll >= $jsBox_top) {
				$jsBox.eq(i).addClass('on')
			}
		})
		
		if($('.cont > div').hasClass('cont01')) {

			// cont01에 스크롤시 이벤트 실행
			var cTop = $(".cont01");
			var $ctopScroll  = cTop.offset().top-150;
			if(scroll >= $ctopScroll) {
				cTop.addClass("on");
			} else {
				cTop.removeClass("on");
			}
		}

	});
}


// 바자관 탭슬라이드
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
			delay: 7000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		}
	});
	
	// // cont03에 스크롤시 실행
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con03 = $(".cont03")
	// 	let con03Top = con03.offset().top-150;
	// 	let con04Top = $(".cont04").offset().top-150;
		
	// 	if (scroll >= con03Top && scroll <= con04Top) {
	// 		con03.addClass('on')
	// 		slideCont.autoplay.start();
	// 	} else {
	// 		con03.removeClass('on')
	// 		slideCont.autoplay.stop();

	// 	}
	// })
}


//강사진
function tSlide(){
	var slideIndex = $(".teacher-swiper .swiper-slide").index()
	
	var tSwiper = new Swiper('.teacher-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 2500,
		grabCursor: true,
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.teacher-swiper').hover(
		function(){
			tSwiper.autoplay.stop();
    },
		function(){
			tSwiper.autoplay.start();
		}
	);
}

//슬라이드 랜덤
function randomIdx()  {
	var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide = Math.floor(Math.random() * slideTotal);
	return parseInt(r_slide);
}

// 관리 탭슬라이드
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
			delay: 7000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: manageSlideNav
		}
	});
	
}


//승반 강반 장학제도
function programSlide(){
	// cont06에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con06 = $(".cont06")
		let con06Top = con06.offset().top-150;
		let bottomTop = $(".bottom-bar").offset().top-150;
		
		if (scroll >= con06Top && scroll <= bottomTop) {
			con06.addClass('on')
		} else {
			con06.removeClass('on')

		}
	})
}

function load_hash(){
	var lo_h = window.location.hash;
	var $top = $('.regular-go-wrap').offset().top;
	if($(".cont").hasClass('russel_dg') ) {     
		var $planTop = $('#plan01').offset().top - 220;
		var $benefit01 = $('#benefit01').offset().top - 220;
		var $benefit02 = $('#benefit02').offset().top - 220;
	}
	var $planTop2 = $('#plan02').offset().top - 80;


	if(lo_h == "#plan01"){
		$("html, body").animate({scrollTop:$planTop}, 500)
	} else if (lo_h == "#plan02"){
		$("html, body").animate({scrollTop:$planTop2}, 500)
	} 
	else if (lo_h == "#benefit01"){
		$("html, body").animate({scrollTop:$benefit01}, 500)
	} 
	else if (lo_h == "#benefit02"){
		$("html, body").animate({scrollTop:$benefit02}, 500)
	} 
	else {		

	}
}


