
$(function() {
	var $top = $('.gate-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	tSlide();
});
function tSlide(){
	var slideIndex01 = $(".teacher-swiper .swiper-slide").index()
	
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
	var slideTotal01 = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide01 = Math.floor(Math.random() * slideTotal01);
	return parseInt(r_slide01);
}