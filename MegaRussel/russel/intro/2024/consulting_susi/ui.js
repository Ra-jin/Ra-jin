$(function() {
	// var $top = $('.consulting-wrap').offset().top;
	// $('html, body').animate({scrollTop:$top},500);
	
	fix_btn()

	// 1200px 이상
	if (matchMedia("screen and (min-width: 1200px)").matches) {
		//탭1의 padding-top설정
		$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"230px"})
		
		fixmenu();
	};
	// 1199px 이하
	if (matchMedia("screen and (max-width: 1199px)").matches) {
		consultSlide()

		
		// cont01 하단 플로팅배너 활성화
		$(window).on('scroll', function() {
			var cont01Offset = $('.cont01').offset().top
			var cont04Offset = $('.cont04').offset().top
			var windowTop = $(window).scrollTop()
			
			if (windowTop >= cont01Offset  && windowTop <= cont04Offset) {
			$('.cont01 .float-banner').addClass('fixed');
			} else {
			$('.cont01 .float-banner').removeClass('fixed');
			}
		});
		$('.cont01 .float-banner a').on('click',function(e){
			let cont04Offset = $('.cont04').offset().top
			$('html, body').animate({scrollTop:cont04Offset},500);
	
		})
		
		// cont04 하단 플로팅배너 활성화
		$(window).on('scroll', function() {
			var cont04Offset = $('.cont04').offset().top
			var cont05Offset = $('.cont05').offset().top
			var windowTop = $(window).scrollTop()
			var windowHeight = $(window).height();
			
			if (windowTop >= cont04Offset && windowTop < (cont05Offset - windowHeight)) {
			$('.cont04 .float-banner').addClass('fixed');
			} else {
			$('.cont04 .float-banner').removeClass('fixed');
			}
		});
		$('.cont04 .float-banner a').on('click',function(e){
			let cont01Offset = $('.cont01').offset().top
			$('html, body').animate({scrollTop:cont01Offset},500);
	
		})
	}
});



// 고정메뉴
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
		if (i == 0) {
			$doc.animate({scrollTop:$cont_top}, 800);
		}else {
			$doc.animate({scrollTop:$cont_top - $fix_h + 2}, 800);
		}
	});



	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 nav 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		
		if(scroll >= $fix_top){
			$fix_menu.css({
				'position':'fixed',
			});
			$('.fix-menu-wrap').addClass('fix');
		}else{
			$fix_menu.css({
				'position':'absolute',
			});
			$('.fix-menu-wrap').removeClass('fix');
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
	});
}


// 우측하단 top, home 버튼
function fix_btn() {
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		if ($(this).scrollTop() > 500 ){
			$( '.scroll-home-btn' ).fadeIn();
			$( '.scroll-top-btn' ).fadeIn();
		}else{
			$('.scroll-home-btn').fadeOut();
			$('.scroll-top-btn').fadeOut();
		}
	})

	$(function(){
		$('.scroll-top-btn').on('click', function(){
			$('html, body').animate({
				scrollTop : 0
			},300);
		});
	});
}



// 온라인 접수 스크롤이동
function fn_eventGo() {
	let cont05Offset = $('.cont05').offset().top
	$('html, body').animate({scrollTop:cont05Offset},500);
}

$(document).ready(function(){
	// cont04 스크롤 끝나면 하단 플로팅배너 활성화
	$(window).on('scroll', function() {
		var cont05Offset = $('.cont05').offset().top
		var cont04Offset = Math.floor($('.cont04').offset().top + $('.cont04').outerHeight());
		var windowTop = $(window).scrollTop()
		var windowBottom = $(window).scrollTop() + $(window).height() + 200;
		
		if (windowBottom >= cont04Offset && windowTop <= cont05Offset) {
		  $('.alarm-box').addClass('fixed');
		} else {
		  $('.alarm-box').removeClass('fixed');
		}
	});
})
	
// cont03 컨설턴트 슬라이드
function consultSlide(){

	var consultSwiper = new Swiper('.consult-list',{
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 500,
		slidesPerView: 'auto',
		observer: true,
		observeParents: true,
	});
}
