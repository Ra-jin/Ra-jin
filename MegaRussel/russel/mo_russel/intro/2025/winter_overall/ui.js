$(function(){
	fixmenu();

	// cont01 말풍선 슬라이드
	bubbleSlide()
		
	// 탭슬라이드
	if ($('.t-wrap.type01').hasClass('core')) {
		initTabSlide("type01", 4);
	} else {
		initTabSlide("type01", 3);
	}

	initTabSlide("type02", 3);

	initTabSlide("type03", 5);
	
	// 표준시간표 팝업 
	$('.sch-btn').on('click',function(){
		$('.layer-tt').addClass('on')
		$('.mask-bg').css('display','block')
	});
	$('.layer-tt .bt-close-tt').on('click',function(){
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	});

	
	// 강사진 롤링 슬라이드
	if($('.cont04 .teacher-wrap div').hasClass('teacher-rolling')) {
		teachSlide();
	}else if($('.cont04 .teacher-wrap div').hasClass('teacher-sub-list')){
		teacherSlide();
	};

	// cont09 탭메뉴
	tabMenu('.t-wrap02 .tab-menu','.t-wrap02 .tab-con') 

	// cont09 콘텐츠 슬라이드
	conSlide(4) 
})

// 상단 고정 메뉴
function fixmenu() {
    const $fixMenuItems = $('.fix-menu li');
    const $sections = $('.js-cont-wrap');
    const $fixWrap = $('.fix-wrap');
    const $fixMenu = $('.fix-menu');
    const fixMenuHeight = $fixMenu.outerHeight();

    let isScrolling = false;

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

// cont01 말풍선 슬라이드
function bubbleSlide(){
	var bSlide = new Swiper('.bubble-slide', {
		spaceBetween: 10,
		loop : true,
		speed : 500, 
		allowTouchMove : true,
		observer: true,
		observeParents: true, 
		pagination: {
			el: ".swiper-pagination.type01",
			clickable: true
		}
	});
	
	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.bubble-slide .swiper-wrapper .swiper-slide').length - 2;
	let bulletWidth = 100 / slideLeng
	$(".bubble-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")
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
		observeParents: true
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

/* cont04 선생님 슬라이드02 */
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

// cont09 콘텐츠 슬라이드
function conSlide(navView) {
	const tabSlideNav02 = new Swiper(`.type04 .tab-navi`, {
		slidesPerView: navView,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove: false,
	});

	const slideCont02 = new Swiper(`.type04 .tab-slide`, {
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

    $('.con-slide').each(function (i, el) {
        const $slide = $(el);
        const slideCount = $slide.find('.swiper-slide').length;

        // 슬라이드가 2개 미만이면 Swiper 초기화 생략
        if (slideCount < 2) return;

        const $pagination = $slide.find('.swiper-pagination').eq(0);

        new Swiper(el, {
            spaceBetween: 10,
            speed: 500,
            autoHeight: true,
            allowTouchMove: true,
            observer: true,
            observeParents: true,
            pagination: {
                el: $pagination[0],
                clickable: true
            },
			 on: {
				slideChangeTransitionEnd: function () {
					slideCont02.updateAutoHeight();
				},
				imagesReady: function () {
					slideCont02.updateAutoHeight();
				}
			}
        });
    });
}

// 폭죽 효과
function firework(canvas, x, y) {
	const ctx = canvas.getContext('2d');
	let particles = [];

	// 시작 색상: rgb(104, 14, 255)
	const startColor = { r: 104, g: 14, b: 255 };
	const endColor = { r: 255, g: 255, b: 255 };

	for (let i = 0; i < 40; i++) {
		const angle = Math.random() * Math.PI * 2;
		const speed = Math.random() * 2 + 1;
		particles.push({
			x, y,
			vx: Math.cos(angle) * speed,
			vy: Math.sin(angle) * speed,
			alpha: 1,
			ratio: i / 40
		});
	}

	function draw() {
		ctx.clearRect(0, 0, canvas.width, canvas.height);
		particles = particles.filter(p => p.alpha > 0);
		for (let p of particles) {
			p.x += p.vx;
			p.y += p.vy;
			p.alpha -= 0.02;

			// 비율에 따라 색상 보간
			const progress = 1 - p.alpha; // 시간 흐름에 따라 밝아짐
			const r = startColor.r + (endColor.r - startColor.r) * progress;
			const g = startColor.g + (endColor.g - startColor.g) * progress;
			const b = startColor.b + (endColor.b - startColor.b) * progress;

			ctx.globalAlpha = p.alpha;
			ctx.fillStyle = `rgb(${r.toFixed(0)},${g.toFixed(0)},${b.toFixed(0)})`;
			ctx.beginPath();
			ctx.arc(p.x, p.y, 2, 0, Math.PI * 2);
			ctx.fill();
		}
		ctx.globalAlpha = 1;
		if (particles.length) requestAnimationFrame(draw);
	}
	draw();
}

  window.addEventListener('DOMContentLoaded', () => {
	setTimeout(() => {
	  firework(document.getElementById('fireworkCanvas'), 75, 75);
	  setTimeout(() => {
		firework(document.getElementById('fireworkCanvas02'), 30, 43);
	  }, 300);
	}, 2000);
  });
