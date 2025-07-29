$(function(){
	//고정메뉴, 스크롤 이벤트
	fixmenu();

	// cont00
	tabMenu('.btn-tab','.contents-box');

	// cont01 상승리뷰 슬라이드
	reviewSlide();
	
	// cont01 업그레이드 슬라이드
	if ($('.cont01 div').hasClass('upgrade-slide')) {
		upgradeSlide();
	}

	// cont03 선생님 롤링 슬라이드
	if ($('.cont03 div').hasClass('teacher-rolling')) {
		teachSlide()
	}
	if ($('.cont03 div').hasClass('teacher-sub-list')) {
		teacherSlide()
	}	
	
	// cont04 자습시간 슬라이드
	if ($('.cont04 div').hasClass('time-slide')) {
	timeSlide();
	}	

	// cont06 관리 탭슬라이드
	manageSlide();

	// cont06 이미지 롤링
	imgSlide()

	// cont06 학생후기 슬라이드
	stuSlide01()

	// cont07 바자관 탭슬라이드
	studyHallSlide();

	// cont07 학생후기 슬라이드
	stuSlide02()
	
	// cont08 학습 콘텐츠 슬라이드
	programSlide();

	// cont08 학생후기 슬라이드
	stuSlide03()

	// tabMenu('.tab-wrap','.tab-cont');
})


//데이터 산출 기준
// $(function(){
//     $('.gr-data').on('click',function(){
//         $(this).parent().next('.layer-wrap').addClass('on');
//     });
//     $('.js-close-mask a').on('click',function(){
//         $('.layer-wrap').removeClass('on');
//     });
// })

//학원 데이터 산출 기준
// $(function(){
//     $('.info-stxt').on('click',function(){
//         $('.data-view').toggle();
//     });

// })


// 고정메뉴, 스크롤 이벤트
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

	});
}

// cont01 상승리뷰 슬라이드
function reviewSlide(){
	if ($(".review-slide .swiper-wrapper .swiper-slide").length == 1) {
		// slide 1개 일 경우
		var rSlide = new Swiper('.review-slide', {
			slidesPerView: 1,
			spaceBetween: 26,
			allowTouchMove: false,
		});
	} else {
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
	}

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.review-slide .swiper-wrapper .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")


	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont01Top = $(".cont01").offset().top-150;
		let con02Top = $(".cont02").offset().top-150;
		
		if (scroll >= cont01Top && scroll <= con02Top) {
			rSlide.autoplay.start();
		} else {
			rSlide.autoplay.stop();

		}
	})
}

// cont01 업그레이드 슬라이드
function upgradeSlide(){
	var upSlide = new Swiper('.upgrade-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: true,
		spaceBetween: 26,
		speed: 300,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type02",
			clickable: true
		},
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.upgrade-slide .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".upgrade-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")


	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont01Top = $(".cont01").offset().top-150;
		let con02Top = $(".cont02").offset().top-150;
		
		if (scroll >= cont01Top && scroll <= con02Top) {
			upSlide.autoplay.start();
		} else {
			upSlide.autoplay.stop();

		}
	})
}
// cont04 자습시간 슬라이드
function timeSlide(){

	var timeSwiper = new Swiper('.time-slide', {
		//loop: true,
		//loopAdditionalSlides : 3,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type03",
			clickable: true
		},
		on: {
			slideChange:function () {
				$("#doughnut-chart01").remove();
				if (this.realIndex == 1) {
					$('.chart-area01').append('<canvas id="doughnut-chart01"></canvas>');

					chartDn01()
					// 도넛차트
					function chartDn01() {
					
						var ctx = document.getElementById("doughnut-chart01").getContext('2d');;
						gradient = ctx.createLinearGradient(10, 150, 0, 10);
					
						gradient.addColorStop(0, '#B30303');
						gradient.addColorStop(1, '#CF0E0E');
					
						var myChart = new Chart(ctx, {
							type: 'doughnut',
							data: {
								datasets: [
									{
										backgroundColor: ["#717171", "#fff" , gradient, "#fff"],
										data: [170, 3, 824, 3],
										borderWidth: "2",
										cutout: "58%",
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
				}
			},
		}
	});
	
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont04Top = $(".cont04").offset().top-150;
		let cont05Top = $(".cont05").offset().top-150;
		
		if (scroll >= cont04Top && scroll <= cont05Top) {
			timeSwiper.autoplay.start();
		} else {
			timeSwiper.autoplay.stop();

		}
	})
}

// cont04 관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
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
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		spaceBetween: 1,
		thumbs: {
			swiper: manageSlideNav
		},
		pagination: {
			el: ".swiper-pagination.type04",
			clickable: true
		}
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.manage-slide .swiper-slide').length / 3
	let bulletWidth = 100 / slideLeng
	$(".manage-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

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

// cont05 선생님 롤링 슬라이드
function teachSlide() {
	var teacherSwiper = new Swiper('.teacher-rolling',{
		slidesPerView: '3',
		allowTouchMove: false,
		spaceBetween: 20,
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

// cont06 이미지 롤링
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

// cont06 학생후기 슬라이드
function stuSlide01() {
	
	var stuSwiper = new Swiper('.stu-r-slide.type01', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type03",
			clickable: true
		}
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con06Top = $(".cont06").offset().top-150;
		let con07Top = $(".cont07").offset().top-150;
		
		if (scroll >= con06Top && scroll <= con07Top) {
			stuSwiper.autoplay.start();
		} else {
			stuSwiper.autoplay.stop();

		}
	})
}


// cont07 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
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
	if ($('.studyHall-navi').hasClass('core')) {
		var stuSlideNav = new Swiper('.studyHall-navi', slideSetting)
	}

	var slideCont = new Swiper('.studyHall-slide', {
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
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
}

// cont07 학생후기 슬라이드
function stuSlide02() {
	
	var stuSwiper02 = new Swiper('.stu-r-slide.type02', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type05",
			clickable: true
		}
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con07Top = $(".cont07").offset().top-150;
		let con08Top = $(".cont08").offset().top-150;
		
		if (scroll >= con07Top && scroll <= con08Top) {
			stuSwiper02.autoplay.start();
		} else {
			stuSwiper02.autoplay.stop();

		}
	})
}
// cont08 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		spaceBetween: 26,
		speed: 2000,
		autoplay:{
			delay: 2000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type06",
			clickable: true
		},
	});
	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.program-slide .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".program-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")
}

// cont08 학생후기 슬라이드
function stuSlide03() {
	
	var stuSwiper03 = new Swiper('.stu-r-slide.type03', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type07",
			clickable: true
		}
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con08Top = $(".cont08").offset().top-150;
		let bottomTop = $(".bottom-bar").offset().top-150;
		
		if (scroll >= con08Top && scroll <= bottomTop) {
			stuSwiper03.autoplay.start();
		} else {
			stuSwiper03.autoplay.stop();

		}
	})
}

