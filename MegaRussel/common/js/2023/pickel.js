$(document).ready(function(){
	var $top = $('.pickel-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	tSlide()
	$('.qna-tit').on('click',function(){
		$(this).toggleClass('on')
		$(this).next('.qna-txt').toggleClass('on')
	})
});


$('.study-slide').each(function(i){
	// 고123 탭
	var $this = $(this);
	var slide = $this.addClass("study-slide" + parseInt(i + 1));	
	var bt_n = $this.next('.swiper-button-next').addClass("bt-next" + parseInt(i + 1));
	var bt_p = $this.next().next('.swiper-button-prev').addClass("bt-prev" + parseInt(i + 1));

	var studySlide = new Swiper(slide, {
		loop: true,
		observer: true, 
		observeParents: true,
		speed : 500,
		autoplay:{
			delay: 10000,
			disableOnInteraction: false,
		},
		navigation: {
            nextEl: bt_n,
            prevEl: bt_p,
        },
	});

	$('.study-slide').hover(
		function(){
			studySlide.autoplay.stop()
		},
		function(){
			studySlide.autoplay.start()
		}
	);
});


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

// 탭메뉴
$('.js-bt-tab').each(function(){
	var $bt 	= $(this).children('span');
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

function playPop(url){
	var wnd = window.open("", "talk", "width=750,height=600,scrollbars=0,resizable=no,location=no,");
	wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
}



