
$(function() {
    gotoClass();


	bajaSlide();
});



//cont1 모집안내 바로가기 클릭시 앵커처리
function gotoClass(){
	var $doc = $('html, body')
	var $bt_fix = $('.fixed-bar a');
	var $cont = $('.cont05');

	$bt_fix.on('click',function(e){
		e.preventDefault();

		var $cont_top = $cont.offset().top;
		$doc.animate({scrollTop:$cont_top - 100}, 700);
	});
}

function bajaSlide(){
	//cont3 바른공부 자습전용관 롤링
	var bajaSwiper = new Swiper(".mySwiper.baja-rolling", {
		spaceBetween: 0,
		pagination: {
			el: ".swiper-pagination.baja-rolling.page",
			dynamicBullets: true,
			clickable: true,
		},
		loop: true,
		centeredSlides: false,
		loopAdditionalSlides : 1,
		autoplay:{
			delay:7000,
			disableOnInteraction: false,
		},
		autoHeight : true,
	});

	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll = $(window).scrollTop();

		//cont03 바자관 탭슬라이드 스타트
		var gTop06 = $(".cont03");
		var $gtopScroll06  = gTop06.offset().top - 100;
		var gEnd = $(".cont04").offset().top;
		if(wScroll >= $gtopScroll06 && wScroll < gEnd){
			bajaSwiper.autoplay.start(0)

			$('.mySwiper.baja-rolling').hover(
				function(){
					bajaSwiper.autoplay.stop()
				},
				function(){
					bajaSwiper.autoplay.start(0)
				}
			)

		} else {
			bajaSwiper.autoplay.stop()
		}
	})

	//cont3 바자관 롤링 내 이미지 클릭 시 딤드처리
	$('.bt-tt').on('click',function(){
		bajaSwiper.autoplay.stop()
		$('.layer-tt').addClass('on')
	})
	$('.bt-close-tt').on('click',function(){
		bajaSwiper.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}
//cont4 선생님 롤링
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
		momentumBounce:false,
	},
	observer: true,
	observeParents: true,
});

