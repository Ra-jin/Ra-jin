$(document).ready(function(){
    var $top = $('.half-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	
	setTimeout(function(){
		$('.visual').addClass('on');		
	}, 500);
	
    fixmenu();
	tSlide();
	bookSlide();
	mockSlide();
});

function tab() {
    $tab.each(function() {
        var $this = $(this);
    });
}
// 고정메뉴
function fixmenu(){
	var $doc = $('html, body')
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $cont = $('.js-cont');
	var $fix_h = $('.js-fix-menu').height();

	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
        $doc.animate({scrollTop:$cont_top}, 800);

	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		var $cont6 = $('.cont06').offset().top;
		var $cont9 = $('.cont09').offset().top;
		if(scroll >= $cont6){
			$('.bn_float').addClass('fix');
		}
		if(scroll < $cont6 || scroll >= $cont9) {
			$('.bn_float').removeClass('fix')
		};

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		var cont04 		= $('.cont04');
        var $cont04_top = cont04.offset().top - $fix_h;
        if(scroll >= $cont04_top){
            //cont04.addClass("on");
            countNum();
        }
	});
}


function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		
		{
			duration: 1000,
			easing:'swing',
			step: function() {
			$this.text(Math.floor(this.countNum));
			},
			complete: function() {
			$this.text(this.countNum);
			}
		});
	});
}

// 탭메뉴
$('.js-bt-tab').each(function(){
	var $bt 	= $(this).children('.tab').find("a");
	var $cont	= $(this).parent().find('.js-tab-cont')

	$bt.first().addClass('on');
	$cont.first().addClass('on');

	$bt.on('click',function(e){
		e.preventDefault();
		var idx 	= $(this).index();
		$bt.eq(idx).addClass('on').siblings().removeClass('on');
		$cont.eq(idx).addClass('on').siblings().removeClass('on');
	})
})

//슬라이드 랜덤
function randomIdx()  {
    var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}

//강사진
function tSlide(){
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
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		grabCursor: true,
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
//강사진
function bookSlide(){
	var bSwiper = new Swiper('.js-book-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
		speed: 2500,
		slidesPerView: 'auto',
		spaceBetween: 40,
		grabCursor: true,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.js-book-swiper').hover(
		function(){
			bSwiper.autoplay.stop();
    	},
		function(){
			bSwiper.autoplay.start();
		}
	);
}
function mockSlide(){
	var mockSlide = new Swiper('.js-mock-swiper', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		speed : 500,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		}
	});

	$('.js-mock-swiper').hover(
		function(){
			mockSlide.autoplay.stop()
		},
		function(){
			mockSlide.autoplay.start(0)
		}
	);
}

function playPop(url){
	var wnd = window.open("", "talk", "width=750,height=600,scrollbars=0,resizable=no,location=no,");
	wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
}
