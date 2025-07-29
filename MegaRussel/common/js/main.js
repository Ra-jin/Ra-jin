/* 메인 왼쪽배너 슬라이드*/
$(function() {
	var galleryThumbs = new Swiper('.slide-pagination', {
		slidesPerView: 5,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
	});
	var galleryTop = new Swiper('.main-banner-slide', {
		spaceBetween: 10,
		loop: true,
		effect: 'fade',
		navigation: {
			nextEl: '.button-next',
			prevEl: '.button-prev',
		},
		autoplay:{
			delay: 2000,
		},						  
		thumbs: {
			swiper: galleryThumbs
		}
	});
	$(".button-play").click(function(){
		galleryTop.autoplay.start();
		$(this).removeClass('on').next().addClass('on');
	});
	$(".button-stop").click(function(){
		galleryTop.autoplay.stop();
		$(this).removeClass('on').prev().addClass('on');
	});

	$(document).on('mouseenter', '.main-banner-slide a', function(e){		
		galleryTop.autoplay.stop();
		$('.button-stop').removeClass('on').prev().addClass('on');
	});
	$(document).on('mouseleave', '.main-banner-slide a', function(e){		
		galleryTop.autoplay.start();
		$('.button-play').removeClass('on').next().addClass('on');
	});

	var top_slide = $('.main-banner-slide li').index();
    if(top_slide > 6){
		$('.button-prev, .button-next').removeClass('on');
    }
});	
/* //메인 왼쪽배너 슬라이드*/

/* 메인 왼쪽 SS배너 슬라이드 */
$(function(){
	var leftSwiper = new Swiper('.left-banner-slide', {
		slidesPerView : 1,
		loop : true,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
	});
});
/* 메인 왼쪽 SS배너 슬라이드 */

/* 메인 오른쪽배너 슬라이드*/
$(function() {
	var a_len = $('.main-explain-ramdom a').length;
	var ran = Math.floor (Math.random () * a_len);

	var $ex_slide = $(".main-explain-warp .swiper-slide");
	if($ex_slide.length >= 2){
		var swiper = new Swiper('.main-explain-warp', {
		  pagination: {
			el: '.explain-pagination',
			clickable: true,
		  },
		  loop: true,
		  initialSlide : ran,
		});
	}else{
		var swiper = new Swiper('.main-explain-warp', {		 
		  loop: false,
		});
	}
	
});	
/* //메인 오른쪽배너 슬라이드*/

/* 성공수기 */
$(function() {
	$('.campus-slide-wrap').each(function(index){
		var $this = $(this);
		var slide = $this.addClass("js-slide-" + Number(index + 1));
		var swiper = new Swiper(slide, {
			slidesPerView: 5,
			spaceBetween: 15,
			loop: true,
			navigation: {
				nextEl: '.campus-button-next',
				prevEl: '.campus-button-prev',
			},
		});
	});
});

/* 부천 러부캐스트 무한롤링*/
$(function() {
	$('.campus-slide-wrap.bc').each(function(index){
		var $this = $(this);
		var slide = $this.addClass("js-slide-" + Number(index + 1));
		var swiper = new Swiper(slide, {
			slidesPerView: 5,
			spaceBetween: 15,
			loop: true,		
			navigation: {
				nextEl: '.campus-button-next',
				prevEl: '.campus-button-prev',
			},
		});
	});
});	



$(function(){
	var $bt		= $(".campus-tab li");
	var $cont 	= $('.campus-con-wrap > .campus-con');
	var $btTab	= $('.tab-bt02 > span');
	var $conTab	= $('.campus-con > .tab-cont02');
	var num = 0;

	// 러셀스튜디오 1depth 탭
	$bt.on("click",function(){
		// num = 0;
		var now_tab = $(this).index();
		$(this).addClass("on").siblings().removeClass("on");
		$cont.eq(now_tab).addClass('on').siblings().removeClass('on');
		if(now_tab == 1){
			$btTab.removeClass('on')
			$conTab.removeClass('on')
		}else{
			$btTab.eq(num).addClass('on')
			$conTab.eq(num).addClass('on')
		}
	});

	// 러셀스튜디오 2depth 탭
	$btTab.on('click',function(){
		var idx = $(this).index();
		num = idx;
		$btTab.eq(idx).addClass('on').siblings().removeClass('on')
		$conTab.eq(idx).addClass('on').siblings().removeClass('on')
		if(idx == 1){
			$('.tab-bt02 > .btn-more').css('display','block')
		}else{
			$('.tab-bt02 > .btn-more').css('display','none')
		}
	})
});


function playPopup(url){
	var sUrl = url.toLowerCase();
	var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");

	// 네이버tv
	if (sUrl.indexOf('naver.com') > -1) {
		sUrl = sUrl.replace("/v/", "/embed/"); 
		wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
	// 유튜브
	} else {
		wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
	}	
}


