$(function() {
    var $top = $('.summer-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

    fixmenu();
	slidecont01();
	tSlide();
	bookSlide();
	mockSlide();
});

function tab() {
    $tab.each(function() {
        var $this = $(this);
    });
}
// 고정메뉴
function fixmenu(){
	var $doc = $('html, body')
	var $fix_top = $('.js-fix-menu').offset().top;
	var $vis_top = $('.visual').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $cont = $('.js-cont');
	var $fix_h = $('.js-fix-menu').height();

	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
        $doc.animate({scrollTop:$cont_top}, 800);

	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		// console.log($(window).scrollTop());
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		if(scroll >= $vis_top - 50){
			$('.visual').addClass('on');
		}
		// var $cont6 = $('.cont06').offset().top;
		// var $cont9 = $('.cont09').offset().top;
		// if(scroll >= $cont6){
		// 	$('.bn_float').addClass('fix');
		// }
		// if(scroll < $cont6 || scroll >= $cont9) {
		// 	$('.bn_float').removeClass('fix')
		// };

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		var cont04 		= $('.cont02');
        var $cont04_top = cont04.offset().top - $fix_h;
        if(scroll >= $cont04_top){
            //cont04.addClass("on");
            countNum();
        }
	});
}

// cont04 슬라이드
function slidecont01(){
	var slidecont01 = new Swiper('.slide-cont01', {
		loop: true,
		centeredSlides: true,
		
		slidesPerView: "auto",
		speed : 500,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.page',
		},
	 });
   }

   var owl = $('.slide-cont02');
        owl.owlCarousel({
        	loop:true,              //무한루프
        	margin:10,              //슬라이드 간 간격
        	items:1,                //아이템 갯수
        	autoplay:true,          //자동재생
        	autoplayTimeout:5000,   //자동시간 3초
        	autoplayHoverPause:true, //롤오버시 자동재생 멈춤
        	dots:false,
        
        });

	var owl = $('.slide-cont03');
    owl.owlCarousel({
    	loop:true,              //무한루프
		nav:true,
    	items:1,                //아이템 갯수
    	autoplay:true,          //자동재생
    	autoplayTimeout:5000,   //자동시간 3초
    	autoplayHoverPause:true, //롤오버시 자동재생 멈춤
    	dots:false,
    
    });

	var owl = $('.slide-cont04');
    owl.owlCarousel({
    	loop:true,              //무한루프
		nav:true,
    	items:1,                //아이템 갯수
    	autoplay:true,          //자동재생
    	autoplayTimeout:5000,   //자동시간 3초
    	autoplayHoverPause:true, //롤오버시 자동재생 멈춤
    	dots:false,
    
    });

function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		
		{
			duration: 1000,
			easing:'swing',
			step: function() {
			$this.text(Math.floor(this.countNum));
			},
			complete: function() {
			$this.text(this.countNum);
			}
		});
	});
}

// 탭메뉴
$('.js-bt-tab').each(function(){
	var $bt 	= $(this).children('.tab').find("a");
	var $cont	= $(this).parent().find('.js-tab-cont')

	$bt.first().addClass('on');
	$cont.first().addClass('on');

	$bt.on('click',function(e){
		e.preventDefault();
		var idx 	= $(this).index();
		$bt.eq(idx).addClass('on').siblings().removeClass('on');
		$cont.eq(idx).addClass('on').siblings().removeClass('on');
	})
})

//슬라이드 랜덤
function randomIdx()  {
    var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
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
//강사진

function bookSlide(){
	var bSwiper = new Swiper('.js-book-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
		speed: 2500,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.js-book-swiper').hover(
		function(){
			bSwiper.autoplay.stop();
    	},
		function(){
			bSwiper.autoplay.start();
		}
	);
}
function mockSlide(){
	var mockSlide = new Swiper('.js-mock-swiper', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		speed : 500,
		allowTouchMove: true,
		autoplay:true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		}
	});

	$('.js-mock-swiper').hover(
		function(){
			mockSlide.autoplay.stop()
		},
		function(){
			mockSlide.autoplay.start(0)
		}
	);
}

// 부천 모집요강 탭
$('.tab li').on('click', function(){
	var idx = $(this).index();
	$(this).addClass('on').siblings().removeClass('on');
	$(this).parent().next().children('.content').removeClass('on');
	$(this).parent().next().children('.content').eq(idx).addClass('on');
});