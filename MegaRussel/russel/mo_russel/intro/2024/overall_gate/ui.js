$(function(){
	
	// cont03 리뷰 슬라이드
	reviewSlide();
	/* cont04 선생님 슬라이드 */
	teachSlide();
	// cont06 슬림한 종합반 슬라이드
	slimSlide();
})

// cont03 리뷰 슬라이드
function reviewSlide(){
	var reviewSlide = new Swiper('.review-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		spaceBetween: 20,
		speed: 300,
		pagination: {
			el: ".swiper-pagination.type01",
			clickable: true
		},
	});
};
/* cont04 선생님 슬라이드 */
function teachSlide() {
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
			momentumBounce:false
		},
		observer: true,
		observeParents: true
	});
};
// cont06 슬림한 종합반 슬라이드
function slimSlide(){
	var slimSlide = new Swiper('.slim-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: true,
		spaceBetween: 26,
		speed: 300,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type03",
			clickable: true
		},
	});


	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont06Top = $(".cont06").offset().top-150;
		let con07Top = $(".cont07").offset().top-150;
		
		if (scroll >= cont06Top && scroll <= con07Top) {
			slimSlide.autoplay.start();
		} else {
			slimSlide.autoplay.stop();

		}
	})
}

//데이터 산출 기준
$(function(){
    $('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

