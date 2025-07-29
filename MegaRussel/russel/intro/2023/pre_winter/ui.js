$(function() {
	var $top = $('.pre-winter-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	studySlide();
	fixmenu();
	nav();
});


// 바자관시간표 슬라이드
function studySlide(){

	var studyNav = new Swiper('.study-slide-nav', {
		slidesPerView: 2,
		freeMode: false,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});

	var studySlide = new Swiper('.study-slide', {
		loop: false,
		centeredSlides: true,
		allowTouchMove: true,
		autoHeight: true,
		autoplay:false,
		thumbs: {
			swiper: studyNav
		},
		spaceBetween: 100,

		on: {
			beforeTransitionStart: function () {
				// 슬라이드 change시 클래스 on 추가 및 제거
				let activeIndex = this.realIndex;
				$('.study-slide-nav .swiper-slide-thumb-active').addClass('on').siblings().removeClass('on');
				

				//스위치 모션 온오프				
				var btnBar = $('.btn-bar');
				
				if(activeIndex == 1){
					btnBar.addClass('rightOn');
				}

				if(activeIndex  == 0){
					btnBar.removeClass('rightOn');
				}
				
			},
			
		}
	});


}



// 프로그램 갤러리 슬라이드
$(function(){
	$(".js-gallery").each(function(index){
	  var $this = $(this);
	  var galleryClass = "gallery-" + (index + 1);
	  $this.addClass(galleryClass);
 
	  var gallery = new Swiper("." + galleryClass, { 
	   effect: 'fade',
	   spaceBetween: 10,
	   slideToClickedSlide : true,
	   loop:true,
	   loopedSlides: 7,
	   touchRatio: 0,
	   watchSlidesProgress: true,
	   slideToClickedSlide: true,
	   autoplay: {
		 delay: 3000,
		 disableOnInteraction: false,
	   },
	   pagination: {
		  el: '.' + galleryClass + ' .js-thumb',
		  clickable: true,

		  renderBullet: function (index, className) {
			var gSlide = $("." + galleryClass + ' .swiper-slide img').eq(index); 
			var imagePath = gSlide.attr('src');
			var modifiedImagePath = imagePath.replace('pro_img', 'pro_img_on'); // 이미지 경로 끝에 '_on' 추가
			return '<span class="' + className + '"><img src="'+ modifiedImagePath +'"></span>';
		 }
	   },

	   navigation: {
		 nextEl: '.' + galleryClass + ' .swiper-button-next',
		 prevEl: '.' + galleryClass + ' .swiper-button-prev'
	   }
	  });
	});
 });



// 스크롤 이벤트
function fixmenu(){

	//스크롤 이벤트
	$(window).scroll(function(){

		//스크롤 시 해당 컨텐츠 on
		var $contScl	= $(".cont-container");
		var winScl	= $(window).scrollTop();
	
		$contScl.each(function(idx){
			var target      = $contScl.eq(idx);
			var target_top  = Math.floor(target.offset().top) - 250;
	
			if(winScl >= target_top){
				$contScl.eq(idx).addClass("on");
			}
		}) 


	});
}




//왼쪽 고정 네비 클래스 on 붙이기
function nav(){
	var $doc = $('html, body');
	var $bt_nav = $('.nav-wrap li');
	var $cont = $('.pro-cont .cont-pro');
	var $fix_h = $('.js-fix-menu').height();

	$bt_nav.first().addClass("on");

	$bt_nav.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var cont_on = $cont.eq(i);
		var cont_top = cont_on.offset().top - 0;
		$doc.animate({scrollTop:cont_top});
	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop() + 180;
		$cont.each(function(i){

			var $cont_top  = $cont.eq(i).offset().top - $fix_h;

			if(scroll > $cont_top){
				$bt_nav.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
	});
}



//왼쪽 고정 네비 스크롤 이벤트
$(window).scroll(function(){

	var scroll = $(window).scrollTop();
	var scrollInner = $(window).scrollTop() + 424 + $('.nav-in ul').height();

	var $contPro = $('.cont-pro');
	var $bt_fix = $('.nav-wrap .nav-in ul li');
	
	$contPro.each(function(i){
		var navCont      = $("#nav-cont");
		var navCont_top  = Math.floor(navCont.offset().top);

		var $btmCon = $('.line-banner.nav-end')
		var $btmCon_top  = Math.floor($btmCon.offset().top);
	

			
		if (scroll >= navCont_top && scrollInner < $btmCon_top) {
			$('.nav-in').addClass('fix');
		} else {
			$('.nav-in').removeClass('fix');
		}
		});
	
		$contPro.each(function(i){
		var $target = $contPro.eq(i);
		var $target_top  = Math.floor($target.offset().top) - 0;
		if(scroll >= $target_top){
			$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
		}
	});
});