$(function () {
	var $top = $('.winter-wrap').offset().top;
	// $('html, body').animate({scrollTop:$top},500);
	urlAlert();
	fixmenu();
	tSlide();
	nav();
	tab_studyhall();
	studyHallSlide()
	studentZoneSlide();
	stSlide();
	programSlide();
	interviewSlide()

	// ΩΩ∂Û¿ÃµÂ ∏∂øÏΩ∫ø¿πˆΩ√ ¿œΩ√¡§¡ˆ
	$(".swiper-container").each(function(elem, target){
		var swp = target.swiper;
		$(this).hover(function() {
			swp.autoplay.stop();
		}, function() {
			swp.autoplay.start();
		});
	});
});
var $visual = document.getElementById("visual");
$(function(){
	$("canvas.snow").snowEffect({
		windPower: 0,
		interaction: false,
		speed: 0.13,
		opacity:0.2,
		color: "#ffffff",
		size:4
	});
});

// πˆ∆∞ø° ∏µ≈© æ¯¿ª ∞ÊøÏ alert
function urlAlert(){
    var $bt_online = $('.visual .bt-apply');
	var $bt_online2 = $('.apply-box .btn-gray')
    var pattern = /[§°-§æ|§ø-§”|∞°-∆R]/;

	$bt_online.add($bt_online2).on('click',function(e){
        var a_txt = $(this).attr('href');

        if(pattern.test(a_txt)){
            e.preventDefault()
            alert(a_txt)
        }
    })
}

function fixmenu(){
	var $doc = $('html, body')
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $vis_top = $('.visual').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $cont = $('.js-cont');
	var $fix_h = $('.js-fix-menu').height();

	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
        $doc.animate({scrollTop:$cont_top}, 700);

	});

	// Ω∫≈©∑—
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		if(scroll >= $vis_top - 50){
			$('.visual').addClass('on');
		}

		// ±◊∑°«¡
		var graphTop = $(".bar-graph-top");
		var graphScroll = $(window).scrollTop();
		var $graphTopScroll  = graphTop.offset().top-150;

		if(graphScroll >= $graphTopScroll){
			graphTop.addClass("on");
		} else {
			graphTop.removeClass("on");
		}

		//ƒ´øÓ∆Æ
		var gTop = $(".count");
		var $gtopScroll  = gTop.offset().top-150;
		if(scroll >= $gtopScroll){
			gTop.addClass("on");
			countNum();
		} else {
			gTop.removeClass("on");
			$('.counter').text(0);
		}

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
			var navCont      = $("#nav-cont");
			var navCont_top  = Math.floor(navCont.offset().top);
			var scrollEnd = $(".tab-box02").offset().top;

			if (scroll >= navCont_top && scroll < scrollEnd) {
				$('.nav-in').addClass('fix');
				$('.nav-wrap').addClass('on');
			} else {
				$('.nav-in').removeClass('fix');
				$('.nav-wrap').removeClass('on');
			}
		});

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
	});
}

function nav(){
	var $doc = $('html, body');
	var $bt_nav = $('.nav-wrap li');
	var $cont = $('.js-cont .js-box');
	var $fix_h = $('.js-fix-menu').height();

	$bt_nav.first().addClass("on");

	$bt_nav.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var cont_on = $cont.eq(i);
		var cont_top = cont_on.offset().top -150;
		$doc.animate({scrollTop:cont_top});
	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop() + 150;
		$cont.each(function(i){
			var $cont_top  = $cont.eq(i).offset().top - $fix_h;
			if(scroll > $cont_top){
				$bt_nav.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
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
			duration: 1500,
			easing:'linear',
			step: function() {
			$this.text(Math.floor(this.countNum));
			},
			complete: function() {
			$this.text(this.countNum);
			}
		});
	});
};

//∞≠ªÁ¡¯
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
		grabCursor: true,
        initialSlide : randomIdx(),//ΩΩ∂Û¿ÃµÂ Ω√¿€ ∑£¥˝
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}

//ΩΩ∂Û¿ÃµÂ ∑£¥˝
function randomIdx()  {
    var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}

function tab_studyhall(){
	var $bt     = $('.js-tab a');
	var $cont   = $('.js-tab-cont');
	$bt.eq(0).addClass('on');
	$cont.eq(0).addClass('on');
	$bt.on('click',function(e){
		e.preventDefault();
		var idx = $(this).index();
		$bt.eq(idx).addClass('on').siblings().removeClass('on');
		$cont.eq(idx).addClass('on').siblings().removeClass('on');
	});
}

function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false
	});
	var slideCont = new Swiper('.studyHall-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		speed : 500,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
	});

	$('.studyHall-slide').hover(
		function(){
			slideCont.autoplay.stop()
		},
		function(){
			slideCont.autoplay.start(0)
		}
	)

}

function studentZoneSlide(){
	var stuSlideNav = new Swiper('.studentZone-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false
	});
	var slideCont = new Swiper('.studentZone-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		speed : 500,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
	});

	$('.studentZone-slide').hover(
		function(){
			slideCont.autoplay.stop()
		},
		function(){
			slideCont.autoplay.start(0)
		}
	)

}

function stSlide(){
	var $slide = $('.student-slide > .swiper-wrapper > .swiper-slide')
	// var slide_l = $slide.lenght;

	if($slide.length >= 2){
		var swiperSt = new Swiper('.student-slide', {
			slidesPerView: 1,
			loop: true,
			allowTouchMove: true,
			autoplay:true,
			autoplay:{
				delay: 6000,
				disableOnInteraction: false,
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
		});

	}else{
		var swiperSt = new Swiper('.student-slide', {
			loop:false,
			allowTouchMove: false
		});
		$('.swiper-button-prev, .swiper-button-next').css('display','none')
	}

}

function programSlide(){
	var stuSlideNav = new Swiper('.program-navi', {
		slidesPerView: 1,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false
	});
	var slideCont = new Swiper('.program-slide', {
		loop: true,
		centeredSlides: true,
		autoHeight: true,
		slidesPerView: 1,
		speed : 500,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
	});

	$('.program-slide').hover(
		function(){
			slideCont.autoplay.stop()
		},
		function(){
			slideCont.autoplay.start(0)
		}
	)

}


//∫Œ√µ ¿Œ≈Õ∫‰ ΩΩ∂Û¿ÃµÂ
function interviewSlide(){
	var tSwiper = new Swiper('.interview-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		allowTouchMove: false,
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 2500,
		grabCursor: true,
        initialSlide : randomIdx(),//ΩΩ∂Û¿ÃµÂ Ω√¿€ ∑£¥˝
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

}

// ∫Œ√µ ∏¡˝ø‰∞≠ ≈«
$('.tab li').on('click', function(){
	var idx = $(this).index();
	$(this).addClass('on').siblings().removeClass('on');
	$(this).parent().next().children('.content').removeClass('on');
	$(this).parent().next().children('.content').eq(idx).addClass('on');
});