$(function(){

	
	fixmenu();

	// cont01 입결 슬라이드
	if($('.cont01 div').hasClass('result-slide')){
		resultSlide();
	}
	if($('.cont01 div').hasClass('result-slide-wrap')){
		resultSlide02();
	}
	// cont02 학생 리뷰슬라이드
	reviewSlide();
	
	// cont02 합격자 리스트 롤링
	if ($('.cont02 div').hasClass('pass-rolling-l')) {
		passSlideLeft();
		passSlideRight();
	}

	// cont03 학생후기 슬라이드
	if($('.cont03 div').hasClass('contents-slide')){
		contentsSlide();
	}

	// cont04 바른공부 자습전용관 슬라이드
	studyHallSlide();

	// cont05 입시관리 탭슬라이드
	manageSlide();

	// cont05 입시관리 탭슬라이드 내 슬라이드
	rollSlide('.s-slide.type01', '.p-type01');
	rollSlide('.s-slide.type02', '.p-type02');
	rollSlide('.s-slide.type03', '.p-type03');



	bookSlide();


	if($('.cont03 .teacher-wrap div').hasClass('teacher-rolling')) {
		teachSlide();
	}else if($('.cont03 .teacher-wrap div').hasClass('teacher-sub-list')){
		teacherSlide();
	};


	tabMenu('.tab-wrap','.tab-cont');

	jsPopup();


})



// cont01 데이터산출기준 팝업
$(function(){
    $('.data-txt').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

// cont01 입결 슬라이드
function resultSlide() {
    var stuSwiper = new Swiper(".result-slide", {
        loop: true,
        
		// centeredSlides: false,
        // slidesPerView: 1.1,
        centeredSlides: true,
        slidesPerView: 1,

        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
		spaceBetween: 6,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination.type01",
            clickable: true,
        },

    });

	//스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con01 = $(".cont01")
		let con01Top = $(".cont01").offset().top - 150;
		let con02Top = $(".cont02").offset().top - 150;
		
		if (scroll >= con01Top && scroll <= con02Top) {
			con01.addClass('on')
			stuSwiper.autoplay.start();
		} else {
			con01.removeClass('on')
			stuSwiper.autoplay.stop();
		}
	})

}

// cont01 결과 슬라이드
function resultSlide02(){
	if ($(".result-slide02 .swiper-wrapper .swiper-slide").length == 1) {
		// slide 1개 일 경우
		var rSlide = new Swiper('.result-slide02', {
			slidesPerView: 1,
			spaceBetween: 26,
			allowTouchMove: false,
		});
	} else {
		var rSlide = new Swiper('.result-slide02', {
			slidesPerView: 1,
			loop: true,
			allowTouchMove: true,
			autoHeight: true,
			spaceBetween: 26,
			speed: 300,
			autoplay:{
				delay: 7000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination.type02",
				clickable: true
			},
		});
	}

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.result-slide02 .swiper-wrapper .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".result-slide02.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

}

// cont02 학생 리뷰슬라이드
function reviewSlide(){
	var rSwiper = new Swiper('.review-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: true,
		spaceBetween: 30,
		speed: 500,
		// autoplay:{
		// 	delay: 5000,
		// 	disableOnInteraction: false,
		// },
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.review-slide .swiper-wrapper .swiper-slide').length - 2;
	let bulletWidth = 100 / slideLeng
	$(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	// //스크롤 떨림 현상 방지
	// $(window).scroll(function(){
	// 	var scroll = $(window).scrollTop();
	// 	let con02 = $(".cont02")
	// 	let con02Top = $(".cont02").offset().top - 150;
	// 	let con03Top = $(".cont03").offset().top - 150;
		
	// 	if (scroll >= con02Top && scroll <= con03Top) {
	// 		con02.addClass('on')
	// 		rSwiper.autoplay.start();
	// 	} else {
	// 		con02.removeClass('on')
	// 		rSwiper.autoplay.stop();
	// 	}
	// })
}

// cont02 합격자 리스트 롤링
function passSlideLeft(){

	var passSwiper01 = new Swiper('.pass-rolling-l',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 3000,
		slidesPerView: 'auto',
		spaceBetween: 10,
		observer: true,
		observeParents: true
	});
}
function passSlideRight(){

	var passSwiper02 = new Swiper('.pass-rolling-r',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 3000,
		slidesPerView: 'auto',
		spaceBetween: 10,
		observer: true,
		observeParents: true
	});
}


// cont03 학생후기 슬라이드
function contentsSlide() {
    var stuSwiper = new Swiper(".contents-slide", {
        loop: true,
        
		// centeredSlides: false,
        // slidesPerView: 1.1,
        centeredSlides: true,
        slidesPerView: 1,

        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
		spaceBetween: 6,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination.type01",
            clickable: true,
        },

    });

}

// cont04 바른공부 자습전용관 슬라이드
function studyHallSlide(){

	let chartInstance = null;
	
	const createGradient = (ctx, width) => {
		let gradient = ctx.createLinearGradient(0, 0, width, 0);
		// gradient.addColorStop(0, '#212baa');
		// gradient.addColorStop(1, '#e90104');

		gradient.addColorStop(0.2, 'rgb(0, 17, 255)');  // 깊은 파란색
		gradient.addColorStop(0.5, 'rgb(255, 3, 8)');   // 밝은 빨간색


		return gradient;
	};
	
	const animateDonutChart = (chart, targetData) => {
		let currentData = 0;
		let startTime = null;
	
		const step = (timestamp) => {
			if (!startTime) startTime = timestamp;
			let progress = timestamp - startTime;
			let percentage = Math.min(progress / 1000, 1); // 1초 동안 애니메이션
			currentData = targetData * percentage;
	
			chart.data.datasets[0].data = [currentData, 100 - currentData];
			chart.update();
	
			if (percentage < 1) {
				requestAnimationFrame(step);
			}
		};
	
		requestAnimationFrame(step);
	};
	
	const resetDonutChart = () => {
		let canvas = document.getElementById('donutChart');
		if (!canvas) return;
	
		let ctx = canvas.getContext('2d');
		let gradient = createGradient(ctx, 300);
	
		if (chartInstance) {
			chartInstance.destroy();
		}
	
		// 색상이 없는 상태(애니메이션 전)로 초기화
		chartInstance = new Chart(ctx, {
			type: 'doughnut',
			data: {
				datasets: [{
					data: [0, 100], // 비어 있는 상태
					backgroundColor: ['rgba(0, 0, 0, 0.1)', 'transparent'], // 연한 회색 느낌
					// backgroundColor: ['rgba(200, 200, 200, 0.3)'], // 연한 회색
					borderWidth: 0,
					borderRadius: 50
				}]
			},
			options: {
				responsive: true,
				cutout: '70%',
				rotation: -90,
				circumference: 240,
				animation: false,
				plugins: {
					legend: { display: false }, // 범례 제거
					tooltip: { enabled: false } // 툴팁 완전 제거
				},
				interaction: {
					mode: null // 마우스, 터치 반응 제거
				},
				hover: {
					mode: null // 마우스 오버 효과 제거
				},
				onClick: null, // 클릭 이벤트 제거
				events: [] // 모든 이벤트 차단
			}
		});
	};
	
	const createDonutChart = () => {
		let canvas = document.getElementById('donutChart');
		if (!canvas) return;
	
		let ctx = canvas.getContext('2d');
		let gradient = createGradient(ctx, 300);
	
		if (chartInstance) {
			chartInstance.destroy();
		}
	
		chartInstance = new Chart(ctx, {
			type: 'doughnut',
			data: {
				datasets: [{
					data: [0, 100], // 비어 있는 상태에서 시작
					backgroundColor: [gradient, 'transparent'],
					borderWidth: 0,
					borderRadius: 50
				}]
			},
			options: {
				responsive: true,
				cutout: '71%',
				// rotation: -90,
				rotation: -100,
				circumference: 266,
				animation: false,
				plugins: {
					legend: { display: false }, // 범례 제거
					tooltip: { enabled: false } // 툴팁 완전 제거
				},
				interaction: {
					mode: null // 마우스, 터치 반응 제거
				},
				hover: {
					mode: null // 마우스 오버 효과 제거
				},
				onClick: null, // 클릭 이벤트 제거
				events: [] // 모든 이벤트 차단
			}
		});
	
		animateDonutChart(chartInstance, 75);
	};
	

	// let slidesPerViewCount = document.querySelector('.studyHall-navi.core') ? 5 : 4;
	let slidesPerViewCount = document.querySelectorAll('.studyHall-navi .swiper-slide').length;

	let swiperTabs = new Swiper('.studyHall-navi', {
		slidesPerView: slidesPerViewCount,
		freeMode: true,
		watchSlidesProgress: true,
		allowTouchMove: false,
	});


	const swiperContent = new Swiper('.studyHall-slide', {
		loop: true,
		slidesPerView: 1,
		allowTouchMove: true,
		spaceBetween: 10,
		autoHeight: true,
		speed: 500,
		// autoplay:{
		// 	delay: 5000,
		// 	disableOnInteraction: false,
		// },
		on: {
			init: function () {
				if (this.realIndex === 1) {
					createDonutChart();
				} else {
					resetDonutChart(); // 차트를 미리 비어 있는 상태로 초기화
				}
			},
			slideChangeTransitionStart: function () {
				let activeIndex = this.realIndex;
	
				// 1번 슬라이드가 보이기 전에 먼저 색상을 초기화 (비어 있는 상태)
				if (activeIndex === 1) {
					resetDonutChart();
				}
			},
			slideChangeTransitionEnd: function () {
				let activeIndex = this.realIndex;
	
				document.querySelectorAll('.studyHall-navi .swiper-slide').forEach((el, index) => {
					el.classList.toggle('swiper-slide-active', index === activeIndex);
				});
	
				// 1번 슬라이드가 완전히 보일 때 차트 애니메이션 실행
				if (activeIndex === 1) {
					createDonutChart();
				}
			}
		},
		thumbs: {
			swiper: swiperTabs
		}
	});
	
	// 페이지 로드 후 바로 실행
	window.addEventListener('load', () => {
		if (swiperContent.realIndex === 1) {
			createDonutChart();
		} else {
			resetDonutChart();
		}
	});

	// //스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let cont04Top = $(".cont04").offset().top-150;
	// 	let cont05Top = $(".cont05").offset().top-150;
		
	// 	if (scroll >= cont04Top && scroll <= cont05Top) {
	// 		swiperContent.autoplay.start();
	// 	} else {
	// 		swiperContent.autoplay.stop();
	// 	}
	// })

	// 바자관 롤링 내 표준시간표 팝업
	$('.bt-tt').on('click',function(){
		// swiperContent.autoplay.stop()
		$('.layer-tt').addClass('on')
	})
	$('.layer-tt .bt-close-tt').on('click',function(){
		// swiperContent.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}



function manageSlide() {
    var manageSlideNav = new Swiper('.manage-slide-navi', {
        slidesPerView: 3,
        freeMode: true,
        allowTouchMove: false,
        watchSlidesProgress: true,
        watchSlidesVisibility: true,
    });

    var manageCont = new Swiper('.manage-slide', {
        slidesPerView: 1, // auto에서 1로 변경 (예상치 못한 높이 변화 방지)
        centeredSlides: false,
        spaceBetween: 10,
        autoHeight: true,
        speed: 500,
        loop: true, // 외부 탭 루프 활성화
        allowTouchMove: true,
        observer: true,
        observeParents: true,
        thumbs: {
            swiper: manageSlideNav
        },
        on: {
            slideChange: function () {
                let activeIndex = this.realIndex; // loop 사용 시 realIndex 사용
                let previousIndex = this.previousIndex % 3; // 탭 개수 3개로 나눈 나머지 값
                
                if ((activeIndex + 1) % 3 === (previousIndex + 2) % 3) {
                    // 이전 탭으로 이동한 경우 (loop 고려)
                    resetInnerSlides(2); // 내부 슬라이드 3번으로 이동
                } else {
                    // 다음 탭으로 이동한 경우
                    resetInnerSlides(0); // 내부 슬라이드 1번으로 이동
                }
            }
        }
    });

    function resetInnerSlides(targetIndex) {
        // 내부 슬라이드를 지정된 인덱스로 이동
        document.querySelectorAll('.s-slide').forEach((slide) => {
            let innerSwiper = slide.swiper;
            if (innerSwiper) {
                innerSwiper.slideTo(targetIndex, 0); // 지정된 인덱스로 즉시 이동
            }
        });
    }
}

// 컨텐츠 내부 개별 슬라이드 (입시관리, 학습관리, 생활관리)
function rollSlide(sSlide, paging) {
    var comSlide = new Swiper(sSlide, {
        slidesPerView: 1,
        centeredSlides: false,
        spaceBetween: 10,
        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
        observer: true,
        observeParents: true,
        pagination: {
            el: paging,
            clickable: true, // 페이지네이션 클릭 가능
        },
    });
}


$(document).ready(function () {
    var $highlightTxt = $(".highlight-txt.monthly");
    var $leftRightTxt = $(".left-right-txt");

    $(window).on("scroll", function () {
        var scrollTop = $(window).scrollTop();
        var elementTop = $highlightTxt.offset().top - 200;

        if (scrollTop >= elementTop) {
            if (!$highlightTxt.hasClass("on")) {
                $highlightTxt.addClass("on");

                // 1초 후에 .left-right-txt 자연스럽게 사라지기
                setTimeout(function () {
                    $leftRightTxt.fadeOut(500); // 0.5초(500ms) 동안 페이드아웃
                }, 1000); // 1초(1000ms) 후 실행
            }
        }

    });
});


/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 110;
	var $fix_h = $('.js-fix-menu').height() + 100;
	var $bt_fix = $('.js-fix-menu li');

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
		
		$doc.animate({scrollTop:$contWrap_top - $fix_h}, 800);
	});

	//1번만 실행 변수
	let playStart01 = true;
	let playStart02 = true;

	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		// 각 cont진입 시 클래스 on 추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			
			if(scroll >= $target_top){
				$target.addClass('on').siblings().removeClass('on');
			}

		});

		// fix-menu 탭 영역 진입 시 fix-button 클래스 on 추가
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);

			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}else {

				if ($('.container').hasClass('intro')) {
					$bt_fix.eq(i).removeClass('on')
				}
			}

		});



	});
}


/* 입학준비물 */
function jsPopup(idx){
	var conD01 = $('.js-w-pop .daily_type01');


	//표준일과물
	$(".js-bt-daily01").on("click", function(){
		conD01.addClass("on");
		$(".js-w-pop").css("display","flex");
	})


	//x버튼 누르면 팝업 사라짐
	$(".js-bt-close").on("click",function(){
		$(".js-w-pop div").removeClass("on");
		$(".js-w-pop").css("display","none")
	});

}

































































/* cont02 카운트 */
function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		{
			duration: 1800,
			easing:'linear',
			//4자리 수일때 콤마사용
			step: function() {
			$this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			},
			complete: function() {
			$this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			}
		});
	});
};


/* cont06 교재 슬라이드 */
function bookSlide(){
	var rSwiper = new Swiper('.book-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: false,
		spaceBetween: 30,
		speed: 500,
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.book-slide .swiper-wrapper .swiper-slide').length - 2;
	let bulletWidth = 100 / slideLeng
	$(".book-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	//스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con06 = $(".cont06")
		let con06Top = $(".cont06").offset().top - 150;
		// let highlightTop = $(".highlight-txt.monthly").offset().top - 150;
		let highlightTop = $(".highlight-txt.monthly").offset().top - 250;
		
		if (scroll >= con06Top && scroll <= highlightTop) {
			con06.addClass('on')
			rSwiper.autoplay.start();
		} else {
			con06.removeClass('on')
			rSwiper.autoplay.stop();
		}
	})
}


/* cont05 선생님 슬라이드01 */
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
}

/* cont05 선생님 슬라이드02 */
function teacherSlide(){
	var tSwiper = new Swiper('.teacher-sub-list' ,{
		// allowTouchMove: false,
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		centeredSlidesBounds: true,
		loop:true,
		speed: 2700,
		slidesPerView: 'auto',
		spaceBetween: 15,
	});

}