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
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"245px"})

	studyHallSlide()
	fixmenu();
	tSlide()
	programSlide()
	manageSlide()
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
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 30}, 800);
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
			var $target_top  = Math.floor($target.offset().top - $fix_h -102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		if($('.cont > div').hasClass('cont01')) {

			// cont01에 스크롤시 이벤트 실행
			var cTop = $(".cont01");
			var $ctopScroll  = cTop.offset().top-150;
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

	gradient.addColorStop(0, '#C20E09');
	gradient.addColorStop(1, '#DC0902');

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

// 관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	var manageCont = new Swiper('.manage-slide', {
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
			swiper: manageSlideNav
		}
	});
	
	// cont05에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con05 = $(".cont05")
		let con05Top = con05.offset().top-150;
		let con06Top = $(".cont06").offset().top-150;
		
		if (scroll >= con05Top && scroll <= con06Top) {
			con05.addClass('on')
			manageCont.autoplay.start();
		} else {
			con05.removeClass('on')
			manageCont.autoplay.stop();

		}
	})
}


//전용 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 3,
		slidesPerGroup : 3,
		loop: true,
		loopAdditionalSlides : 3,
		allowTouchMove: true,
		spaceBetween: 26,
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

// 개방형 구조 팝업
function layerPop() {
	$(".zoom-pop").addClass("on")
}
$(document).mouseup(function (e){
	var LayerPopup = $(".zoom-pop");
	if(LayerPopup.has(e.target).length === 0){
		LayerPopup.removeClass("on");
	}

});
$('.btn-close').on('click',function(){
	$('.zoom-pop').removeClass('on')		
})
