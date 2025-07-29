$(function() {

	// var $top = $('.half-wrap').offset().top;
	// $('html, body').animate({scrollTop:$top},500);

	//gnb틀고정용
	var $top2 = $(".half-wrap").position().top
	var headerH = $('.headerWrap').outerHeight();
	var headerfix = $('.headerWrap').hasClass('pos-sticky');
	window.onload = function() {
		setTimeout(function(){        
			if(headerfix == true){		
				$("html,body").animate({scrollTop: 0}, 0);	
				$('body, html').animate({scrollTop : 191 }, 500)
			}
			else{                    
				$('body, html').animate({scrollTop : $top2 - headerH/10 }, 500)
			}              
		}, 200);
	}
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"220px"})
	
	fixmenu();
	rollSlide();
	studyHallSlide();
	tSlide();
	stuSlide();
	programSlide();
});

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 80;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top - 102;

		if (i == 0) {
			$('html, body').animate({scrollTop:$cont_top}, 800);
		}else {
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
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
		}else{
			$('.fix-menu').removeClass('fix')
		}

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h -102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		if($('.cont > div').hasClass('cont01')) {

			// cont01에 스크롤시 이벤트 실행
			var cTop = $(".cont01");
			var $ctopScroll  = cTop.offset().top-102;
			var gTop = $(".cont01 .d-start");
			var chartEl = $(".doughnut > div");
			var $gtopScroll  = gTop.offset().top-150;
			if(scroll >= $gtopScroll){
				gTop.addClass("on");
				//도넛차트 on일때 한번만 시작
				if(gTop.hasClass("on") && chartEl.hasClass('chart-area') && start == true) {
					chartDn()
					start = false
				}
			} else {
				gTop.removeClass("on");
				if (chartEl.hasClass('chart-area')) {
					//도넛차트 destroy
					$("#doughnut-chart").remove();
					$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
					start = true
				}
			}
			if(scroll >= $ctopScroll){
				cTop.addClass("on");
			} else {
				cTop.removeClass("on");
			}
		}

	});
}

/* chart */
var start = true; // 도넛차트 한번만 실행

function chartDn() {
	var ctx = document.getElementById("doughnut-chart").getContext('2d');
	gradient = ctx.createLinearGradient(10, 150, 0, 10);

	gradient.addColorStop(0, '#0501AC ');
	gradient.addColorStop(1, '#3B36FF ');

	var myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: ["#ccc", "#fff" , gradient, "#fff"],
					data: [50, 3, 944, 3],
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

// 학생슬라이드
function rollSlide(){
	$(".roll-slide").each(function(i){
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
			speed: 2500,
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

// 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	var slideCont = new Swiper('.studyHall-slide', {
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true,
		on: {
			slideChange:function () {
				$("#doughnut-chart01").remove();
				if (this.realIndex == 1) {
					$('.chart-area01').append('<canvas id="doughnut-chart01"></canvas>');
					chartDn01()
					// 도넛차트
					function chartDn01() {
					
						var ctx01 = document.getElementById("doughnut-chart01").getContext('2d');
						gradient01 = ctx01.createLinearGradient(0, 0, 370, 0);
						// gradient01 = ctx01.createLinearGradient(10, 150, 0, 10);
					
						gradient01.addColorStop(0.2, '#0308ec');
						gradient01.addColorStop(0.8, '#80106B');
						gradient01.addColorStop(1, '#d91100');
					
						var myChart01 = new Chart(ctx01, {
							type: 'doughnut',
							data: {
								datasets: [
									{
										backgroundColor: ["transparent",gradient01],
										data: [43, 944],
										borderWidth: "2",
										cutout: "66.5%",
										borderColor: "transparent",
										borderRadius: "200",
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

	// 바자관 롤링 내 바자관시설보기 팝업
	$('.bt-tt01').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-pop01').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop01 .bt-close').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-pop01').removeClass('on')
		$('.mask-bg').css('display','none')
	})

	// 바자관 롤링 내 바자관시설보기 팝업
	$('.bt-tt02').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-pop02').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop02 .bt-close').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-pop02').removeClass('on')
		$('.mask-bg').css('display','none')
	})
	
	// cont03에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con03 = $(".cont03")
		let con03Top = con03.offset().top-150;
		let con04Top = $(".cont04").offset().top-150;
		
		if (scroll >= con03Top && scroll <= con04Top) {
			con03.addClass('on')
			slideCont.autoplay.start();
		} else {
			con03.removeClass('on')
			slideCont.autoplay.stop();

		}
	})
}

//학생 맞춤 관리
function stuSlide(){
	var stuSlide = new Swiper('.stu-slide', {
		slidesPerView: 3,
		slidesPerGroup : 3,
		spaceBetween: 20,
		loop: true,
		loopAdditionalSlides : 3,
		allowTouchMove: true,
		speed: 3000,
		grabCursor: true,
		autoplay: {
			delay: 1000,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
	});
	// cont06에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con04 = $(".cont04")
		let con04Top = con04.offset().top-150;
		let con05Top = $(".cont05").offset().top-150;
		
		if (scroll >= con04Top && scroll <= con05Top) {
			con04.addClass('on')
			stuSlide.autoplay.start();
		} else {
			con04.removeClass('on')
			stuSlide.autoplay.stop();

		}
	})
}


//강사진
function tSlide(){
	var slideIndex = $(".teacher-swiper .swiper-slide").index()
	
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
	var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide = Math.floor(Math.random() * slideTotal);
	return parseInt(r_slide);
}

//전용 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 3,
		slidesPerGroup : 3,
		spaceBetween: 40,
		loop: true,
		loopAdditionalSlides : 3,
		allowTouchMove: true,
		speed: 3000,
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type01",
			clickable: true
		},
	});
	// cont06에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con06 = $(".cont06")
		let con06Top = con06.offset().top-150;
		let bottomTop = $(".bottom-bar").offset().top-150;
		
		if (scroll >= con06Top && scroll <= bottomTop) {
			con06.addClass('on')
			pSlide.autoplay.start();
		} else {
			con06.removeClass('on')
			pSlide.autoplay.stop();

		}
	})
}
