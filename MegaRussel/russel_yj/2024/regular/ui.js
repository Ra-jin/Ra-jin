$(function() {

	// var $top = $('.regular-wrap').offset().top;
	// $('html, body').animate({scrollTop:$top},500);
	//gnb틀고정용
	var $top2 = $(".regular-wrap").position().top
	var headerH = $('.headerWrap').outerHeight();
	var headerfix = $('.headerWrap').hasClass('pos-sticky');
	if(location.href.indexOf("/russel_yj/2024/regular/index.asp#standard") > 1){
		window.onload = function() {
			setTimeout(function(){        
				id_hash()
			}, 500);
		}   
	}
	else{
		console.log("엘스")
		window.onload = function() {
			setTimeout(function(){        
				if(headerfix == true){		
					$("html,body").animate({scrollTop: 0}, 0);	
					$('body, html').animate({scrollTop : 183 }, 500)
					console.log("??")
				}
				else{           
					$('body, html').animate({scrollTop : 183 }, 500)
				}              
			}, 200);
		}
	}

	//탭1의 padding-top설정
	// if ($(".js-cont").eq(0).hasClass('russel_sm')) {
	// 	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"225px"})
	// } else {
	// 	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"245px"})
	// }

	// 서의치 nav없애기
	// if ($(".js-cont").eq(0).hasClass('russel_sm')) {
		
	// } else {
	// 	fixmenu();
	// 	programSlide()
	// }

	fixmenu();
	rollSlide()
	studySlide();
	tabSlide();
	
	
	// if ($('.visual-wrap').hasClass('russel_sm')) {
	// 	programSlide()
	// }
	
	tabMenu('.bt-tab.t_01','.cont-box.t_01');
});

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 170;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top - 102 ;

		if (i == 0) {
			$('html, body').animate({scrollTop:$cont_top}, 800);
		}else {
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
		// 클릭시 헤더 초기화
		function show_header() {
			$('.headerWrap.pos-sticky').css('transform','translateY(0%)').css('transition', 'all .5s ease')
			$('.fix-menu').removeClass('fix-top')
		}		  
		setTimeout(show_header,1000);
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

		// 퀵 fixed 메뉴
		var $contFirstTop  = $cont.eq(0).offset().top;

		if(scroll >= $contFirstTop) {
			$('.f-quick').addClass('fixed')

		} else {
			$('.f-quick').removeClass('fixed')
		}
		
		if($('.visual-wrap').hasClass('russel_yj')){
			$('.f-quick').css('top', '59%')
		}

		//여기숙 우측 배너 css 속성 변경
		// var eventHeight = $(".quick.russel_w").height();
		// var winSclInner	= $(window).scrollTop() + $(window).innerHeight() - eventHeight;
		// var winSclInner02	= $(window).scrollTop() + $(window).innerHeight();

		// var $quickCon = $('.quick.russel_w');
		// var $quickCon_top  = Math.floor($quickCon.offset().top);

		// var midCont      = $(".regular-wrap");
		// var midCont_top  = Math.floor(midCont.offset().top);

		// if(winSclInner >= $quickCon_top){
		// 	$quickCon.addClass("on");
		// }

		//프로그램 컨텐츠 영역에서만 이벤트 띠배너가 보이게 하기
		// if(winSclInner > midCont_top && winSclInner02 < $btmCon_top ) {
		// 	$quickCon.css('visibility','visible');
		// }

		// if(winSclInner < midCont_top){
		// 	$quickCon.css('visibility','visible');
		// }else if(winSclInner02 > $btmCon_top){
		// 	$quickCon.css('visibility','hidden');
		// }

		// if(winSclInner < midCont_top + 500 && $quickCon.hasClass("on")){
		// 	$quickCon.removeClass("on");
		// }
	});

}

// 대학 슬라이드
function rollSlide(){
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

// 입시관리 슬라이드 
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
	// cont09에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con09 = $(".cont09")
		let con09Top = con09.offset().top-150;
		let bottomTop = $(".cont10").offset().top-150;
		
		if (scroll >= con09Top && scroll <= bottomTop) {
			con09.addClass('on')

		} else {
			con09.removeClass('on')

		}
	})
}

// 비주얼 bg fade
const images = $(".bg-fade");
let currentImageIndex = 0;

function showNextImage() {
	$(images[currentImageIndex]).fadeOut(1000);
	currentImageIndex = (currentImageIndex + 1) % images.length;
	$(images[currentImageIndex]).fadeIn(1000);
}

$(images[currentImageIndex]).fadeIn(1000);
setInterval(showNextImage, 3000); 


function id_hash(){
	var heightval = window.location.hash;
	
	var $top = $('.regular-wrap').offset().top;
	var $contTop = $('#standard').offset().top - 300;

	if(heightval == "#standard"){
		$("html, body").animate({scrollTop:$contTop}, 500)         
	} 
}
