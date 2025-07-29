$(function(){

	tabMenu('.tab-wrap','.tab-cont');
	fixmenu();
	studentSlide();


	timeSwiper();
	bajaSwiper();
	manageSlide();
	
	rollingSlide();
	dnCart();
	tabMenu('.bt-tab','.cont-box');
	tabMenu('.bt-tab02','.cont-box02');
})



//데이터 산출 기준
$(function(){
    $('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})



//학원 데이터 산출 기준
$(function(){
    $('.info-stxt').on('click',function(){
        $('.data-view').toggle();
    });

})



//고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 102;
	var $bt_fix = $('.js-fix-menu li');
	var $fix_h = $('.js-fix-menu').height() + 102;

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		// e.preventDefault();
		if (e.cancelable) e.preventDefault();

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

		// 각 cont진입 시 클래스 active 추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$target.addClass('active').siblings().removeClass('active');
			}
		});

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


//학생 리뷰
function studentSlide(){

	var reviewSwiper = new Swiper(".review-rolling-inner .swiper", {
		pagination: {
			el: ".swiper-pagination.page",
			dynamicBullets: true,
			clickable: true,
		},
		loop: true,
		loopAdditionalSlides : 1,
		autoplay:{
			delay:7000,
			disableOnInteraction: false,
		},
		autoHeight: true,
	});
	

	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();

		
		let con04Top = $(".cont04").offset().top-150;
		

		if($('.cont.js-cont-wrap').eq(1).hasClass('graph-con')){

			let con03 = $(".cont03")
			let con03Top = $(".cont03").offset().top-150;

			if (scroll >= con03Top && scroll <= con04Top) {
				con03.addClass('on')
				reviewSwiper.autoplay.start();
			} else {
				con03.removeClass('on')
				reviewSwiper.autoplay.stop();
	
			}
		}
		

	})


	// //스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();

		
	// 	let con04Top = $(".cont04").offset().top-150;
		
	// 	var lo_h = window.location.hash;

	// 	if(lo_h == "#russel"){

	// 		let con03 = $(".cont03")
	// 		let con03Top = $(".cont03").offset().top-150;

	// 		if (scroll >= con03Top && scroll <= con04Top) {
	// 			con03.addClass('on')
	// 			reviewSwiper.autoplay.start();
	// 		} else {
	// 			con03.removeClass('on')
	// 			reviewSwiper.autoplay.stop();
	
	// 		}
	// 	}
		

	// })



}


// time 슬라이드
function timeSwiper() {
	var timeSwiper = new Swiper(".time-slide", {
		slidesPerView: 1,
		spaceBetween: 10,
		loop: true,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type10",
			clickable: true,
		},
		autoHeight: 'true',
	});
}


// 바자관 슬라이드
function bajaSwiper() {
	var bSwiper = new Swiper(".baja-slide", {
		slidesPerView: 1,
		spaceBetween: 0,
		loop: true,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type07",
			clickable: true,
		},
		autoHeight: 'true',
	});
	
}


// 입시관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
		slidesPerView: 5,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var slideCont02 = new Swiper('.manage-slide', {
		loop: true,
		slidesPerView: "auto",
		autoHeight: true,
		autoplay:{
			delay: 5000,
		},
		thumbs: {
			swiper: manageSlideNav
		},
		observer: true,
		observeParents: true,
	});


	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll03 = $(window).scrollTop();

		//cont06 입시관리 슬라이드 영역진입시에만 활성화(하단 영역 떨림현상 방지)
		var gTop08 = $(".cont06");
		var $gtopScroll08  = gTop08.offset().top - 102;
		var gEnd02 = $(".cont07").offset().top - 102;
		if(wScroll03 >= $gtopScroll08 && wScroll03 < gEnd02){
			slideCont02.autoplay.start(0)
		} else {
			slideCont02.autoplay.stop()
		}
	})
}


// 종합반 소개 탭슬라이드
function rollingSlide() {
	
	var slideCont03 = new Swiper('.rolling-slide.type01', {
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,

		speed: 5000,
		slidesPerView: 'auto',
		spaceBetween: 20,

		observer: true,
		observeParents: true,
		initialSlide: 0,
		autoHeight : false,
	});
	
	var slideCont04 = new Swiper('.rolling-slide.type02', {
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,

		speed: 5000,
		slidesPerView: 'auto',
		spaceBetween: 20,

		observer: true,
		observeParents: true,
		initialSlide: 0,
		autoHeight : false,
	});
	
	
	// 탭메뉴
	let tabBtn = $('.cont09 .tab-wrap a').on('click', function() {
		slideCont03.update()
		slideCont04.update()

	})


	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();

		
		let contsub = $('.cont09')
		let contsubTop = contsub.offset().top-150;
		
		let con03Top = $(".rolling-slide-end").offset().top-150;

		if (scroll >= contsubTop && scroll <= con03Top) {
			contsub.addClass('on')
			slideCont03.autoplay.start();
			slideCont04.autoplay.start();
		} else {
			contsub.removeClass('on')
			slideCont03.autoplay.stop();
			slideCont04.autoplay.stop();

		}
		

	})

}

//도넛차트 실행
function dnCart(){

	if($('.cont.js-cont-wrap').eq(1).hasClass('graph-con')){
		//스크롤 내렸을 때 도넛차트 실행
		$(window).scroll(function(){
			var cTop = $(".cont03");
			var $ctopScroll  = cTop.offset().top-150;
		
			var scroll = $(window).scrollTop();
			var chartEl = $('.graph-wrap.graph1 > div');
		
			var gTop = $(".cont03 .d-start");
			var chartEl = $(".doughnut > div");
			var $gtopScroll  = gTop.offset().top-150;
		
		
			if(scroll >= $gtopScroll){
		
				gTop.addClass("chart");
		
				if(gTop.hasClass("chart") && dnStart == true){
					chartDn();
					dnStart = false
				}
		
			}else{
				gTop.removeClass("chart");
		
				if (chartEl.hasClass('chart-area')) {
					//도넛차트 destroy
					$("#doughnut-chart").remove();
					$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
					dnStart = true
				}
		
				if(scroll >= $ctopScroll) {
					cTop.addClass("on");
				} else {
					cTop.removeClass("on");
				}
		
			}
		
		
		});
		
		
		//도넛차트
		var dnStart = true; // 도넛차트 한번만 실행
		
		function chartDn() {
		
			var ctx = document.getElementById("doughnut-chart").getContext('2d');;
			gradient = ctx.createLinearGradient(10, 150, 0, 10);
		
			gradient.addColorStop(0, '#0879E6');
			gradient.addColorStop(1, '#0879E6');
		
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

	}

}