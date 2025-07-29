$(function() {
	/*======================================
					고정값
	========================================*/
	//gnb틀고정용
	$(window).load(function(){
		//페이지 로드 시 스크롤 visual로 이동
		$('html, body').animate({
			scrollTop : $('.visual-wrap').offset().top + 1			
		});
	});	

	//페이지 로드 후 1초 동안 스크롤 중지 후 1초 지나면 스크롤 가능하도록
	function delay(){
		setTimeout(enableScroll ,1000);
	}

	//스크롤 시 스크롤 안 되게 하는 이벤트 제거
	function enableScroll(){
		$(window).off("scroll", disableScroll);
	}

	//스크롤 안 되게 하는 이벤트
	function disableScroll(){
		//페이지 상단 위치값 찾기
		var target = document.querySelector('.visual-wrap');
		var endY = target.getBoundingClientRect().top + window.pageYOffset;

	//스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);
	/*======================================
					//고정값
	========================================*/

	//탭1의 padding-top설정
	// $(".js-cont").eq(0).children().eq(0).css({"padding-top":"200px"})
	
	fixmenu();

	// cont03 학생리뷰 슬라이드
	if($('.review-slide').hasClass('slide_play')){
		reviewSlide();
	}
	
	// cont02 힉생입결 슬라이드
	rollSlide();

	// cont03 선생님 슬라이드
	if($('.cont03 div').hasClass('teacher-swiper')){
		tSlide();
	}
	if($('.cont03 div').hasClass('teacher-sub-list')){
		teacherSlide();
	}

	// cont04 바자관 콘텐츠
	bajaSlide();

	// cont04 바자관시간표 팝업
	$('.bt-tt01').on('click',function(){
		$('.layer-pop01').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop01 .bt-close').on('click',function(){
		$('.layer-pop01').removeClass('on')
		$('.mask-bg').css('display','none')
	})
	// cont04 바자관시설보기 팝업
	$('.bt-tt02').on('click',function(){
		$('.layer-pop').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop .bt-close').on('click',function(){
		$('.layer-pop').removeClass('on')
		$('.mask-bg').css('display','none');
	})

	// cont05 학습 콘텐츠
	studyHallSlide();

	// cont06 프로그램 컨텐츠
	programSlide();

});

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();
	var $fix_top02 = $('.fix-menu').offset().top

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top - 100;

		// 헤더가 pos-sticky 없을때 첫번째 탭 타겟위치
		if (i == 0) {
			if($('.headerWrap').hasClass('pos-sticky') === false){
				$('html, body').animate({scrollTop:$cont_top + 20}, 800);
			}
			else{
				// 첫번째 탭 클릭시 컨텐츠 위에서 아래로 스크롤이동
				if($cont_top > preScrollTop ){
					$('html, body').animate({scrollTop:$cont_top + $fix_h + 30 }, 800);				
				}
				// 첫번째 탭 컨텐츠 아래에서 위로 스크롤이동
				else{
					$('html, body').animate({scrollTop:$cont_top }, 800);
				}
			}
		}
		// 헤더가 pos-sticky 없을때 타겟위치
		else if($('.headerWrap').hasClass('pos-sticky') === false){
			$('html, body').animate({scrollTop:$cont_top - $fix_h}, 800);
		}
		else {			
			// 클릭시 컨텐츠 위에서 아래로 스크롤이동
			if($cont_top > preScrollTop ){
				$('html, body').animate({scrollTop:$cont_top + $fix_h/2 }, 800);				
			}
			else{
				// 클릭시 컨텐츠 아래에서 위로 스크롤이동
				$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
			}
		}
	});
	
	//count 한번만 실행
	let countStart = true
	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		var $cont03_top = $('.cont03').offset().top + 300;
		// var $fix_top = $('.fix-menu').offset().top

		// 스크롤시 fixmenu 활성화
		if(scroll >= $cont03_top){
			$('.fix-menu').addClass('fix');

		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}else{
			$('.fix-menu').removeClass('fix');
		}
		
		// 인트로에서만 사용
		if($('.container').hasClass('intro')){
			var $cont07_top = $('.cont07').offset().top - 50;

			if (scroll >= $cont07_top) {
				$('.fix-menu-wrap').css('display', 'none');
			} else {
				$('.fix-menu-wrap').css('display', 'block');
			}
		}
		

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 100);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
		// 도넛 콘텐츠
		if($('.cont01').hasClass('intro')) {

			if($('.cont01 div').hasClass('d-start')){
				// cont01에 스크롤시 이벤트 실행
				var cTop = $(".cont01");
				var $ctopScroll  = cTop.offset().top-102;
				var gTop = $(".cont01 .d-start");
				var chartEl = $(".doughnut > div");
				var $gtopScroll  = gTop.offset().top-350;

				if(scroll >= $gtopScroll){
					gTop.addClass("on");
					//도넛차트 on일때 한번만 시작
					if(gTop.hasClass("on") && chartEl.hasClass('chart-box') && start == true) {
						chartDn()
						start = false
					}
				}else{
					gTop.removeClass("on");
					if (chartEl.hasClass('chart-box')) {
						//도넛차트 destroy
						$("#doughnut-chart02").remove();
						$('.chart-box').append('<canvas id="doughnut-chart02"></canvas>');
						start = true
					}
				}

				if(scroll >= $ctopScroll){
					cTop.addClass("on");
				}else{
					cTop.removeClass("on");
				}
			}
		}
	});
}

//퀵배너 위치 이동
$(".q-ban").on("click", function(e) {
    e.preventDefault(); 

	if($('.visual-wrap').hasClass('intro')){
		var $cont03 = $(".cont03");
		var $cont07 = $(".cont07"); 
		var index = $(this).index(); 
		var targetOffset = 0; // 초기값 설정

		if (index === 0 && $cont03.length) {
			targetOffset = $cont03.offset().top;
		} else if (index === 1 && $cont07.length) {
			targetOffset = $cont07.offset().top - 100;
		}

		if (targetOffset) {
			$("html, body").animate({ scrollTop: targetOffset }, 800);
		}
	}else{
		var $cont00 = $(".cont00");
		var $cont03 = $(".cont03");
		var index = $(this).index(); 
		var targetOffset = 0; // 초기값 설정

		if (index === 0 && $cont00.length) {
			targetOffset = $cont00.offset().top - 100;
		} else if (index === 1 && $cont03.length) {
			targetOffset = $cont03.offset().top;
		}

		if (targetOffset) {
			$("html, body").animate({ scrollTop: targetOffset }, 800);
		}
	}
});

/* chart */
var start = true; // 도넛차트 한번만 실행

function chartDn() {
	var ctx = document.getElementById("doughnut-chart02").getContext('2d');
	gradient = ctx.createLinearGradient(10, 150, 0, 10);

	gradient.addColorStop(0, '#003A90 ');
	gradient.addColorStop(1, '#087DEA ');

	var myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: ["#ccc", "#fff" , gradient, "#fff"],
					data: [73, 3, 890, 3],
					borderWidth: "2",
					cutout: "59%",
					borderColor: "transparent",
					//borderRadius: "200",
				}
			]
		},
		options: {
			plugins: {
				tooltip: {
					enabled: false,
				},
				hover: {
					mode: null
				}
			},
		},

	})
}

// cont02 학생 입결 슬라이드
function rollSlide(){
	$(".rolling-slide").each(function(i){
		var $this = $(this);
		var slide = $this.addClass('roll-slide-' + parseInt(i+1))
	
		var swiper = new Swiper(slide, {
			autoplay: {
				delay: 0,
				disableOnInteraction: false,
				pauseOnMouseEnter: true,
			},
			loop:true,
			centeredSlides: true,
			centeredSlidesBounds: true,
			speed: 3500,
			grabCursor: true,
			initialSlide : randomIdx(),//슬라이드 시작 랜덤
			slidesPerView: 'auto',
			spaceBetween: 16,
			freeMode: {
				enabled: true,
				momentumBounce:false
			},
		});
    });
}

// cont02 리뷰슬라이드
function reviewSlide(){
	var viewSwiper = new Swiper('.review-slide',{
		slidesPerView: 2,
		spaceBetween: 24,
		loop: true,
		loopAdditionalSlides : 3,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		},
	});

	$('.review-slide').hover(
		function(){
			viewSwiper.autoplay.stop();
    },
		function(){
			viewSwiper.autoplay.start();
		}
	);
	
	// $(window).scroll(function(){
	// 	var scroll02 = $(window).scrollTop();
		
	// 	// .cont03 도달하면 실행
	// 	var cont03Offset = $('.cont03').offset().top; 
	// 	if (scroll02  >= cont03Offset) {
	// 		viewSwiper.autoplay.start();
	// 	} else {
	// 		rSwiper.autoplay.stop();
	// 	}
	// })
}

// cont03 선생님 슬라이드
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
}

//슬라이드 랜덤
function randomIdx()  {
	var slideTotal01 = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide01 = Math.floor(Math.random() * slideTotal01);
	return parseInt(r_slide01);
}

function teacherSlide(){
	var slideIndex02 = $(".teacher-sub-list .swiper-slide").index()
	
	var tSwiper = new Swiper('.teacher-sub-list',{
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
        initialSlide : randomIdx02(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}

//슬라이드 랜덤
function randomIdx02()  {
	var slideTotal02 = $('.teacher-sub-list .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide02 = Math.floor(Math.random() * slideTotal02);
	return parseInt(r_slide02);
}

// 바자관 콘텐츠
function bajaSlide() {
    var bjSlide = new Swiper('.baja-slide', {
        slidesPerView: "auto",
        spaceBetween: 20,
        loop: true,
        loopAdditionalSlides: 3,
        speed: 500,
        allowTouchMove: true,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: ".swiper-button-next.baja",
            prevEl: ".swiper-button-prev.baja",
        },
		on: {
			slideChange: function () {
				// 기존 차트 제거
				$(".swiper-slide .chart-area canvas").remove();
	
				var activeSlide = $(".swiper-slide-active");
				if (activeSlide.hasClass("dough")) {
					activeSlide.find(".chart-area").append('<canvas id="doughnut-chart"></canvas>');
					drawDoughnutChart("doughnut-chart"); // 차트 실행
				}
			},
			beforeTransitionStart: function () {
				// 기존 차트 제거
				$(".swiper-slide .chart-area canvas").remove();
	
				var activeSlide = $(".swiper-slide-active");
				if (activeSlide.hasClass("dough")) {
					activeSlide.find(".chart-area").append('<canvas id="doughnut-chart"></canvas>');
					drawDoughnutChart("doughnut-chart"); // 차트 실행
				}
			}
		}
    });

    function drawDoughnutChart(chartId) {
        var ctx = document.getElementById(chartId).getContext("2d");
        var gradient = ctx.createLinearGradient(0, 0, 300, 0);
        gradient.addColorStop(0.2, '#0032C6');
        gradient.addColorStop(0.5, '#80106B');
        gradient.addColorStop(1, '#E90004');

        new Chart(ctx, {
            type: 'doughnut',
            data: {
                datasets: [
                    {
                        backgroundColor: ["transparent", gradient],
                        data: [43, 944],
                        borderWidth: 2,
                        cutout: "74.5%",
                        borderColor: "transparent",
                        borderRadius: "200",
                    }
                ]
            },
            options: {
                rotation: -90, // 시작 각도를 -90도로 설정하여 반원 생성
                circumference: 207, // 반원 (180도)
                animation: {
                    duration: 2000
                },
                plugins: {
                    tooltip: { enabled: false },
                    hover: { mode: null }
                },
            },
        });
    }

    // cont04가 화면에 나타나면 자동재생 시작
    $(window).scroll(function () {
        var scroll = $(window).scrollTop();
        let con04 = $(".cont04");
        let con04Top = con04.offset().top - 150;
        let con05Top = $(".cont05").offset().top - 150;

        if (scroll >= con04Top && scroll <= con05Top) {
            con04.addClass('on');
            bjSlide.autoplay.start();
        } else {
            con04.removeClass('on');
            bjSlide.autoplay.stop();
        }
    });

	$('.baja-slide').hover(
		function(){
			bjSlide.autoplay.stop();
    },
		function(){
			bjSlide.autoplay.start();
		}
	);
}


// cont05 학습 콘텐츠
function studyHallSlide(){
	var studyHallNav = new Swiper('.studyHall-navi', {
		slidesPerView: 3,
		// spaceBetween: 2,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});

	var studyHallCont = new Swiper('.studyHall-slide', {
		loop: true,
		spaceBetween: 10,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 8000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: studyHallNav
		},
		observer: true,
		observeParents: true
	});	
	
	$('.studyHall-slide .swiper-slide').hover(
		function(){
			studyHallCont.autoplay.stop();
    },
		function(){
			studyHallCont.autoplay.start();
		}
	);

	$(window).scroll(function () {
        var scroll = $(window).scrollTop();
        let con05 = $(".cont05");
    	let con05Top = con05.offset().top - 150;
        let con06Top = $(".cont06").offset().top - 150;

        if (scroll >= con05Top && scroll <= con06Top) {
            con05.addClass('on');
            studyHallCont.autoplay.start();
        } else {
            con05.removeClass('on');
            studyHallCont.autoplay.stop();
        }
    });
}

// cont06 프로그램 컨텐츠
function programSlide(){
	var proSwiper = new Swiper('.program-slide',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 5000,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

	// $('.program-slide .swiper-slide').hover(
	// 	function(){
	// 		proSwiper.speed = 0; 
	// 		proSwiper.autoplay.stop();
			
    // },
	// 	function(){
	// 		proSwiper.autoplay.start();
	// 		proSwiper.speed = 5000; 
	// 	}
	// );
	
	$('.program-slide').on('mouseenter', function () {
        proSwiper.autoplay.stop();
		// proSwiper.speed = 0; 
    }).on('mouseleave', function () {
        proSwiper.autoplay.start();
		// proSwiper.speed = 5000; 
    });
}