window.onload = function(){
	campusSlide()
	sjrSlide()
}


$(function(){
	mainSlide()		//메인 슬라이드
	quickMenu()		//좌측퀵메뉴
	russelInfo()	//학생중심 러셀
	reviewSlide()	//리뷰 슬라이드
	// campusSlide()	//학원별 배너
	campusBtn()		//러셀 전국 지점 안내
	floatClose()         //닫기
	
	$('.campus-depth02 a, .map-box a').on('click',function(){
		setTimeout(
			function(){
				campusSlide() 
			}
		,400);
	})

	
	$('.headerWrap').addClass('pos-r')
	var tBanner_bk = $('#top_layer_w_open').length > 0;
	var scroll = $(window).scrollTop();
	if(tBanner_bk == false){
		$('.headerWrap').addClass('fix')	
		if(scroll == 0)	{
			$('.headerWrap').removeClass('fix')
		}
	}
	else if(scroll > 110 ){
		$('.headerWrap').addClass('fix2')
	}
	else if(scroll <= 110 || scroll == 0 ){
		$('.headerWrap').removeClass('fix2')		
	}
	else{
		$('.headerWrap').removeClass('fix')
	}

})



$(window).scroll(function(){
	var scroll = $(window).scrollTop();
	// 탑배너 닫기 눌렀을 때
	if($('#top_layer_w_open').css('display') == 'none'){
		if(scroll > 0){
			$('.headerWrap').addClass('fix')		
			console.log("픽스 0이상 시작")
		}
		else{
			$('.headerWrap').removeClass('fix')	
		}
	}
	// 탑배너가 dom이 없을때
	else if(($('#top_layer_w_open').length > 0) == false){
		if(scroll > 0){
			$('.headerWrap').addClass('fix')		
			console.log("픽스 0이상 시작")
		}
		else{
			$('.headerWrap').removeClass('fix')	
		}
	}
	else{	
		if(scroll > 110){
			$('.headerWrap').addClass('fix2')	
		}
		else{
			$('.headerWrap').removeClass('fix2')	
		}
	}

});

function mainSlide(){	
	function proBar () {
		$('.swiper-slide span').removeAttr('style');
	};

	var slide_navi	= $('.main-slide-navi > .swiper-wrapper > .swiper-slide')
	var slide_l		= slide_navi.length
	
	// 슬라이드 5개 이하일 때 perv,next버튼 숨김
	if(slide_l < 6){
		$('.main-slide-next, .main-slide-prev').css('display','none')
	}else{
		$('.main-slide-next, .main-slide-prev').css('display','block')
	}

	// 슬라이드 4개 이하일 때 navi 너비 사이즈 조정
	if(slide_l < 5){
		slide_navi.parents('.main-slide-navi').addClass('flex-box')
	}else{
		slide_navi.parents('.main-slide-navi').removeClass('flex-box')
	}

	// 메인배너	
	var mainThumbs = new Swiper('.main-slide-navi', {
		slidesPerView: 5,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false
	});	
	var mainTop = new Swiper('.main-slide', {
		loop: true,
		speed : 700,
		allowTouchMove: false,
		effect: 'fade',
		navigation: {
			nextEl: '.main-slide-next',
			prevEl: '.main-slide-prev',
		},
		// autoplay:false,
		autoplay:{
			delay: 2800,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: mainThumbs
		},
		on: {
			activeIndexChange: function () {
				proBar ()
			}
		},
		loop: true,
	});

	// 메인 배너 전체 보기
	var allBanner = new Swiper(".all-main-banner", {
        spaceBetween: 30,
        scrollbar: {
          el: ".swiper-scrollbar",
          hide: true,
        },
    });	
	
	// 메인 슬라이드 서브 메뉴
	var $bt_pause	= $('.bt-slide-pause')
	var $bt_play	= $('.bt-slide-play')

	// 멈춤 버튼
	$bt_pause.on('click',function(e){
		e.preventDefault()
		var $pro_bar	= $('.swiper-slide-thumb-active span')
		var pro_width	= $pro_bar.width();
		$(this).css('display','none')
		$bt_play.css('display','inline-block')
		$pro_bar.css('width',pro_width)
		mainTop.autoplay.stop();
	})
	
	$bt_play.on('click',function(e){
		e.preventDefault()
		var $pro_bar	= $('.swiper-slide-thumb-active span')
		$(this).css('display','none')
		$bt_pause.css('display','inline-block')
		$pro_bar.css('width','100%')
		mainTop.autoplay.start(0);
	})
	
	$('.main-slide-prev, .main-slide-next, .bt-slide-play').on('click',function(){
		$('.s-menu').removeClass('menu-on')
	})
		
	$('.swiper-slide').on('click',function(){
		$('.swiper-slide').removeClass('p-on');
		$(this).addClass('p-on')
		$(this).siblings().removeClass('menu-on')
	})

	$('.s-menu').hover(
		function(){
			var pt	= $(this).children('.menu-list').height();
			$('.s-menu').removeClass('menu-on')
			$(this).parents().find('.main-slide-navi').css('padding-top',pt)
			$(this).addClass('menu-on')
			$bt_pause.css('display','none')
			$bt_play.css('display','inline-block')
			mainTop.autoplay.stop();
		},
		function(){
			$('.s-menu').removeClass('menu-on')
			$(this).parents().find('.main-slide-navi').css('padding-top','0')
			$(this).removeClass('menu-on')
			$bt_pause.css('display','inline-block')
			$bt_play.css('display','none')
			$('.swiper-slide-thumb-active span').css('width','100%')
			mainTop.autoplay.start();
		}
	)

	// 메인 슬라이드 전체보기
	$('.bt-slide-all').on('click',function(){
		$('.all-slide-wrap').addClass('on')
		$('body').addClass('no-scroll');
		$('.intro-wrap, .headerWrap, .footer, .lnb-wrap').css('filter','blur(3px)')
	})
	$('.all-slide-wrap .bt-close').on('click',function(){
		$('.all-slide-wrap').removeClass('on')
		$('body').removeClass('no-scroll');
		$('.intro-wrap, .headerWrap, .footer, .lnb-wrap').removeAttr('style')
	})
}


function quickMenu(){
	var	$bt_quick 	= $('.bt-quick');
	var	$bt_menu	= $('.quick-wrap p.tit');
	
	$bt_quick.on('click',function(){
		$(this).toggleClass('on')
		$(this).parent('.quick-lnb').toggleClass('on')
	});
	
	$bt_menu.on('click',function(){
		$(this).toggleClass('on')
		$(this).next('.sub-list').toggleClass('on')
	})

	// 하단 배너
	$('.quick-banner').each(function(i){
		var $this = $(this);
		var slide = $this.addClass("quick-banner-" + i + 1);

		var quickBanner = new Swiper(slide, {
			loop: true,
			speed : 500,
			// autoplay:false,
			autoplay: {
				delay: 3000,
				disableOnInteraction: false,
			},
			navigation: {
				prevEl: '.bt-prev',
				nextEl: '.bt-next',
			}, 
			pagination: {
				el: '.swiper-pagination',
				type : 'fraction'
				// renderBullet: function (index, className) {
				// 	return '<span class="' + className + '">' + (index + 1) + "</span>";
				// },
			},
			
		})		
		
		$this.hover(function() {
			quickBanner.autoplay.stop();
		}, function() {
			quickBanner.autoplay.start();
		});
		
		// var total = $this.children('.page-wrap').children('div').children('span').length
		// console.log(total)
		// $this.children('.page-wrap').children('.total').html('/ ' + total)

	})
}

// 학생 중심 러셀 transition
function russelInfo(){
	var c_t01	= $('.russel-info').offset().top -600;
	var win_h	= parseInt($(window).height()/4)*3
	var c_t02	= $('.russel-info .menu-wrap').offset().top - win_h;

	$(window).scroll(function(){
		var scl_top	= $(window).scrollTop()

		if(scl_top >= c_t01){
			$('.russel-info').addClass('ani-01')
		}else if(scl_top < c_t01){
			$('.russel-info').removeClass('ani-01')
		}
		
		if(scl_top >= c_t02){
			$('.russel-info').addClass('ani-02')
		}else if(scl_top < c_t02){
			$('.russel-info').removeClass('ani-02')
		}
	})
}

// 매년 결과로 증명하는 러셀
function reviewSlide(){ 
	var reviewSlide = new Swiper(".review-slide", {
		scrollbar: '.swiper-scrollbar',
		effect: 'coverflow',
		direction: 'vertical',
		loop: true,
		slideToClickedSlide: true,
		grabCursor: true,
		centeredSlides: true,
		slidesPerView: 'auto',
		coverflowEffect: {
		  rotate: 0,
		  stretch: 70,
		  depth: 0,
		  modifier: 1,
		  slideShadows: false
		},
		loop: true,
		speed:500,
		autoplay: {
		  delay: 5000,
		  disableOnInteraction: false,
		},
		freeMode:false
	});
}

// 학원별 배너
function campusSlide(){
    $(".campus-banner").each(function(index){
        var $this = $(this);
        var slide = $this.addClass("campus-slide-" + parseInt(index + 1));
		
        var swiper = new Swiper(slide, {
            loop: true,
            slidesPerView : 1,
            slidesPerGroup :1,
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },
			pagination: {
				el: '.swiper-pagination',
				type : 'fraction'
			},
			observer: true,
			observeParents: true,
        });		
		

		$this.hover(function() {
			swiper.autoplay.stop();
		}, function() {
			swiper.autoplay.start();
		});
    });
}

// 플로팅 배너 닫기
function floatClose(){
	$(".close").click(function(){
		$(".f-banner").hide();
	});
}

// 삽자루 슬라이드
function sjrSlide(){
	var swiper = new Swiper('.banner-sjr', {
		loop: true,
		slidesPerView : 1,
		slidesPerGroup :1,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.swiper-pagination',
			type : 'fraction'
		},
		observer: true,
		observeParents: true,
	});		
	
	$('.banner-sjr').hover(function() {
		swiper.autoplay.stop();
	}, function() {
		swiper.autoplay.start();
	});
}

function campusBtn(){	
	
	// 대메뉴
	$('.campus-sub').on('click',function(){
		$(this).parent().toggleClass('on').siblings().removeClass('on')
	})
	$('.campus-depth02 a').on('click',function(e){
		e.preventDefault()
		$(this).parent().parent().removeClass('on')
		
	})

	// 러셀 지도메뉴
	$('#russelmap').each(function(){
		var $campus_bt	= $(this).children('#russelmap').find('a');
		var list =  $campus_bt.length
		rand = Math.floor(Math.random() * $campus_bt.length); 
		var cam_cd = $campus_bt.eq(rand).data("campuscd");
		
		OpenRussel(cam_cd,'russel');

		$campus_bt.eq(rand).addClass('on').siblings().removeClass('on')
		$campus_bt.parent().siblings('.info-box').eq(rand).addClass('on').siblings().removeClass('on')

		$campus_bt.on('click',function(e){			
			e.preventDefault()
			var i =	$(this).index()
			var $tabItems	= $(this).parent().siblings('.info-box');

			$(this).addClass('on').siblings().removeClass('on')
			$tabItems.eq(i).addClass('on').siblings().removeClass('on')
		})
	});

	// 코어 지도메뉴
	$('#coremap').each(function(){
		var $campus_bt	= $(this).children('#coremap').find('a');
		var list =  $campus_bt.length
		rand = Math.floor(Math.random() * $campus_bt.length); 
		var cam_cd = $campus_bt.eq(rand).data("campuscd");
		
		OpenCore(cam_cd,'core');

		$campus_bt.eq(rand).addClass('on').siblings().removeClass('on')
		$campus_bt.parent().siblings('.info-box').eq(rand).addClass('on').siblings().removeClass('on')

		$campus_bt.on('click',function(e){			
			e.preventDefault()
			var i =	$(this).index()
			var $tabItems	= $(this).parent().siblings('.info-box');

			$(this).addClass('on').siblings().removeClass('on')
			$tabItems.eq(i).addClass('on').siblings().removeClass('on')
		})
	});
}
