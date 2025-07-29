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

	if($('.cont03').hasClass('russel_w')){
		reviewSlide();
	}
	if($('.cont07').hasClass('russel_w')){
		bajaSlide();
	}

	if($('.cont08').hasClass('russel_w')){
		sSlide('.s-slide.type01', '.s01');
		sSlide('.s-slide.type02', '.s02');
	}

	$('.bt-tt01').on('click',function(){
		$('.layer-pop01').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop01 .bt-close').on('click',function(){
		$('.layer-pop01').removeClass('on')
		$('.mask-bg').css('display','none')
	})

	// cont09 학습 콘텐츠
	studyHallSlide();

	// cont10 프로그램 컨텐츠
	programSlide();

});


/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();
	var $fix_top02 = $('.fix-menu').offset().top;

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;

		$('html, body').animate({scrollTop:$cont_top }, 800);	
		// 클릭시 컨텐츠 위에서 아래로 스크롤이동
		if($cont_top > preScrollTop ){
			$('html, body').animate({scrollTop:$cont_top + $fix_h/2 }, 800);				
		}
		else{
			// 클릭시 컨텐츠 아래에서 위로 스크롤이동
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
	});

	
	//count 한번만 실행
	let countStart = true
	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		var $cont06_top = $('.cont06').offset().top;
		// var $fix_top = $('.fix-menu').offset().top

		// 스크롤시 fixmenu 활성화
		if(scroll >= $cont06_top){
			$('.fix-menu').addClass('fix');

		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}else{
			$('.fix-menu').removeClass('fix');
		}

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 100);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
	});
}

// cont03 리뷰슬라이드
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

    // cont07 화면에 나타나면 자동재생 시작
    $(window).scroll(function () {
        var scroll = $(window).scrollTop();
        let con07 = $(".cont07");
        let con07Top = con07.offset().top - 150;
        let con08Top = $(".cont08").offset().top - 150;

        if (scroll >= con07Top && scroll <= con08Top) {
            con07.addClass('on');
            bjSlide.autoplay.start();
        } else {
            con07.removeClass('on');
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

function sSlide(slideType,btnType){
	var sSwiper = new Swiper(slideType, {
		loop: true,
		spaceBetween: 10,
		// centeredSlides: true,
        // centeredSlidesBounds: true,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 8000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: ".swiper-button-next", btnType,
			prevEl: ".swiper-button-prev", btnType,
		},
	})
}

// cont09 학습 콘텐츠
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
        let con09 = $(".cont09");
    	let con09Top = con09.offset().top - 150;
        let con10Top = $(".cont10").offset().top - 150;

        if (scroll >= con09Top && scroll <= con10Top) {
            con09.addClass('on');
            studyHallCont.autoplay.start();
        } else {
            con09.removeClass('on');
            studyHallCont.autoplay.stop();
        }
    });
}

// cont10 프로그램 컨텐츠
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

	$('.program-slide').on('mouseenter', function () {
        proSwiper.autoplay.stop();
		// proSwiper.speed = 0; 
    }).on('mouseleave', function () {
        proSwiper.autoplay.start();
		// proSwiper.speed = 5000; 
    });
}