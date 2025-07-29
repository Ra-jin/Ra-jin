
$(function() {
	var $top = $('.regular-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	//탭1의 padding-top설정
	$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"220px"})

    visualSlide()
	fixmenu()
	rSlide()
	bajaSlide()
	tSlide();
	manageSlide()
});

/*인트로/강남/대치/분당/영통/중계/센텀 영상 팝업*/
function playPop(url){ 
    var popupW = (window.screen.width / 2) - (554 / 2);
    var popupH= (window.screen.height / 2) - (316 / 2);
    var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no,top="+ popupH +",left="+ popupW);
    wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
}

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();

	var $baja_top = $('.cont03 .tab-box').offset().top - 90;
	var $baja_cont = $('.js-menu-con')
	var $baja_fix = $('.nav-wrap a');

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
	/*--- 중간 nav ---*/
	// 클릭 시 이동
	$baja_fix.on('click',function(e){
		e.preventDefault();
		var j = $(this).index();
		var $baja_j  = $baja_cont.eq(j);
		var $baja_top = $baja_j.offset().top - 89;
		$doc.animate({scrollTop:$baja_top}, 800);
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

		/*--- 중간 nav ---*/
		//스크롤시 nav 활성화
		var scrollEnd = $(".nav-end").offset().top;
		if(scroll >= $baja_top && scroll < scrollEnd){
			$('.nav-wrap').addClass('fix');
		}else{
			$('.nav-wrap').removeClass('fix')
		};
		//스크롤시 on
		$baja_cont.each(function(k){
			var $target02 = $baja_cont.eq(k);
			var $target_top02  = Math.floor($target02.offset().top - 91);
			if(scroll >= $target_top02){
				$baja_fix.eq(k).addClass('on').siblings().removeClass('on');

				$baja_fix.children().attr("src", function(idx, j){ return j.replace("_on.png","_off.png"); });

				$baja_fix.eq(k).children().attr("src", function(idx, j){ return j.replace("_off.png","_on.png"); });
			}

		});

		//.count에 스크롤시 스타트
		var gTop = $(".count");
		var $gtopScroll  = gTop.offset().top-300;
		if(scroll >= $gtopScroll){
			gTop.addClass("on");
			countNum()

		} else {
			gTop.removeClass("on");
			$('.counter').text(0);
		}

		//cont02에 스크롤시 스타트
		var gTop02 = $(".cont02");
		var chartEl = $(".graph01 > div");
		var $gtopScroll02  = gTop02.offset().top - 91;
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
		var gTop03 = $(".review-list");
		var $gtopScroll03  = gTop03.offset().top - 300;
		if(scroll >= $gtopScroll03){
			gTop03.addClass("on");

		} else {
			gTop03.removeClass("on");
		}

		//cont06 승반그래프 스크롤시 스타트
		var gTop04 = $(".rise-list");
		var $gtopScroll04  = gTop04.offset().top - 500;
		if(scroll >= $gtopScroll04){
			gTop04.addClass("on");

		} else {
			gTop04.removeClass("on");
		}

		//cont07 블링크 효과
		var gTop05 = $(".cont07");
		var $gtopScroll05  = gTop05.offset().top - 100;
		if(scroll >= $gtopScroll05){
			gTop05.addClass("on");
		} else {
			gTop05.removeClass("on");
		}


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

/* 비주얼 bg 슬라이드 */
function visualSlide(){
	var vSwiper = new Swiper('.visual-slide',{
		speed: 700,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false, // 버튼클릭해도 계속 롤링
		},
		loop:true,
		slidesPerView: '1',
		effect: 'fade',
		fadeEffect: {
			crossFade: true
		},
	});
}


/* chart */
// 도넛차트 한번만 실행
var start = true;
function chartDn() {
	var ctx = document.getElementById("doughnut-chart").getContext('2d');
	gradient = ctx.createLinearGradient(100, 0, 0, 50);

	gradient.addColorStop(0, '#953dde');
	gradient.addColorStop(1, '#6500e3');

	var myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: [gradient, "transparent"],
					data: [913, 87],
					borderWidth: "4",
					cutout: "65%",
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

	//목동 도넛차트 데이터값 변경
	let russelMc = document.querySelector(".graph-wrap")
	if(russelMc.classList.contains('md')) {
		myChart.data.datasets[0].data = [944, 56]
		myChart.update()
	}

	//부천 도넛차트 데이터값 변경
	let russelBc = document.querySelector(".graph-wrap")
	if(russelBc.classList.contains('bc')) {
		myChart.data.datasets[0].data = [816, 84]
		myChart.update()
	}
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
		spaceBetween: 40
	});

	$('.roll-swiper').hover(function(){
			rSwiper.autoplay.stop()
		},function(){
			rSwiper.autoplay.start()
		}
	)
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
				$('.baja-slide-navi .swiper-slide').eq(activeIndex).addClass('active').siblings().removeClass('active');

				$('.baja-slide-navi .swiper-slide').children().attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
				$('.baja-slide-navi .swiper-slide.active').children().attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
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
		slidesPerView: "auto",
		autoHeight: true,
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
				$('.manage-slide-navi .swiper-slide').eq(activeIndex).addClass('active').siblings().removeClass('active');

				$('.manage-slide-navi .swiper-slide').children().attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
				$('.manage-slide-navi .swiper-slide.active').children().attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
			}
		}
	});


	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll02 = $(window).scrollTop();

		//cont05 바자관 임시관리 스타트
		var gTop07 = $(".cont05");
		var $gtopScroll07  = gTop07.offset().top - 100;
		var gEnd = $(".cont06").offset().top;;
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
