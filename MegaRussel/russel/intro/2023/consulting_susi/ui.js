$(function() {
	var $top = $('.consulting-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	
	//탭1의 padding-top설정
	$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"190px"})
	
    fixmenu();
	rSlide()
	rSlide02()
	rSlide03()
	rSlide04()

});



// 고정메뉴
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();
	var proOffset = $('.c-box01').offset().top - $fix_h - 500;
	var cont06 = $('.cont06').offset().top - $fix_h

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
		if (i == 0) {
			$doc.animate({scrollTop:$cont_top}, 800);
		}else {
			$doc.animate({scrollTop:$cont_top - $fix_h + 2}, 800);
		}
	});

	//맨 아래 팝업
	$(window).scroll(function(){
		var scrollTop = $(window).scrollTop();
		var innerHeight = $(window).innerHeight();
		var scrollHeight = $('body').prop('scrollHeight');

		// console.log(scrollTop)
		// console.log(innerHeight)
		// console.log(scrollHeight)
		
		if (scrollTop + innerHeight >= scrollHeight) {
			$('.tst-pop-wrap').addClass('on')

		} else {
			$('.tst-pop-wrap').removeClass('on')

		}

	});



	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

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

		
		// 컨설팅 진행 순서

		if(scroll >= proOffset){
			$(".progress-step > ul").addClass('on');
			if(scroll >= cont06) {
				$(".progress-step > ul").removeClass('on');
			}
		}else {
			$(".progress-step > ul").removeClass('on');
		}

	});
}


// 롤링이미지
function rSlide(){
	var rSwiper = new Swiper('.roll-swiper',{
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
		spaceBetween: 20,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.roll-swiper').hover(
		function(){
			rSwiper.autoplay.stop();
    	},
		function(){
			rSwiper.autoplay.start();
		}
	);
}
function rSlide02(){
	var rSwiper02 = new Swiper('.review-rolling',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		speed: 2500,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
		direction: 'vertical',
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.review-rolling').hover(
		function(){
			rSwiper02.autoplay.stop();
    	},
		function(){
			rSwiper02.autoplay.start();
		}
	);
}
function rSlide03(){
	var rSwiper03 = new Swiper('.gall-rolling',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 5000,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 20,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.gall-rolling').hover(
		function(){
			rSwiper03.autoplay.stop();
    	},
		function(){
			rSwiper03.autoplay.start();
		}
	);
}
function rSlide04(){
	var rSwiper04 = new Swiper('.gall-rolling02',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 5000,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 20,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.gall-rolling02').hover(
		function(){
			rSwiper04.autoplay.stop();
    	},
		function(){
			rSwiper04.autoplay.start();
		}
	);
}
// 대학검색 팝업
(function($){
    $(document).ready(function(){
    
        // placeholder
        (function(){
            $.fn.placeholder = function(){
                return this.each(function(){
                    var root = $(this);
                    root.find('input').focusin(function(){
                        $(this).closest(root).find('label').hide();
                    });
                    root.find('input').focusout(function(){
                        if($(this).val().length == 0){
                            $(this).closest(root).find('label').show();
                        };
                    });
                    if(root.find('input').val().length > 0){
                        root.find('label').hide();
                    };
                });
            };
            $('.searchBox').placeholder();
        })();
        // / placeholder
    
    });
})(jQuery);