$(function() {
	//gnb틀고정용


	if(location.href.indexOf("/intro/2024/regular_overall/index.asp#plan") > 1){

		window.onload = function() {
			setTimeout(function(){        
				load_hash()
			}, 500);
		}   
	}
	else if(location.href.indexOf("/intro/2024/regular_overall/index.asp#tab01") > 1){

		window.onload = function() {
			setTimeout(function(){        
				load_hash()
			}, 500);
		}   
	}
	else if(location.href.indexOf("/intro/2024/regular_overall/index.asp#tab02") > 1){

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
	}


	//탭1의 padding-top설정
	if ($(".js-cont").eq(0).hasClass('russel_sm')) {
		$(".js-cont").eq(0).children().eq(0).css({"padding-top":"225px"})
	} else {
		$(".js-cont").eq(0).children().eq(0).css({"padding-top":"245px"})
	}

	fixmenu();
	manageSlide();
	programSlide();
	tabMenu('.bt-tab','.cont-box')
	tabMenu('.bt-tab02','.cont-box02')

	studyHallSlide();
	
	
});



/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top;
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

		if($('.cont > div').hasClass('cont01-2')) {

			// cont01-2에 스크롤시 이벤트 실행
			var cTop = $(".cont01-2");
			var $ctopScroll  = cTop.offset().top-150;
			var gTop = $(".cont01-2 .d-start");
			var $gtopScroll  = gTop.offset().top-150;
			if(scroll >= $gtopScroll){
				gTop.addClass("on");
			} else {
				gTop.removeClass("on");
			}
			if(scroll >= $ctopScroll) {
				cTop.addClass("on");
			} else {
				cTop.removeClass("on");
			}
		}
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

//승반·강반 제도
function programSlide(){
	// cont08에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con08 = $(".cont08")
		let con08Top = con08.offset().top-150;
		let bottomTop = $(".bottom-bar").offset().top-150;
		
		if (scroll >= con08Top && scroll <= bottomTop) {
			con08.addClass('on')
		} else {
			con08.removeClass('on')
		}
	})
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
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		// spaceBetween: 10,
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
function load_hash(){
	var lo_h = window.location.hash;
	var $top = $('.regular-wrap').offset().top;
	if($(".cont").hasClass('russel_dg') ) {     
		var $planTop = $('#plan').offset().top - 220;
		var $benefit01 = $('#tab01').offset().top - 220;
		var $benefit02 = $('#tab02').offset().top - 220;
	}


	if(lo_h == "#plan"){
		$("html, body").animate({scrollTop:$planTop}, 500)
	} else if (lo_h == "#tab01"){
		$("html, body").animate({scrollTop:$benefit01}, 500)
	} 
	else if (lo_h == "#tab02"){
		$("html, body").animate({scrollTop:$benefit02}, 500)
	} 
	else {		

	}
}



