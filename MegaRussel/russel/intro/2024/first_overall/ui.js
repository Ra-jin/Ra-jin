$(function() {
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

		////스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);

	//탭1의 padding-top설정
	if ($(".js-cont").eq(0).hasClass('russel_sm')) {
		$(".js-cont").eq(0).children().eq(0).css({"padding-top":"225px"})
	} else {
		$(".js-cont").eq(0).children().eq(0).css({"padding-top":"245px"})
	}

	fixmenu();
	studySlide();
	tabSlide();
	studyHallSlide()
	tabMenu('.bt-tab','.cont-box')
	tabMenu('.bt-tab02','.cont-box02')
});

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 160;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top - 102;

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
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
		if($('.cont > div').hasClass('cont01-2')) {

			// cont01-2에 스크롤시 이벤트 실행
			var cTop = $(".cont01-2");
			var $ctopScroll  = cTop.offset().top-150;
			var gTop = $(".cont01-2 .d-start");
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
			if(scroll >= $ctopScroll) {
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

	gradient.addColorStop(0, '#035DD0');
	gradient.addColorStop(1, '#087EEA');

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

	// 도넛차트 데이터값 변경
	// let russelMc = document.querySelector(".graph-wrap")
	// if(russelMc.classList.contains('md')) {
	// 	myChart.data.datasets[0].data = [944, 56]
	// 	myChart.update()
	// }

}

// 맞춤관리 슬라이드
function studySlide(){
	var studyNav = new Swiper('.study-slide-nav', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var studySlide = new Swiper('.study-slide', {
		loop: true,
		centeredSlides: true,
		allowTouchMove: true,
		autoHeight: true,
		autoplay:false,
		thumbs: {
			swiper: studyNav
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;

				$('.study-slide-nav .swiper-slide').eq(activeIndex).addClass('on').siblings().removeClass('on');
			}
		}
	});
}
// 맞춤관리 내에 이미지 변경 슬라이드 
function tabSlide(){
	var $slide = $('.tab-slide > .swiper-wrapper > .swiper-slide')

	if($slide.length >= 2){
		var swipertab = new Swiper('.tab-slide', {
			slidesPerView: 1,
			loop: true,
			allowTouchMove: true,
			autoplay:true,
			autoplay:{
				delay: 4000,
				disableOnInteraction: false,
			},
			effect : 'fade',
			fadeEffect: {
				crosssFade: true
			},
		});

	}else{
		var swiperTab = new Swiper('.tab-slide', {
			loop:false,
			allowTouchMove: false
		});
	}

}


// 전용학습콘텐츠 탭슬라이드
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
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		}
	});
	
	// cont08에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con08 = $(".cont08")
		let con08Top = con08.offset().top-150;
		let con04Top = $(".bt-banner").offset().top-150;
		
		if (scroll >= con08Top && scroll <= con04Top) {
			con08.addClass('on')
			slideCont.autoplay.start();
		} else {
			con08.removeClass('on')
			slideCont.autoplay.stop();

		}
	})
}
