$(function() {
	var $top = $('.gate-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	tabMenu();	//탭메뉴
    typing()
    visualSlide()
	gisukSlide()
	yearSlide()
	stuSlide()
	rSlide()
	infraSlide()
	quickDown()

	// 남기숙만

		$(window).scroll(function(){
			var scroll = $(window).scrollTop();

			var quick = $(".quick.russel_yj");
			var quickTop  = quick.offset().top;


			if(scroll >= quickTop){
				$('.quick.russel_yj').addClass('fixed')
			}
			
		});
});

//탭메뉴
function tabMenu(){
	var $bt		= $(".tab-bt > a");
	var $cont	= $(".tab-cont .in");

	$bt.on("click",function(e){
		e.preventDefault();
		var i = $(this).index();
		// console.log(i)
		$(this).addClass("on").siblings().removeClass("on");
		$(this).parent().next().children().eq(i).addClass("on").siblings().removeClass("on")
	});
}


// visual 타이핑효과
function typing() {
    const result = '#최상위권 #대입성공 #경쟁력';
		gsap.to("#myText", {
			duration: 1.7, text: result, delay: .7
		});
}
/* 비주얼 bg 슬라이드 */
function visualSlide(){
	var vSwiper = new Swiper('.visual-slide',{
		speed: 700,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false, // 버튼클릭해도 계속 롤링
		},
		loop:true,
		slidesPerView: '1',
		effect: 'fade',
		fadeEffect: {
			crossFade: true
		},
	});
	//5.5초 모션 후 슬라이드 delay 5초로 변경 이벤트 실행
	setTimeout(function() {
		$(".visual-slide .swiper-slide").attr("data-swiper-autoplay", "5000")
	}, 5500)

}



/* 탭슬라이드 */
function gisukSlide(){
	var gisukSlideNav = new Swiper('.gisuk-slide-navi', {
		slidesPerView: 3,
		allowTouchMove:false,
	});
	var slideCont = new Swiper('.gisuk-slide', {
		loop: true,
		autoHeight: true,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
		},
		thumbs: {
			swiper: gisukSlideNav
		},
		pagination: {
		  el: ".swiper-pagination",
		  type: "bullets",
		  clickable: true, 
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;
				$('.gisuk-slide-navi .swiper-slide').eq(activeIndex).addClass('active').siblings().removeClass('active');

				$('.gisuk-slide-navi .swiper-slide').children().attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
				$('.gisuk-slide-navi .swiper-slide.active').children().attr("src", function(idx, j){ return j.replace(".png","_on.png"); });

				// 첫번째 slide일때마다 count 실행
				if (activeIndex == 0) {
					countNum()
				} else {
					$('.counter').text(0);
				}
			}
		}
	});
	
	// scroll 이벤트

	let startCount = false //한번만 실행
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		
		// cont01일때 탭슬라이드 시작
		
		var gTop01 = $(".cont01");
		var $gtopScroll01  = gTop01.offset().top;
		var gEnd = $(".cont02").offset().top;
	
	
		if(scroll >= $gtopScroll01 && scroll < gEnd){
			slideCont.autoplay.start(0)

			if (startCount == false) {

				$('.counter').text(0);
				countNum()
				startCount = true
			}
			$('.gisuk-slide').hover(
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
	});

}

/*count*/
function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		
		{
			duration: 1500,
			easing:'linear',
			step: function() {
			$this.text(Math.floor(this.countNum));
			},
			complete: function() {
			$this.text(this.countNum);
			}
		});
	});
	
};
// 연혁 롤링
function yearSlide(){
	var yearSwiper = new Swiper('.year-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		direction: 'vertical',
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 3500,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}

// 합격 선배 리뷰 슬라이드
function stuSlide(){

	var sSwiper = new Swiper('.stu-slide',{
		loop: true,
		//loopAdditionalSlides: 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
		slidesPerView: 'auto',
		spaceBetween: 90,
		speed: 1000,
		
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				// let activeIndex01 = this.realIndex;

				$('.stu-slide .swiper-slide').children('img').attr("src",function(idx, j){ return j.replace("_on.png",".png"); });

				$('.stu-slide .swiper-slide-active').children('img').attr("src", function(idx, j){ return j.replace(".png","_on.png"); });

			}
		},
		updateOnWindowResize: false,
	});
}


/* 합격 학교 롤링 */
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
// infra 슬라이드
function infraSlide(){
	var iSwiper = new Swiper('.infra-slide',{
		loop: true,
		slidesPerView: '1',
		autoplay:{
			delay: 3000,
		},
	});
}

//quick 플로팅 배너 앵커처리
function quickDown (){
	$('.q-ban-down').on('click', function(e){

		e.preventDefault();
		var contTop = $('.cont06').offset().top;

		$('html, body').animate({scrollTop:contTop}, 700);


	});
}