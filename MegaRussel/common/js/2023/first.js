
$(function() {
	var $top = $('.first-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	//탭1의 padding-top설정
	$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"190px"})
	
    fixmenu();
	rSlide()
	studyHallSlide()
	studyHallSlide02()
	tSlide();

});

var start = true;
// 고정메뉴
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();

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

		// cont01일때 카운트 시작
		var cont01 		= $('.cont01');
        var $cont01_top = cont01.offset().top - $fix_h;
        if(scroll >= $cont01_top){
			countNum()
        }
        
		//카운트
		var gTop = $(".count");
		var chartEl = $(".graph01 > div");
		var $gtopScroll  = gTop.offset().top-150;
		if(scroll >= $gtopScroll){
			gTop.addClass("on");
			countNum()
			//도넛차트 on일때 한번만 시작
			if(gTop.hasClass("on") && chartEl.hasClass('chart-area') && start == true) {
				chartDn()
				start = false
			}

		} else {
			gTop.removeClass("on");
			$('.counter').text(0);

			if (chartEl.hasClass('chart-area')) {
				//도넛차트 destroy
				$("#doughnut-chart").remove();
				$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
				start = true
			}

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

/* chart */
function chartDn() {
	var ctx = document.getElementById("doughnut-chart");
	var myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: ["#c1c1c1", "#22ed77"],
					data: [40, 960],
					borderWidth: "4",
					cutout: "58%",
					borderColor: "#414141"
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

	//평촌 도넛차트 데이터값 변경
	let russelPc = document.querySelector(".graph-wrap")
	if(russelPc.classList.contains('pc')) {
		myChart.data.datasets[0].data = [90, 910]
		myChart.update()
	}
}

/* swiper */
var swiper = new Swiper('.review-slide', {
	slidesPerView: 1,
	spaceBetween: 60,
	loop: true,
	allowTouchMove: true,
	autoplay:true,
	autoplay:{
		delay: 7000,
		disableOnInteraction: false,
	},
    pagination: {
        el: ".swiper-pagination.type01",
        clickable: true,
    },
});


// 롤링이미지
function rSlide(){
	var tSwiper = new Swiper('.roll-swiper',{
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
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.roll-swiper').hover(
		function(){
			tSwiper.autoplay.stop();
    	},
		function(){
			tSwiper.autoplay.start();
		}
	);
}

// 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi.type01', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	var slideCont = new Swiper('.studyHall-slide.type01', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		on: {
			slideChange: function () {
				let realIndex = this.realIndex * slideWidth
				$(".type01 .bar").css({
					"left": realIndex + "%"
				})
			}
		}
	});
	
	let slideLength = $(".studyHall-navi.type01 .swiper-slide").length
	let slideWidth = 100 / slideLength
	$(".type01 .bar").css({
		"width":"calc(100% / " + slideLength + ")" ,
	})
}

function studyHallSlide02(){
	var stuSlideNav02 = new Swiper('.studyHall-navi.type02', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false
	});	
	var slideCont02 = new Swiper('.studyHall-slide.type02', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		speed : 500,
		allowTouchMove: true,
		autoHeight: true,
		autoplay:true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav02
		},
		on: {
			slideChange: function () {
				let realIndex = this.realIndex * slideWidth
				$(".type02 .bar").css({
					"left": realIndex + "%"
				})
			}
		}
	});
	
	let slideLength = $(".studyHall-navi.type02 .swiper-slide").length
	let slideWidth = 100 / slideLength
	$(".type02 .bar").css({
		"width":"calc(100% / " + slideLength + ")" ,
	})
}

//강사진
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