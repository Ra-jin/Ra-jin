
$(function() {
	var $top = $('.half-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	//탭1의 padding-top설정
	$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"205px"})

	nav(); //죄측 원형 네비바

	fixmenu();
	rSlide()
	bajaSlide()
	tSlide();
	manageSlide()

	cardSlide()
});

// 카드 슬라이드 영상 플레이
function viewPlay(code){
	window.open('https://tv.naver.com/embed/'+ code +'?autoPlay=true','play','width=777,height=400,scrollbars=no')
}


//좌측 원형 네비바
function nav(){
	var $doc = $('html, body');
	var $bt_nav = $('.nav-wrap li');
	var $cont = $('.js-cont .js-box');
	var $fix_h = $('.js-fix-menu').height();
	var $navIn = $('.nav-in');

	//네비바 첫번째 탭에 on 붙이기
	$bt_nav.first().addClass("on");

	//네비바 클릭 시 해당 컨텐츠로 이동
	$bt_nav.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var cont_on = $cont.eq(i);
		var cont_top = cont_on.offset().top - 60;
		$doc.animate({scrollTop:cont_top});
	});

	//스크롤이 각 컨텐츠 top 보다 아래로 내려가면 해당되는 네비바탭에 클래스 on 붙이기
	$(window).scroll(function(){

		var scroll = $(window).scrollTop() + 150;

		$cont.each(function(i){
		  var $cont_top  = $cont.eq(i).offset().top - $fix_h;
		  if(scroll > $cont_top){
			$bt_nav.eq(i).addClass('on').siblings().removeClass('on');

			//각각의 해당 컨텐츠에 닿을 때마다 해당 컨텐츠에 해당하는 네비바배경이미지 경로로 변경하는 코드
			if($bt_nav.eq(0).hasClass('on')){
				$navIn.css('background-image', 'url(https://russeldata.megastudy.net/campus/images/russel/intro/2023/half/nav_bg01.png)');
				$navIn.css('transition', 'all 1')
			}else if($bt_nav.eq(1).hasClass('on')){
				$navIn.css('background-image', 'url(https://russeldata.megastudy.net/campus/images/russel/intro/2023/half/nav_bg02.png)');
				$navIn.css('transition', 'all 1')

			}else if($bt_nav.eq(2).hasClass('on')){
				$navIn.css('background-image', 'url(https://russeldata.megastudy.net/campus/images/russel/intro/2023/half/nav_bg03.png)');
				$navIn.css('transition', 'all 1')

			}else if($bt_nav.eq(3).hasClass('on')){
				$navIn.css('background-image', 'url(https://russeldata.megastudy.net/campus/images/russel/intro/2023/half/nav_bg04.png)');
				$navIn.css('transition', 'all 1')

			}
		  }
		});
	  });
}


/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();

	// var $baja_top = $('.cont03 .tab-box').offset().top - 90;
	// var $baja_cont = $('.js-menu-con')


	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
		// $doc.animate({scrollTop:$cont_top}, 800);
		if (i == 0) {
			$doc.animate({scrollTop:$cont_top}, 800);
		}else {
			$doc.animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
	});


	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		// console.log($(window).scrollTop());

		//스크롤시 nav 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		if(scroll >= $fix_top){
			$fix_menu.css({
				'position':'fixed',
			});
			$('.fix-menu-wrap').addClass('fix');
		}else{
			$fix_menu.css({
				'position':'absolute',
			});
			$('.fix-menu-wrap').removeClass('fix');
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});



		//.count에 스크롤시 스타트
		var gTop = $(".count");
		var $gtopScroll  = gTop.offset().top-300;
		if(scroll >= $gtopScroll){
			gTop.addClass("on");
			countNum()

		} else {
			// gTop.removeClass("on");
			// $('.counter').text(0);
		}

		//cont01에 스크롤시 스타트
		var gTop02 = $(".cont01");
		var chartEl = $(".graph02 > div");
		var $gtopScroll02  = gTop02.offset().top + 450;
		if(scroll >= $gtopScroll02){
			gTop02.addClass("on");
			//도넛차트 on일때 한번만 시작
			if(gTop02.hasClass("on") && chartEl.hasClass('chart-area') && start == true) {
				chartDn()
				start = false
			}
		} else {
			gTop02.removeClass("on");
			if (chartEl.hasClass('chart-area')) {
				//도넛차트 destroy
				$("#doughnut-chart").remove();
				$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
				start = true
			}
		}

		//review-list에 스크롤시 스타트
		// var gTop03 = $(".review-list");
		// var $gtopScroll03  = gTop03.offset().top - 300;
		// if(scroll >= $gtopScroll03){
		// 	gTop03.addClass("on");

		// } else {
		// 	gTop03.removeClass("on");
		// }

		//cont06 승반그래프 스크롤시 스타트
		// var gTop04 = $(".rise-list");
		// var $gtopScroll04  = gTop04.offset().top - 500;
		// if(scroll >= $gtopScroll04){
		// 	gTop04.addClass("on");

		// } else {
		// 	gTop04.removeClass("on");
		// }

		//cont07 블링크 효과
		// var gTop05 = $(".cont07");
		// var $gtopScroll05  = gTop05.offset().top - 100;
		// if(scroll >= $gtopScroll05){
		// 	gTop05.addClass("on");
		// } else {
		// 	gTop05.removeClass("on");
		// }

		//좌측 네비바 스크롤이벤트
		$cont.each(function(i){
			var navCont      = $("#nav-cont");
			var navCont_top  = Math.floor(navCont.offset().top);
			var scrollEnd = $(".nav-end").offset().top;

			if (scroll >= navCont_top && scroll < scrollEnd) {
				$('.nav-in').addClass('fix');
				$('.nav-wrap').addClass('on');
			} else {
				$('.nav-in').removeClass('fix');
				$('.nav-wrap').removeClass('on');
			}
		});


	});
}

/*count*/
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
			step: function() {
			$this.text(Math.floor(this.countNum));
			},
			complete: function() {
			$this.text(this.countNum);
			}
		});
	});

};




/* chart */
// 도넛차트 한번만 실행
var start = true;
function chartDn() {
	var ctx = document.getElementById("doughnut-chart").getContext('2d');
	gradient = ctx.createLinearGradient(100, -50, 0, 90);

	gradient.addColorStop(0, '#b14cfd');
	gradient.addColorStop(1, '#f2115b');

	var myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: [gradient, "transparent"],
					data: [1000, 60],
					borderWidth: "52",
					cutout: "60%",
					borderColor: "transparent",
					doughnutWidth: 50, // 도넛 차트의 두께
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
			// maintainAspectRatio: false, // 가로 세로 비율 유지 안 함
        	// responsive: true, // 자동으로 크기 조절
		},

	})

	// //목동 도넛차트 데이터값 변경
	// let russelMc = document.querySelector(".graph-wrap")
	// if(russelMc.classList.contains('md')) {
	// 	myChart.data.datasets[0].data = [944, 56]
	// 	myChart.update()
	// }

	// //부천 도넛차트 데이터값 변경
	// let russelBc = document.querySelector(".graph-wrap")
	// if(russelBc.classList.contains('bc')) {
	// 	myChart.data.datasets[0].data = [816, 84]
	// 	myChart.update()
	// }
}



//카드 슬라이드
function cardSlide() {
	var cardSwiper = new Swiper(".card-swiper", {
	  pagination: {
		el: ".swiper-pagination",
		type: "fraction",
	  },
	  slidesPerView: 'auto',
	  spaceBetween: 40,
	  loop: true,
	  loopAdditionalSlides: 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
	  speed: 500,
	  autoplay: {
		delay: 7000,
		disableOnInteraction: false,
	  },
	  centeredSlides: true,
	  on: {
		  // 슬라이드 change시 메뉴이미지 변경 (beforeTransitionStart : 슬라이드 전환 시작 전에 이벤트가 시작됩니다.)
		  	// 슬라이드 change시 메뉴이미지 변경 (activeIndexChange : 활성화된 인덱스가 바뀔 때 이벤트가 발생합니다.)
			// 슬라이드 change시 메뉴이미지 변경 (slideChange : 슬라이드가 바뀔 때마다 이벤트가 발생합니다.)
			beforeTransitionStart : function () {

				$('.card-swiper .swiper-slide-active').addClass('active').siblings().removeClass('active')
				$('.card-swiper .swiper-slide').children().children('img').attr("src",function(idx, j){ return j.replace("_on.jpg",".jpg"); });
				$('.card-swiper .swiper-slide.active').children().children('img').attr("src", function(idx, j){ return j.replace(".jpg","_on.jpg"); });
			}



		},

	});
  }









/* 합격 학교 롤링 */
function rSlide(){
	var rSwiper = new Swiper('.roll-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		speed: 2500,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
	});

	$('.roll-swiper').hover(function(){
			rSwiper.autoplay.stop()
		},function(){
			rSwiper.autoplay.start()
		}
	)

	$(".roll-swiper").on("mouseenter", function() {
        rSwiper.autoplay.stop();
    });

    $(".roll-swiper").on("mouseleave", function() {
        rSwiper.autoplay.start();
    });
}

/* 바자관 탭슬라이드 */
function bajaSlide(){
	var bajaSlideNav = new Swiper('.baja-slide-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var slideCont = new Swiper('.baja-slide', {
		loop: true,
		autoHeight: true,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
		},
		thumbs: {
			swiper: bajaSlideNav
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;

				$('.baja-slide-navi .swiper-slide').eq(activeIndex).addClass('on').siblings().removeClass('on');


			}
		}
	});

	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll = $(window).scrollTop();

		//cont03 바자관 탭슬라이드 스타트
		var gTop06 = $(".cont03");
		var $gtopScroll06  = gTop06.offset().top - 100;
		var gEnd = $(".cont04").offset().top;;
		if(wScroll >= $gtopScroll06 && wScroll < gEnd){
			slideCont.autoplay.start(0)

			$('.baja-slide').hover(
				function(){
					slideCont.autoplay.stop()
				},
				function(){
					slideCont.autoplay.start(0)
				}
			)

		} else {
			slideCont.autoplay.stop()
		}
	})

}

/* 강사진 */
function tSlide(){
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

}

//슬라이드 랜덤
function randomIdx()  {
    var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}

/* 입시관리 탭슬라이드 */
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});
	var slideCont02 = new Swiper('.manage-slide', {
		loop: true,
		autoHeight: true,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
		},
		thumbs: {
			swiper: manageSlideNav
		},
		on: {
			// 슬라이드 change시 메뉴이미지 변경
			beforeTransitionStart: function () {
				let activeIndex = this.realIndex;
				$('.manage-slide-navi .swiper-slide').eq(activeIndex).addClass('on').siblings().removeClass('on');
			}
		}
	});


	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll02 = $(window).scrollTop();

		//cont04 입시관리 탭슬라이드
		var gTop07 = $(".cont04");
		var $gtopScroll07  = gTop07.offset().top - 100;
		var gEnd = $(".cont05").offset().top;;
		if(wScroll02 >= $gtopScroll07 && wScroll02 < gEnd){
			slideCont02.autoplay.start(0)
			$('.manage-slide').hover(
				function(){
					slideCont02.autoplay.stop()
				},
				function(){
					slideCont02.autoplay.start(0)
				}
			)
		} else {
			slideCont02.autoplay.stop()
		}
	})
}
