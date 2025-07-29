
$(function() {
	visualBg();
	tabMenu('.gate-tab','.gate-cont')
	gateSlide()
	gotoMozip()
	historySlide()
	rSlide()
	systemSlide()
	typing()
	quickDown()

	tabMenu('.tab-wrap','.tab-cont')
	gisukSlide()



	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		var headerHeight = $('.header-fix').innerHeight();
		var headerHeight02 = $('.sub-tit').innerHeight();
		var $cont01Tit_top = $('.cont01 .tit').offset().top;
		var menuHeight = headerHeight + headerHeight02;

		//스크롤시 fixmenu 활성화
		if(scroll >= $cont01Tit_top - menuHeight){
			$('.round-a').addClass('fix');
		}

		if(scroll < $cont01Tit_top - menuHeight){
			$('.round-a').removeClass('fix');
		}

	});


});


// 시스템02 슬라이드
function gisukSlide(){
	$('.gisuk-slide').each(function(index){
		var $this = $(this)
		var slide = $(this).addClass('gisuk-slide-' + parseInt(index+1))

		var gisukSwiper = new Swiper(slide, {
			autoHeight: true,
			loop:true,
			slidesPerView: 1,
			autoplay: {
				delay: 7000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination",
			},
			observer: true,
			observeParents: true,
			spaceBetween: 10,
		});

		$(window).scroll(function(){		
			var winScl = $(window).scrollTop();
			var startSlide = $('.gisuk-slide-start').offset().top;
			var gEnd = $('.gisuk-slide-end').offset().top - 0;
	
			if(winScl >= startSlide && winScl < gEnd){
				gisukSwiper.autoplay.start()
			} else {
				gisukSwiper.autoplay.stop()
			}
		});
	})
}













//최상단띠배너 앵커처리
function quickDown (){
	$('.gisuk-spech-wrap').on('click', function(e){

		e.preventDefault();
		var contTop = $('.kisuk-cont').offset().top;

		$('html, body').animate({scrollTop:contTop - 100}, 700);


	});
}




// 모집안내 바로가기 버튼
function gotoMozip(){
	$('.fixed-bar a').on('click',function(e){
		e.preventDefault();
		var $cont_top = $('#mozip').offset().top;

		$('html, body').animate({scrollTop:$cont_top - 100}, 700);
	});
};

// visual 타이핑효과
function typing() {
    const result = '#최상위권<br>#대입성공<br>#경쟁력';

	gsap.to("#myText", {
		duration: 2, text: result, delay: 1
	});
}

// 상단 BG
function visualBg(){	
	var swiper = new Swiper('.visual-bg', {
		effect: "fade",
		slidesPerView: 1,
		centeredSlides: true,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
	});
}

// 공통 슬라이드
function gateSlide(){

		var gateSwiper01 = new Swiper('.gate-slide-01', {
			loop:true,
			slidesPerView: 1,
			autoplay: {
				delay: 8000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination",
			},
			autoHeight : true
		});


		$(window).scroll(function(){		
			var winScl = $(window).scrollTop();
			var startSlide = $('.cont01').offset().top;
			var gEnd = $(".cont02").offset().top -300;
	
			if(winScl >= startSlide && winScl < gEnd){
				gateSwiper01.autoplay.start()
			} else {
				gateSwiper01.autoplay.stop()
			}
		});

		var gateSwiper02 = new Swiper('.gate-slide-02', {
			loop:true,
			slidesPerView: 1,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination",
			},
			autoHeight : true
		});
}

// 년도별 슬라이드
function historySlide(){
	var historySwiper = new Swiper('.history-slide', {
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		spaceBetween: 20,
		direction: 'vertical',
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 4000,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 20,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}


/* 합격 학교 롤링 */
function rSlide(){
	var rSwiper = new Swiper('.roll-swiper',{
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		loop:true,
		speed: 2500,
		grabCursor: true,
		slidesPerView: '2',
		spaceBetween: 10
	});
}

// 학습&생활공간
function systemSlide(){	
	var swiper = new Swiper('.system-slide', {
		effect: "fade",
		slidesPerView: 1,
		centeredSlides: true,
		autoplay: {
			delay: 2000,
			disableOnInteraction: false,
		},
		observer: true,
		observeParents: true,
	});
}