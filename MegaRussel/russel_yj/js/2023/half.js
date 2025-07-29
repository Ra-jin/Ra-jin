
$(function() {
	var $top = $('.half-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	//≈«1¿« padding-topº≥¡§
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"200px"})
	// $(".js-cont.russel_w").eq(0).children().eq(0).css({"padding-top":"220px"})
	
    fixmenu();
	rSlide()
	dankaAlert()
	passSlide();

});

// πˆ∆∞ø° ∏µ≈© æ¯¿ª ∞ÊøÏ alert
function dankaAlert(){
    var $bt_danka = $('.half-wrap a');
    var pattern = /[§°-§æ|§ø-§”|∞°-∆R]/;

    $bt_danka.on('click',function(e){
        var a_txt = $(this).attr('href');

        if(pattern.test(a_txt)){
            e.preventDefault()
            alert(a_txt)
        }
    })        
}

var start = true;
// ∞Ì¡§∏ﬁ¥∫
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();

	// fixmenu ≈¨∏Ø Ω√ ¿Ãµø
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
		// $doc.animate({scrollTop:$cont_top}, 800);
		if (i == 0) {
			$doc.animate({scrollTop:$cont_top}, 800);
		}else {
			$doc.animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		// console.log($(window).scrollTop());
		
		//Ω∫≈©∑—Ω√ nav »∞º∫»≠
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


/* swiper */

/* «’∞› «–±≥ ∑—∏µ */
function rSlide(){
	var rSwiper = new Swiper('.roll-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		speed: 2500,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40
	});

	$('.roll-swiper').hover(function(){
			rSwiper.autoplay.stop()
		},function(){
			rSwiper.autoplay.start()
		}
	)
}

/* «’∞› Ω√Ω∫≈€ ∑—∏µ */
function passSlide() {
	var cardSwiper = new Swiper(".pass-swiper", {
		slidesPerView: 'auto',
		spaceBetween: 40,
		loop: true,
		loopAdditionalSlides: 1, 
		autoplay: {
		delay: 7000,
		disableOnInteraction: false,
		},
		centeredSlides: true,
		on: {
			beforeTransitionStart : function () {

				$('.pass-swiper .swiper-slide-active').addClass('active').siblings().removeClass('active')
			}
		},	
	});
	}
// ∆Àæ˜
//quick ∆Àæ˜√¢
var popH = screen.availHeight;
var popupWidth = 794;
var popupX = (window.screen.width / 2) - (popupWidth / 2);

//πÆ¿⁄ºˆΩ≈ æÀ∏ÆπÃ Ω≈√ª πŸ∑Œ∞°±‚
function fn_eventGo(url) {	
    var pattern = /[§°-§æ|§ø-§”|∞°-∆R]/;

	if(pattern.test(url)){
		alert(url)
	}else{
		window.open(url,'popup_mock','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}
}

//øµªÛ ∆Àæ˜
function playPopup(url){
	var sUrl = url.toLowerCase();
	var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");

	// ≥◊¿Ãπˆtv
	if (sUrl.indexOf('naver.com') > -1) {
		sUrl = sUrl.replace("/v/", "/embed/");
		wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
	// ¿Ø∆©∫Í
	} else {
		wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
	}
}

//µ•¿Ã≈Õ ªÍ√‚±‚¡ÿ ∆Àæ˜
$(function(){
	$('.data').on('click',function(){
		$('.data-txt').toggleClass('on');
	});
});
