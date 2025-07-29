$(function(){
	fixmenu();
	
	// cont02 대입 카운트
	dDay();
	chanceSlide();
	
	
	// cont03
	programSlide();
	proSlide('.pro-slide.pro01','.swiper-pagination.pro01');
	proSlide('.pro-slide.pro02','.swiper-pagination.pro02');

	// cont05 탭슬라이드
	initTabSlide("type01", 3);
	
	// cont06 바자관슬라이드
	if ($('.t-wrap.type02').hasClass('core')) {
		conSlide(4);
	} else {
		conSlide(3);
	}

	// cont03 표준시간표 팝업 
	$('.sch-btn').on('click',function(){
		$('.layer-tt').addClass('on')
		$('.mask-bg').css('display','block')
	});
	$('.layer-tt .bt-close-tt').on('click',function(){
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	});
	
	// 강사진 롤링 슬라이드
	if($('.cont03 .teacher-wrap div').hasClass('teacher-rolling')) {
		teachSlide();
	}else if($('.cont03 .teacher-wrap div').hasClass('teacher-sub-list')){
		teacherSlide();
	};
	
})

// 상단 고정 메뉴
function fixmenu() {
    const $fixMenuItems = $('.fix-menu li');
    const $sections = $('.js-cont-wrap');
    const $fixWrap = $('.fix-wrap');
    const $fixMenu = $('.fix-menu');
    const fixMenuHeight = $fixMenu.outerHeight();

    let isScrolling = false;

	//1번만 실행 변수
	let playStart01 = true;
    // fix-wrap 기준으로 fix 클래스 붙이기 + on 클래스
    $(window).on('scroll', function () {
        if (isScrolling) return; // 클릭 시 애니메이션 중이면 생략

        const scrollTop = $(window).scrollTop();
        const fixWrapTop = $fixWrap.offset().top - 102;

        // fix 고정
        if (scrollTop >= fixWrapTop) {
            $fixMenu.addClass('fix');
        } else {
            $fixMenu.removeClass('fix');
        }

        // 스크롤 도달 시 각 탭에 on 클래스 추가
        $sections.each(function (index) {
            const $section = $(this);
            const sectionTop = $section.offset().top - fixMenuHeight - 102;
            const sectionBottom = sectionTop + $section.outerHeight();

            if (scrollTop >= sectionTop && scrollTop < sectionBottom) {
                $fixMenuItems.removeClass('on');
                $fixMenuItems.eq(index).addClass('on');
                return false;
            }
        });
		
		// cont09 입결 애니메이션 1회
		if($('.cont01 .inner ul').hasClass('achieve-box')) {

			if(scrollTop >= $('.cont01').offset().top - 150 && playStart01 == true){
				countNum();
				playStart01 = false
			}
		}
    });

    // 클릭 시 스크롤 + on 클래스 직접 부여
    $fixMenuItems.on('click', function () {
        const index = $(this).index();
        const targetTop = $sections.eq(index).offset().top - fixMenuHeight - 100;

        isScrolling = true;
        $fixMenuItems.removeClass('on');
        $(this).addClass('on'); // 직접 부여

        $('html, body').animate(
            { scrollTop: targetTop },
            400,
            function () {
                isScrolling = false; // 애니메이션 끝나면 스크롤 이벤트 정상 작동
            }
        );
    });
}

/*데이터 산출 기준 */
$(function(){
    $('.data-txt').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})


/* cont01 카운트 */
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

/* cont02 대입카운트 */
function dDay() {
    var dday = new Date("Nov 14, 2025 00:00:00").getTime(); // 디데이 설정

    // URL 파라미터에서 now 값을 읽어오기
    var urlParams = new URLSearchParams(window.location.search);
    var nowParam = urlParams.get("now");
    var now;

    if (nowParam && /^\d{12}$/.test(nowParam)) {
        // YYYYMMDDHHMM 형식일 경우 파싱
        var year = parseInt(nowParam.substring(0, 4), 10);
        var month = parseInt(nowParam.substring(4, 6), 10) - 1; // 0부터 시작
        var day = parseInt(nowParam.substring(6, 8), 10);
        var hour = parseInt(nowParam.substring(8, 10), 10);
        var minute = parseInt(nowParam.substring(10, 12), 10);
        now = new Date(year, month, day, hour, minute, 0);
    }

    setInterval(function () {
        var current = now ? new Date(now.getTime() + (Date.now() - startTime)) : new Date();
        var distance = dday - current;
        var d = Math.floor(distance / (1000 * 60 * 60 * 24));
        $('.dday').html('D-' + d);
    }, 1000);

    var startTime = Date.now(); // 기준 시간 저장 (애니메이션용)
}

/* cont02 슬라이드 */
function chanceSlide(){
	var chanSweiper = new Swiper('.chance-slide', {
		slidesPerView: 'auto',
        loop: true,
        allowTouchMove: true,
        autoHeight: true,
        spaceBetween: 20,
		centeredSlides: true,
		centeredSlidesBounds: true,
        speed: 500,
        pagination: {
            el: ".swiper-pagination.chance",
            clickable: true,
        },
	});
}

/* tab-slide */
function initTabSlide(type, navView) {
	const tabSlideNav = new Swiper(`.${type} .tab-navi`, {
		slidesPerView: navView,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove: false,
	});

	const slideCont = new Swiper(`.${type} .tab-slide`, {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 10,
		autoHeight: true,
		speed: 500,
		allowTouchMove: true,
		thumbs: {
			swiper: tabSlideNav
		},
		observer: true,
		observeParents: true,
	});
}

function programSlide(){
	var programNav = new Swiper('.program-navi', {
		slidesPerView: 2,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});

	var programCont = new Swiper('.program-slide', {
		slidesPerView: "auto",
		centeredSlides: true,
		// loop: false,
		// loopAdditionalSlides: 1,
		speed : 500,
		allowTouchMove: false,
		observer: true,
		observeParents: true,
		thumbs: {
			swiper: programNav
		},
		on: {
			beforeTransitionStart: function (){
				setTimeout(function() {
					$('.program-slide > .swiper-wrapper > .swiper-slide .program-wrap').css('display','none')
					$('.program-slide > .swiper-wrapper > .swiper-slide-active .program-wrap').css('display','block')
				},500)
				setTimeout(function() {
					$('.program-slide > .swiper-wrapper > .swiper-slide-active .program-wrap').css('display','block')
				},50)
			}
		}
	});	
}

function proSlide(slide, pagging){
	var pSlide = new Swiper(slide,{
		loop:true,
		speed: 500,
		spaceBetween: 10,
		autoHeight:true,
		observer: true,
		observeParents: true,
		pagination: {
			el: pagging,
			clickable: true
		},
	});
}

/* cont04 선생님 슬라이드01 */
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

/* cont07 선생님 슬라이드02 */
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

// cont08 콘텐츠 슬라이드
function conSlide(navView) {
	const tabSlideNav02 = new Swiper(`.type02 .tab-navi`, {
		slidesPerView: navView,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove: false,
		// spaceBetween: 5,
	});

	const slideCont02 = new Swiper(`.type02 .tab-slide`, {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 10,
		autoHeight: true,
		speed: 500,
		allowTouchMove: true,
		thumbs: {
			swiper: tabSlideNav02
		},
		observer: true,
		observeParents: true
	});

    // $('.con-slide').each(function (i, el) {
    //     const $slide = $(el);
    //     const slideCount = $slide.find('.swiper-slide').length;

    //     // 슬라이드가 2개 미만이면 Swiper 초기화 생략
    //     if (slideCount < 2) return;

    //     const $pagination = $slide.find('.swiper-pagination').eq(0);

    //     new Swiper(el, {
    //         spaceBetween: 10,
    //         speed: 500,
    //         autoHeight: true,
    //         allowTouchMove: true,
    //         observer: true,
    //         observeParents: true,
    //         pagination: {
    //             el: $pagination[0],
    //             clickable: true
    //         },
	// 		 on: {
	// 			slideChangeTransitionEnd: function () {
	// 				slideCont02.updateAutoHeight();
	// 			},
	// 			imagesReady: function () {
	// 				slideCont02.updateAutoHeight();
	// 			}
	// 		}
    //     });
    // });
}