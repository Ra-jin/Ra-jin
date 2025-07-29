$(function() {
	//gnb틀고정용
	$(window).load(function(){
		//페이지 로드 시 스크롤 visual로 이동
		$('html, body').animate({
			scrollTop : $('.system-wrap').offset().top + 1			
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
		var target = document.querySelector('.system-wrap');
		var endY = target.getBoundingClientRect().top + window.pageYOffset;

		////스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);

	fixMenu()
	infoSlide();
	dailySlide();
});


function fixMenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top  + 80;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height()- 1;

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top - $fix_h;
		
        // 헤더가 pos-sticky 없을때 첫번째 탭 타겟위치
		if (i == 0) {
			if($('.headerWrap').hasClass('pos-sticky') === false){
				$('html, body').animate({scrollTop:$cont_top - $fix_h}, 800);
			}
			else{
				// 첫번째 탭 클릭시 컨텐츠 위에서 아래로 스크롤이동
				if($cont_top > preScrollTop ){
					$('html, body').animate({scrollTop:$cont_top  }, 800);				
				}
				// 첫번째 탭 컨텐츠 아래에서 위로 스크롤이동
				else{
					$('html, body').animate({scrollTop:$cont_top - $fix_h - 17 }, 800);
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
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
	});
}

// 슬라이드 공통
function infoSlide(){
	$(".slide-pic").each(function(i){
		var $this = $(this);
		var slide = $this.addClass('slide-pic-' + parseInt(i+1))
	
		var swiper = new Swiper(slide, {
			slidesPerView: 3,
			spaceBetween: 29,
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			loop : true,
			loopAdditionalSlides : 1,
			autoplay: {
				delay: 3000,
				disableOnInteraction: false,
			},
		});

		slide.hover(
			function(){
				swiper.autoplay.stop()
			},
			function(){
				swiper.autoplay.start()
			}
		)
    });
}

function dailySlide(){
	$(".daily-slide").each(function(i){
		var $this = $(this);
		var slide = $this.addClass('daily-slide-' + parseInt(i+1))
		// var pagination = $(".swiper-pagination").addClass('swiper-pagination-' + parseInt(i+1))
	
		var swiper = new Swiper(slide, {
			slidesPerView: 'auto',
			loop : true,
			loopAdditionalSlides : 1,
			autoplay: {
				delay: 3000,
				disableOnInteraction: false,
			},
			pagination: {
				el: '.swiper-pagination',
				clickable: true
			}
		});

		slide.hover(
			function(){
				swiper.autoplay.stop() 
			},
			function(){
				swiper.autoplay.start()
			}
		)
    });
}

// 슬라이드 팝업

let popup;

function imgPop(url){
	popup = window.open(url,"_blank","menubar=no, toolbar=no, location=0, scrollbars=no, resizable=no, width=1250, height=920");
}



