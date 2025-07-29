$(function(){
	//고정메뉴, 스크롤 이벤트
	fixmenu();

	// cont03 후기영역 슬라이드
	reviewSlide();

	// cont05 바자관 탭슬라이드
	studyHallSlide();

	// cont08 관리 탭슬라이드, 이미지롤링
	manageSlide();
	imgSlide();

	//cont05 선생님 롤링 슬라이드
	if ($('.cont05 .teacher-wrap div').hasClass('teacher-rolling')) {
		teachSlide();
	}

	if ($('.cont05 .teacher-wrap div').hasClass('teacher-sub-list')) {
		teacherSlide();
	}	
	// teachSlide();

	//cont09 프로그램 슬라이드
	programSlide();
	scrollSlide();
	subSlide('.sub-slide.type01', '.swiper-pagination.page01');
	subSlide('.sub-slide.type02', '.swiper-pagination.page02');
	subSlide('.sub-slide.type03', '.swiper-pagination.page03');

	// cont10
	contSlide();
	// cont10 탭메뉴
	tabMenu('.w-tab-btn', '.w-tab-con')
})


//데이터 산출 기준
$(function(){
    $('.data-txt').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

// 고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	// var $cont = $('.js-cont');
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

	//count 한번만 실행
	let countStart = true
	let isScroll = true
	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};
		if ($('.js-cont-wrap').hasClass('russel_us')){
			//.cont02에 스크롤시 count 스타트
			var $gTop = $('.cont01');
			var $gtopScroll  = $gTop.offset().top-80;
			if(scroll >= $gtopScroll && countStart == true){
				$gTop.addClass('on');
				countNum();
				//count 한번만 실행
				countStart = false
			} else {
				$gTop.removeClass('on');
			}
		}
		

		// fix-menu 탭 영역 진입 시 fix-button 클래스 on 추가
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);
			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

	});
}

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

// cont02 학생리뷰 슬라이드
function reviewSlide(){
	var rSlide = new Swiper('.review-slide', {
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
			el: ".swiper-pagination.type01",
			clickable: true
		},
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.review-slide .swiper-wrapper .swiper-slide').length - 2;
	let bulletWidth = 100 / slideLeng
	$(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont02Top = $(".cont02").offset().top-150;
		let con03Top = $(".cont03").offset().top-150;
		
		if (scroll >= cont02Top && scroll <= con03Top) {
			rSlide.autoplay.start();
		} else {
			rSlide.autoplay.stop();

		}
	})
}

// cont05 선생님 롤링 슬라이드
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

// cont05 선생님 롤링 슬라이드02
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

// cont07 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.navi-studyHall', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	


	// 코어 일때
	var slideSetting = {
		slidesPerView : "4",
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	}
	if ($('.navi-studyHall').hasClass('core')) {
		var stuSlideNav = new Swiper('.navi-studyHall', slideSetting)
	}

	var slideCont = new Swiper('.studyHall-slide', {
		spaceBetween: 5,
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true
	});
	
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont07Top = $(".cont07").offset().top-150;
		let cont08Top = $(".cont08").offset().top-150;
		
		if (scroll >= cont07Top && scroll <= cont08Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();

		}
	})

	// 바자관 롤링 내 바자관시설보기 팝업
	$('.bt-tt').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-tt').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-tt .bt-close-tt').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}

// cont08 이미지 롤링
function imgSlide(){
	var rollingSwiper = new Swiper('.img-rolling',{
		autoplay: {
			delay: 0,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		allowTouchMove: false,
		speed: 3000,
		slidesPerView: 'auto',
		spaceBetween: 10,
		observer: true,
		observeParents: true
	});
}

// cont08 관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.navi-manage', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		spaceBetween: 1
	});	
	var manageCont = new Swiper('.manage-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		// spaceBetween: 10,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: manageSlideNav
		}
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con06Top = $(".cont06").offset().top-150;
		let con07Top = $(".cont07").offset().top-150;
		
		if (scroll >= con06Top && scroll <= con07Top) {
			manageCont.autoplay.start();
		} else {
			manageCont.autoplay.stop();
		}
	})
}

// cont09 학습 콘텐츠 슬라이드
function programSlide(){
	var programSlideNav = new Swiper('.navi-program', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	// 코어광주 일때
	var slideSetting02 = {
		slidesPerView : "3",
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	}
	if ($('.navi-program').hasClass('core_gj')) {
		var programSlideNav = new Swiper('.navi-program', slideSetting02)
	}

	var programCont = new Swiper('.program-slide', {
		slidesPerView: "auto",
		centeredSlides: true,
		speed : 500,
		allowTouchMove: false,
		observer: true,
		observeParents: true,
		thumbs: {
			swiper: programSlideNav
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
	})

	// 스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con08Top = $(".cont08").offset().top-150;
	// 	let con09Top = $(".cont09").offset().top-150;
		
	// 	if (scroll >= con08Top && scroll <= con09Top) {
	// 		programCont.autoplay.start();
	// 	} else {
	// 		programCont.autoplay.stop();

	// 	}
	// })

	// 바자관 롤링 내 표준시간표 팝업 
	$('.schedule_link').on('click',function(){
		$('.layer-tt02').addClass('on')
		$('.mask-bg.type02').css('display','block')
	});
	$('.layer-tt02 .bt-close-tt').on('click',function(){
		$('.layer-tt02').removeClass('on')
		$('.mask-bg.type02').css('display','none')
	});
}

// cont09 프로그램 서브 슬라이드
function subSlide(sbSlide, pagging){
	var comSlide = new Swiper(sbSlide, {
		loop : false,
		loopAdditionalSlides: 1, 
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 10, 
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		observer: true,
		observeParents: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: pagging,
		},
	});
}

// cont09 스케줄러 슬라이드
function scrollSlide(){
	var scSlide = new Swiper('.scroll-slide', {
		slidesPerView: "auto",
		spaceBetween: 43,
		centeredSlides: true,
		centeredSlidesBounds: true,
		loop : false,
		loopAdditionalSlides: 1, 
		speed : 500, 
		allowTouchMove : true,
		observer: true,
		observeParents: true, 
		pagination: {
			el: ".swiper-pagination.type03",
			clickable: true
		}
	});
}


// cont10 학생후기 슬라이드
function contSlide() {
	var conSwiper = new Swiper('.cont-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 20,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		observer: true,
		observeParents: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type02",
			clickable: true
		}
	});
	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con10Top = $(".cont10").offset().top-150;
		let bottomTop = $(".bottom-bar").offset().top-150;
		
		if (scroll >= con10Top && scroll <= bottomTop) {
			conSwiper.autoplay.start();
		} else {
			conSwiper.autoplay.stop();

		}
	})
}

/* ========== SNOW effect ========== */
var c = document.getElementById('canv'), 
    $w = c.getContext("2d");
var w = c.width = window.innerWidth, 
    h = c.height = 970; // 세로 길이

Snowy();
function Snowy() {
	var snow, arr = [];
	var num = 100, tsc = 1, sp = 0.1;
	var sc = 2, t = 0, mv = 20, min = 1;
		for (var i = 0; i < num; ++i) {
		snow = new Flake();
		snow.y = Math.random() * (h + 50);
		snow.x = Math.random() * w;
		snow.t = Math.random() * (Math.PI * 2);
		snow.sz = (100 / (10 + (Math.random() * 100))) * sc;
		snow.sp = (Math.pow(snow.sz * .8, 2) * .15) * sp;
		snow.sp = snow.sp < min ? min : snow.sp;
		arr.push(snow);
	}
	go();
function go(){
    window.requestAnimationFrame(go);
		$w.clearRect(0, 0, w, h);
		$w.fillStyle = 'transparent';
		$w.fillRect(0, 0, w, h);
		$w.fill();
			for (var i = 0; i < arr.length; ++i) {
			f = arr[i];
			f.t += .05;
			f.t = f.t >= Math.PI * 2 ? 0 : f.t;
			f.y += f.sp;
			f.x += Math.sin(f.t * tsc) * (f.sz * .1);
			if (f.y > h + 50) f.y = -10 - Math.random() * mv;
			if (f.x > w + mv) f.x = - mv;
			if (f.x < - mv) f.x = w + mv;
			f.draw();}
	}
	function Flake() {
	this.draw = function() {
		this.g = $w.createRadialGradient(this.x, this.y, 0, this.x, this.y, this.sz);
		this.g.addColorStop(0, 'hsla(255,255%,255%,1)');
		this.g.addColorStop(1, 'hsla(255,255%,255%,0)');
		$w.moveTo(this.x, this.y);
		$w.fillStyle = this.g;
		$w.beginPath();
		$w.arc(this.x, this.y, this.sz, 0, Math.PI * 2, true);
		$w.fill();}
	}
}
/*________________________________________*/
window.addEventListener('resize', function(){
	c.width = w = window.innerWidth;
	c.height = h = 970;
}, false);
/* ========== //SNOW effect ========== */