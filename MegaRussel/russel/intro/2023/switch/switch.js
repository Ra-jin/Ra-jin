
$(function() {
	var $top = $('.switch-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	bajaSlide()
	tSlide();
	tabMenu('.bt-tab', '.cont-box')
});


/* 바자관 탭슬라이드 */
function bajaSlide(){
	var bajaSlideNav = new Swiper('.baja-slide-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var slideCont = new Swiper('.baja-slide', {
		loop: true,
		autoHeight: true,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
		},
		thumbs: {
			swiper: bajaSlideNav
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;
				$('.baja-slide-navi .swiper-slide').eq(activeIndex).addClass('active').siblings().removeClass('active');

				$('.baja-slide-navi .swiper-slide').children().attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
				$('.baja-slide-navi .swiper-slide.active').children().attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
			}
		}
	});

	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll = $(window).scrollTop();

		//cont03 바자관 탭슬라이드 스타트
		var gTop06 = $(".cont03");
		var $gtopScroll06  = gTop06.offset().top - 100;
		var gEnd = $(".cont04").offset().top;;
		if(wScroll >= $gtopScroll06 && wScroll < gEnd){
			slideCont.autoplay.start(0)

			$('.baja-slide').hover(
				function(){
					slideCont.autoplay.stop()
				},
				function(){
					slideCont.autoplay.start(0)
				}
			)

		} else {
			slideCont.autoplay.stop()
		}
	})

}

/* 강사진 */
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

}

//슬라이드 랜덤
function randomIdx()  {
    var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}
