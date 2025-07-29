$(function(){

	//고정메뉴, 스크롤 이벤트
	fixmenu();

	//cont02 상승 슬라이드
	upSlide();

	//cont03 결과 슬라이드
	resultsSlide();

	//cont04 응원메세지 슬라이드
	cheerSlide();

	//cont05 합격선배 슬라이드
	seniorSlide();
	
	//cont06 승강제도 슬라이드
	cptSlide();

	//cont06 승강제도 디테일 슬라이드
	cptdSlide();
	
	//cont06 그래프파워 슬라이드
	powerSlide();

	//cont07 선생님 슬라이드
	teachSlide();
	
	//cont07 개인후기 슬라이드
	personalSlide();

	// cont08 입시관리 탭슬라이드
	manageSlide();

	// cont08 입시관리 탭슬라이드 내 슬라이드
	rollSlide('.s-slide.type01', '.p-type01');

	//cont08 주변환경 슬라이드
	officeSlide();
	
	//cont09 콘텐츠리스트 슬라이드
	cSlide();

	//cont11 표준일과표 슬라이드
	timeSlide();

	//입학준비물
	jsPopup();
})


/* 데이터 산출 기준 */
$(function(){
	$('.data-txt').on('click',function(){
		$(this).nextAll('.layer-wrap').first().addClass('on');
	});

    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})



/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $fix_top = $('.js-fix-menu').offset().top - 102;
	var $bt_fix = $('.js-fix-menu li');
	var $fix_h = $('.js-fix-menu').height() + 102;

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
		
		$doc.animate({scrollTop:$contWrap_top - $fix_h}, 800);
	});

	//1번만 실행 변수
	// let playStart01 = true;
	// let playStart02 = true;

	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};
		// fix-menu 탭 영역 진입 시 fix-button 클래스 on 추가
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);
			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		// //cont07 화살표 애니메이션 실행
		// var gtop = $('.cont09').offset().top - 120;

		// if(scroll >= gtop && playStart01 == true) {
		// 	$('.arrow-wrap').addClass('on')
		// 	playStart01 = false
		// }

	});
}


/*cont02 상승 슬라이드*/
function upSlide(){
	var rSwiper = new Swiper('.up-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: false,
		spaceBetween: 30,
		speed: 500,
		// autoplay:{
		// 	delay: 3000,
		// 	disableOnInteraction: false,
		// },
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.up-slide .swiper-wrapper .swiper-slide').length - 2;
	let bulletWidth = 100 / slideLeng
	$(".up-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	// //스크롤 떨림 현상 방지
	// $(window).scroll(function(){
	// 	var scroll = $(window).scrollTop();
	// 	let con06 = $(".cont06")
	// 	let con06Top = $(".cont06").offset().top - 150;
	// 	// let highlightTop = $(".highlight-txt.monthly").offset().top - 150;
	// 	let highlightTop = $(".highlight-txt.monthly").offset().top - 250;
		
	// 	if (scroll >= con06Top && scroll <= highlightTop) {
	// 		con06.addClass('on')
	// 		rSwiper.autoplay.start();
	// 	} else {
	// 		con06.removeClass('on')
	// 		rSwiper.autoplay.stop();
	// 	}
	// })
}


/*cont03 결과 슬라이드*/
function resultsSlide() {
    var stuSwiper = new Swiper(".result-slide", {
        loop: true,
        
		// centeredSlides: false,
        // slidesPerView: 1.1,
        centeredSlides: true,
        slidesPerView: 1,

        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
		spaceBetween: 20,
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        pagination: {
            el: ".swiper-pagination.type02",
            clickable: true,
        },

    });

}


/* cont04 응원메세지 슬라이드 */
function cheerSlide() {
	var teacherSwiper = new Swiper('.cheer-rolling',{
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


/* cont05 합격선배 슬라이드 */
function seniorSlide() {
    var stuSwiper = new Swiper(".senior-slide", {
        loop: true,
        
		// centeredSlides: false,
        // slidesPerView: 1.1,
        centeredSlides: true,
        slidesPerView: 1,

        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
		spaceBetween: 20,
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        pagination: {
            el: ".swiper-pagination.type03",
            clickable: true,
        },

    });

}

/* cont06 승강제도 슬라이드 */
function cptSlide() {
    var stuSwiper = new Swiper(".cpt-slide", {
        loop: true,
        
		// centeredSlides: false,
        // slidesPerView: 1.1,
        centeredSlides: true,
        slidesPerView: 1,

        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
		spaceBetween: 20,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination.type04",
            clickable: true,
        },

    });

}

/* cont06 승강제도 디테일 슬라이드 */
function cptdSlide() {
    var stuSwiper = new Swiper(".cptd-slide", {
        loop: true,
        
		// centeredSlides: false,
        // slidesPerView: 1.1,
        centeredSlides: true,
        slidesPerView: 1,

        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
		spaceBetween: 20,
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        pagination: {
            el: ".swiper-pagination.type05",
            clickable: true,
        },

    });

}

/* cont06 그래프파워 슬라이드 */
function powerSlide() {
    var stuSwiper = new Swiper(".power-slide", {
        loop: true,
        
		// centeredSlides: false,
        // slidesPerView: 1.1,
        centeredSlides: true,
        slidesPerView: 1,

        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
		spaceBetween: 20,
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        pagination: {
            el: ".swiper-pagination.type05",
            clickable: true,
        },

    });

}




/* cont07 선생님 슬라이드 */
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

/* cont07 개인후기 슬라이드 */
function personalSlide() {
    var stuSwiper = new Swiper(".personal-slide", {
        loop: true,
        
		// centeredSlides: false,
        // slidesPerView: 1.1,
        centeredSlides: true,
        slidesPerView: 1,

        autoHeight: true,
        speed: 500,
        allowTouchMove: true,
		spaceBetween: 20,
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        pagination: {
            el: ".swiper-pagination.type06",
            clickable: true,
        },

    });

}


/* cont08 입시관리 슬라이드 */
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
        on: {
            slideChange: function () {
                let activeIndex = this.realIndex; // 현재 활성화된 슬라이드 인덱스 가져오기
                let manageSlide = document.querySelector('.manage-slide');
                let activeSlide = this.slides[activeIndex]; // 현재 활성화된 슬라이드

                // 현재 활성화된 슬라이드가 기존에 active-second 클래스를 가지고 있는 경우만 CSS 추가
                if (activeSlide.classList.contains('active-second')) {
                    manageSlide.classList.add('manage-active');
                } else {
                    manageSlide.classList.remove('manage-active');
                }
            }
        }
    });

    return comSlide; // Swiper 인스턴스 반환
}


/* cont08 주변환경 슬라이드 */
function officeSlide() {
	var teacherSwiper = new Swiper('.office-rolling',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 3000,
		slidesPerView: 'auto',
		spaceBetween: 15,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
		observer: true,
		observeParents: true
	});
}


// cont09 콘텐츠리스트 롤링 슬라이드
function cSlide(){
	var ctSwiper = new Swiper('.con-roll',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
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
}

// cont09 모의고사 일정
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


/* cont11 표준 일과표 슬라이드 */
function timeSlide(){
	var tSlide = new Swiper('.time-slide', {
		slidesPerView:1,
		spaceBetween: 10,
		spped: 500,
		// loop: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination:{
			el:".swiper-pagination.time"
		}
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con10 = $(".cont11")
		let con10Top = con10.offset().top-150;
		let conbtmTop = $(".btm-banner").offset().top-150;
		
		if (scroll >= con10Top && scroll <= conbtmTop) {
			con10.addClass('on');
			tSlide.autoplay.start();
		} else {
			con10.removeClass('on');
			tSlide.autoplay.stop();

		}
	});
}


/* 입학준비물 */
function jsPopup(idx){
	var conN = $('.js-w-pop .needs');
	var conD01 = $('.js-w-pop .daily_type01');
	var conD02 = $('.js-w-pop .daily_type02');


	//입학준비물
	$(".js-bt-needs").on("click",function(){
		conN.addClass("on");
		$(".js-w-pop").css("display","flex");
	});

	//표준일과물
	$(".js-bt-daily01").on("click", function(){
		conD01.addClass("on");
		$(".js-w-pop").css("display","flex");
	})

	$(".js-bt-daily02").on("click", function(){
		conD02.addClass("on");
		$(".js-w-pop").css("display","flex");
	})


	//x버튼 누르면 팝업 사라짐
	$(".js-bt-close").on("click",function(){
		$(".js-w-pop div").removeClass("on");
		$(".js-w-pop").css("display","none")
	});

}