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
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"220px"})

	fixmenu();
	

	// cont03 바자관시간표 팝업
	$('.bt-tt01').on('click',function(){
		$('.layer-pop01').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop01 .bt-close').on('click',function(){
		$('.layer-pop01').removeClass('on')
		$('.mask-bg').css('display','none')
	})

	$('.bt-tt02').on('click',function(){
		$('.layer-pop02').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop02 .bt-close').on('click',function(){
		$('.layer-pop02').removeClass('on')
		$('.mask-bg').css('display','none')
	})

	// cont08 슬라이드
	studyHallSlide();

	// cont09 관리 슬라이드
	if ($('.manage-wrap').hasClass('sm')) {
		manageSlide(2);
	} else {
		manageSlide(3);
	}

	// cont05 바자관시설보기 팝업
	$('.bt-tt03').on('click',function(){
		$('.layer-pop03').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop03 .bt-close').on('click',function(){
		$('.layer-pop03').removeClass('on')
		$('.mask-bg').css('display','none');
	})

	// cont06 특별한 이유
	// system();

	// cont07 선생님 슬라이드
	if($('.cont07 div').hasClass('teacher-swiper')){
		tSlide();
	}
	if($('.cont07 div').hasClass('teacher-sub-list')){
		teacherSlide();
	}

	// cont10 바자관 슬라이드
	if ($('.baja-wrap').hasClass('russel_w')) {
		bajaSlide(3);
	} else {
		bajaSlide(4);
	}

	// cont11 콘텐츠 슬라이드
	if($('.cont11').hasClass('russel_sm')){
	}else{
		ctSlide();
	}

});


//count 한번만 실행
let countStart = true
/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();
	var $fix_top = $('.fix-menu').offset().top

	// fixmenu 클릭 시 이동
	$bt_fix.on('click', function (e) {
		e.preventDefault();
		var i = $(this).index();
		var $cont_i = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
		
		// 첫 번째 탭이 아니면 -100
		if (i !== 0) {
			$cont_top -= 100;
		}
	
		// 클릭 시 컨텐츠 위에서 아래로 스크롤 이동
		if ($cont_top > preScrollTop) {
			$('html, body').animate({ scrollTop: $cont_top + $fix_h / 2 }, 800);
		} else {
			// 클릭 시 컨텐츠 아래에서 위로 스크롤 이동
			$('html, body').animate({ scrollTop: $cont_top - $fix_h + 3 }, 800);
		}
	});

	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		// 스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}else if(scroll <= $fix_top - 100){
			$('.fix-menu').removeClass('fix')
		}
		

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 100);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
		//스크롤시 클래스 'on'추가
		var gTop = $(".cont01");
		var $gtopScroll  = gTop.offset().top-300;
		if(scroll >= $gtopScroll ){
			gTop.addClass("on");
		} 

		var gTop02 = $(".cont12");
		var $gtopScroll02  = gTop02.offset().top-300;
		if(scroll >= $gtopScroll02 ){
			gTop02.addClass("on");
		} 

		//.cont09에 스크롤시 count 스타트
		if($(".cont12 *").hasClass("counter")) {
			var gTop03 = $(".cont12");
			var $gtopScroll03  = gTop03.offset().top - 300;
			if(scroll >= $gtopScroll03 && countStart == true){
				gTop03.addClass("on");
				countNum()
				//count 한번만 실행
				countStart = false
			} else {
				//$('.counter').text(0);
			}
		}
		
	});
}


// 폭죽 효과
function firework(canvas, x, y) {
    const ctx = canvas.getContext('2d');
    let particles = [];

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

			const r = 255 - 255 * p.ratio;
			const g = 255 - 255 * p.ratio;
			const b = 255;

			ctx.globalAlpha = p.alpha;
			ctx.fillStyle = `rgb(${r},${g},${b})`;
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



/* cont09 카운트 */
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

// cont03 바자관 슬라이드
function studyHallSlide(){
	let slideSetting, slideAutoplay;

	if ($('.studyHall-navi').hasClass('russel_sm')) {
		// 남기숙 전용
		slideSetting = {
			slidesPerView: 2,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			allowTouchMove: false,
			grabCursor: true,
			loopAdditionalSlides: 4,
		};
		slideAutoplay = {
			delay: 3000,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
			reverseDirection: true // ? 남기숙만 반대 방향
		};
	} else if ($('.studyHall-navi').hasClass('russel_w')) {
		slideSetting = {
			slidesPerView: 3,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			allowTouchMove: false,
			grabCursor: true,
			loopAdditionalSlides: 4,
		};
		slideAutoplay = {
			delay: 3000,
			disableOnInteraction: false,
			pauseOnMouseEnter: true
			// reverseDirection 없이 기본 방향
		};
	} else {
		// 최상위기숙
		slideSetting = {
			slidesPerView: 4,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			allowTouchMove: false,
			grabCursor: true,
			loopAdditionalSlides: 4,
		};
		slideAutoplay = {
			delay: 3000,
			disableOnInteraction: false,
			pauseOnMouseEnter: true
		};
	}

	const stuSlideNav = new Swiper('.studyHall-navi', slideSetting);

	const slideCont = new Swiper('.studyHall-slide', {
		autoplay: slideAutoplay,
		loop: true,
		speed: 2000,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 80,
		freeMode: {
			enabled: true,
			momentumBounce: false
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true,
		allowTouchMove: true,
	});

	$('.studyHall-slide').on('mouseenter', function () {
		slideCont.autoplay.stop();
	}).on('mouseleave', function () {
		slideCont.autoplay.start(); 
	});

	$(window).scroll(function(){
		const scroll02 = $(window).scrollTop();
		const cont08Top = $(".cont08").offset().top;
		const cont09Top = $(".cont09").offset().top;
		if (scroll02 >= cont08Top && scroll02 <= cont09Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();
		}
	});
}


// cont04 관리 슬라이드
function manageSlide(navView02){
	var manageSlideNav = new Swiper('.manage-navi', {
		slidesPerView: navView02,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		grabCursor: true,
	});	

	var mSlideCont = new Swiper('.manage-slide', {
		loop: true,
		autoHeight: true,
		speed : 2000,
		allowTouchMove: true,
		grabCursor: true,
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: manageSlideNav
		},
		observer: true,
		observeParents: true,
		on: {
            slideChange: function () {
                // 현재 활성화된 슬라이드의 인덱스 가져오기 (loop 모드 주의)
                let activeIndex = this.realIndex; // Swiper는 loop 모드에서 가상 인덱스를 사용

                let secondNavSlide = document.querySelector('.manage-navi .swiper-slide:nth-child(2)');

                if (activeIndex === 2) { // 3번째 슬라이드 (0부터 시작하므로 2)
                    secondNavSlide.classList.add('dg-bg');
                } else {
                    secondNavSlide.classList.remove('dg-bg');
                }
            }
		}
	});

	$('.manage-slide').on('mouseenter', function () {
        mSlideCont.autoplay.stop();
    }).on('mouseleave', function () {
        mSlideCont.autoplay.start(); 
    });
	
    //  스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll02 = $(window).scrollTop();
		
		// .cont06 도달하면 실행
		let cont09Top = $(".cont09").offset().top;
		let cont10Top = $(".cont10").offset().top;

		if (scroll02 >= cont09Top && scroll02 <= cont10Top) {
			mSlideCont.autoplay.start();
		} else {
			mSlideCont.autoplay.stop();
		}
	});
}

// cont05 바자관 슬라이드
function bajaSlide(navView03){
	var bajaSlideNav = new Swiper('.baja-navi', {
		slidesPerView: navView03,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		grabCursor: true,
	});	

	var bjSlideCont = new Swiper('.baja-slide', {
		loop: true,
		// autoHeight: true,
		speed : 2000,
		spaceBetween: 20,
		allowTouchMove: true,
		grabCursor: true,
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: bajaSlideNav
		},
		observer: true,
		observeParents: true,
		on: {
            slideChange: function () {
                // 현재 활성화된 슬라이드의 인덱스 가져오기 (loop 모드 주의)
                let activeIndex = this.realIndex; // Swiper는 loop 모드에서 가상 인덱스를 사용

                let secondNavSlide = document.querySelector('.baja-navi .swiper-slide:nth-child(2)');

                if (activeIndex === 2) { // 3번째 슬라이드 (0부터 시작하므로 2)
                    secondNavSlide.classList.add('dg-bg02');
                } else {
                    secondNavSlide.classList.remove('dg-bg02');
                }
            }
		}
	});

	$('.baja-slide').on('mouseenter', function () {
        bjSlideCont.autoplay.stop();
    }).on('mouseleave', function () {
        bjSlideCont.autoplay.start(); 
    });

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll02 = $(window).scrollTop();
		
		// .cont06 도달하면 실행
		let cont10Top = $(".cont10").offset().top;
		let cont11Top = $(".cont11").offset().top;

		if (scroll02 >= cont10Top && scroll02 <= cont11Top) {
			bjSlideCont.autoplay.start();
		} else {
			bjSlideCont.autoplay.stop();
		}
	});
}

// cont06 최적화된 시스템
function system(){
	var idx = 1;
	setInterval(sysSlide, 3000);
	function sysSlide(){
		var sys_img = $('.sys-img li')
		sys_img.removeClass('on')
		sys_img.eq(idx).addClass('on')

		idx++;
		
		if(idx >= sys_img.length){
			idx = 0
		return idx;
		}
	}
}

// cont07 선생님 슬라이드
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

    $('.teacher-swiper').hover(
		function(){
			tSwiper.autoplay.stop();
    },
		function(){
			tSwiper.autoplay.start();
		}
	);
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

    $('.teacher-sub-list').hover(
		function(){
			tSwiper.autoplay.stop();
    },
		function(){
			tSwiper.autoplay.start();
		}
	);
}

//슬라이드 랜덤
function randomIdx02()  {
	var slideTotal02 = $('.teacher-sub-list .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide02 = Math.floor(Math.random() * slideTotal02);
	return parseInt(r_slide02);
}

// cont08 전용 학습 콘텐츠 슬라이드
function ctSlide(){
	var ctSlideNav = new Swiper('.ct-navi', {
		slidesPerView: 5,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		grabCursor: true,
	});	

	var ctSlideCont = new Swiper('.ct-slide', {
		loop: true,
		autoHeight: true,
		speed : 2000,
		spaceBetween: 20,
		allowTouchMove: true,
		grabCursor: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: ctSlideNav
		},
		observer: true,
		observeParents: true,
	});

	$('.ct-slide').on('mouseenter', function () {
        ctSlideCont.autoplay.stop();
    }).on('mouseleave', function () {
        ctSlideCont.autoplay.start(); 
    });

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll02 = $(window).scrollTop();
		
		// .cont08 도달하면 실행
		let cont11Top = $(".cont11").offset().top;
		let cont12Top = $(".cont12").offset().top;

		if (scroll02 >= cont11Top && scroll02 <= cont12Top) {
			ctSlideCont.autoplay.start();
		} else {
			ctSlideCont.autoplay.stop();
		}
	});
}

