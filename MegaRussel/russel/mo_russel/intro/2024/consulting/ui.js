$(function() {
	rSlide()
	cSlide()
});


// 롤링이미지
function rSlide(){
	var rSwiper = new Swiper('.roll-swiper',{
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
		slidesPerView: 'auto',
		spaceBetween: 10,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
		pagination: {
            el: ".roll-pager",
            clickable: true,
            type: "bullets",
        },
	});

    $('.roll-swiper').hover(
		function(){
			rSwiper.autoplay.stop();
    	},
		function(){
			rSwiper.autoplay.start();
		}
	);
}

// 컨설턴트 롤링
function cSlide(){
	var cSwiper = new Swiper('.consult-swiper',{
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
		slidesPerView: 'auto',
		spaceBetween: 10,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.consult-swiper').hover(
		function(){
			cSwiper.autoplay.stop();
    	},
		function(){
			cSwiper.autoplay.start();
		}
	);
}

// 전문 컨설턴트 팝업
$('.c-box02 ul li .img a').on('click', function() {
	$(this).parent().parent().addClass("on")
	$('.dim').on('click', function() {
		$(this).parent().removeClass("on")
	})
});

$('.layer-popup > button').on('click', function() {
	$(this).parent().parent().removeClass("on")
});
