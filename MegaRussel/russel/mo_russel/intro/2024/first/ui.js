$(function(){
    // var $top = $(".first-wrap").offset().top -100;
    // $("html, body").animate({scrollTop:$top},700);



	tabMenu('.tab-wrap','.tab-cont');
	fixmenu();
	studentSlide();
	studyHallSlide();
	manageSlide();
	programSlide();
	dnCart();
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


	//첫번째 방법
	// //스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con01 = $(".cont01")
	// 	let con01Top = con01.offset().top-150;
		
	// 	let contsub = $('.cont01-1')
	// 	let contsubTop = contsub.offset().top-150;

	// 	let con03Top = $(".cont03").offset().top-150;
		
	// 	if (scroll >= con01Top && scroll <= con03Top) {
	// 		con01.addClass('on')
	// 		reviewSwiper.autoplay.start();
	// 	} else {
	// 		con01.removeClass('on')
	// 		reviewSwiper.autoplay.stop();

	// 	}
	// })



	//두번째 방법 : 단점 실서버에서 확인해야함
	// if(window.location.href.indexOf("mrusselgn") > -1){
	// 	$(window).scroll(function(){
	
	// 		var scroll = $(window).scrollTop();
			
	// 		let contsub = $('.cont01-1')
	// 		let contsubTop = contsub.offset().top-150;
	
	// 		let con03Top = $(".cont03").offset().top-150;
			
	// 		if (scroll >= contsubTop && scroll <= con03Top) {
	// 			contsub.addClass('on')
	// 			reviewSwiper.autoplay.start();
	// 		} else {
	// 			contsub.removeClass('on')
	// 			reviewSwiper.autoplay.stop();
	
	// 		}
	// 	})
	// }else{
	// 	$(window).scroll(function(){
	
	// 		var scroll = $(window).scrollTop();
	// 		let con01 = $(".cont01")
	// 		let con01Top = con01.offset().top-150;
	
	// 		let con03Top = $(".cont03").offset().top-150;
			
	// 		if (scroll >= con01Top && scroll <= con03Top) {
	// 			con01.addClass('on')
	// 			reviewSwiper.autoplay.start();
	// 		} else {
	// 			con01.removeClass('on')
	// 			reviewSwiper.autoplay.stop();
	
	// 		}
	// 	})

	// }

	
	// //세번째 방법
	// //스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();


		


	// 	let con03Top = $(".cont03").offset().top-150;
		
	// 	var lo_h = window.location.hash;

	// 	if(lo_h == "#intro" || lo_h == "#core" || lo_h == "#russel"){

	// 		let con01 = $(".cont01")
	// 		let con01Top = con01.offset().top-150;

	// 		if (scroll >= con01Top && scroll <= con03Top) {
	// 			con01.addClass('on')
	// 			reviewSwiper.autoplay.start();
	// 		} else {
	// 			con01.removeClass('on')
	// 			reviewSwiper.autoplay.stop();
	
	// 		}
	// 	}else{

	// 		let contsub = $('.cont01-1')
	// 		let contsubTop = contsub.offset().top-150;

	// 		if (scroll >= contsubTop && scroll <= con03Top) {
	// 			contsub.addClass('on')
	// 			reviewSwiper.autoplay.start();
	// 		} else {
	// 			contsub.removeClass('on')
	// 			reviewSwiper.autoplay.stop();
	
	// 		}
	// 	}

	// })


	//네번째 방법
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();

		let con03Top = $(".cont03").offset().top-150;
		

		if($(".cont.js-cont-wrap").eq(0).hasClass('graph-con')){

			let con01 = $(".cont01")
			let con01Top = con01.offset().top-150;

			if (scroll >= con01Top && scroll <= con03Top) {
				con01.addClass('on')
				reviewSwiper.autoplay.start();
			} else {
				con01.removeClass('on')
				reviewSwiper.autoplay.stop();
	
			}
		}else{

			let contsub = $('.cont01-1')
			let contsubTop = contsub.offset().top-150;

			if (scroll >= contsubTop && scroll <= con03Top) {
				contsub.addClass('on')
				reviewSwiper.autoplay.start();
			} else {
				contsub.removeClass('on')
				reviewSwiper.autoplay.stop();
	
			}
		}

	})



}

//선생님 롤링
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


//바자관 탭슬라이드
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
		},

	});
	
	//스크롤 떨림 현상 방지
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

	//section3 바자관 롤링 내 이미지 클릭 시 딤드처리
	$('.bt-tt').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-tt').addClass('on')
	})
	$('.bt-close-tt').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}


//관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
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
		},
		spaceBetween: 10, 
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con06 = $(".cont05")
		let con06Top = con06.offset().top-150;
		let con07Top = $(".cont06").offset().top-150;
		
		if (scroll >= con06Top && scroll <= con07Top) {
			con06.addClass('on')
			manageCont.autoplay.start();
		} else {
			con06.removeClass('on')
			manageCont.autoplay.stop();

		}
	})
	

}


//전용 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 1,
		// slidesPerGroup : 3,
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
	//  스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con06 = $(".cont06")
	// 	let con06Top = con06.offset().top-150;
	// 	let con07Top = $(".slideEnd").offset().top-150;
		
	// 	if (scroll >= con06Top && scroll <= con07Top) {
	// 		con06.addClass('on')
	// 		pSlide.autoplay.start();
	// 	} else {
	// 		con06.removeClass('on')
	// 		pSlide.autoplay.stop();

	// 	}
	// })
}


//도넛차트 실행
function dnCart(){

	if($(".cont.js-cont-wrap").eq(0).hasClass('graph-con')){
		//스크롤 내렸을 때 도넛차트 실행
		$(window).scroll(function(){
			var cTop = $(".cont01");
			var $ctopScroll  = cTop.offset().top-150;
		
			var scroll = $(window).scrollTop();
			var chartEl = $('.graph-wrap.graph1 > div');
		
			var gTop = $(".cont01 .d-start");
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
		
		
		}

	}

}

