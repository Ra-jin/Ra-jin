
$(function() {
	// regularSlide();
	tabMenu('.year-tab','.year-cont')
	systemSlide04()
	gotoCampus()

	StudentSlide();
	systemSlide();
});


//그래프 애니메이션
$(window).scroll(function(){
    var winScl = $(window).scrollTop();
	var $contGr = $(".bar-graph")
	
	$contGr.each(function(idx){
		var target    	= $contGr.eq(idx);
		var target_top  = Math.floor(target.offset().top - 300);

		if(winScl >= target_top){
			$contGr.eq(idx).addClass("on")
		}else{
			$contGr.eq(idx).removeClass("on")
		}
	})
});

// // 재학생&시스템 슬라이드
// function regularSlide(){
// 	$('.regularGo-slide').each(function(index){
// 		var $this = $(this)
// 		var slide = $(this).addClass('slide-regularGo-0' + parseInt(index+1))

// 		var swiper = new Swiper(slide, {
// 			loop:true,
// 			slidesPerView: 1,
// 			autoplay: {
// 				delay: 5000,
// 				disableOnInteraction: false,
// 			},
// 			pagination: {
// 				el: ".swiper-pagination",
// 			},
// 			autoHeight: true,
// 		});


// 	})
// }


// 재학생 슬라이드
function StudentSlide(){

	var slideStudent = new Swiper('.slide-student', {
		loop:true,
		slidesPerView: 1,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},

	});
	
}

// 시스템 슬라이드
function systemSlide(){

	var slideSystem = new Swiper('.slideSystem', {
		loop:true,
		slidesPerView: 1,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},
		autoHeight: true,
	});

	$(window).scroll(function(){		
		var winScl = $(window).scrollTop();
		var startSlide = $('.slide-system').offset().top;
		var gEnd = $(".slide-system-end").offset().top -300;

		if(winScl >= startSlide && winScl < gEnd){
			slideSystem.autoplay.start()
		} else {
			slideSystem.autoplay.stop()
		}
	});
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


// system04 슬라이드
function systemSlide04(){
	var swiperSystem04 = new Swiper('.system04-slide', {
		autoHeight: true,
		loop:true,
		slidesPerView: 1,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},
	});

	$(window).scroll(function(){		
		var winScl = $(window).scrollTop();
		var startSlide = $('.system04').offset().top;
		var gEnd = $(".bottom").offset().top -300;

		if(winScl >= startSlide && winScl < gEnd){
			swiperSystem04.autoplay.start()
		} else {
			swiperSystem04.autoplay.stop()
		}
	});
}

// 모집안내 바로가기 버튼
function gotoCampus(){
	$('.fixed-bar a').on('click',function(e){
		e.preventDefault();
		var $cont_top = $('#cont').offset().top;

		$('html, body').animate({scrollTop:$cont_top - 100}, 700);
	});
};