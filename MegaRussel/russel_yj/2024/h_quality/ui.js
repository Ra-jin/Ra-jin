
$(document).ready(function(){
	// 로딩 후 포커스
	// var bodytop	= $(".h-quality-wrap").offset().top;
	// $("html,body").animate({scrollTop:bodytop},700)
	//gnb틀고정용
	var $top2 = $(".h-quality-wrap").position().top
	var headerH = $('.headerWrap').outerHeight();
	var headerfix = $('.headerWrap').hasClass('pos-sticky');
	window.onload = function() {
		setTimeout(function(){        
			if(headerfix == true){		
				$("html,body").animate({scrollTop: 0}, 0);	
				$('body, html').animate({scrollTop : 183 }, 500)
			}
			else{                    
				$('body, html').animate({scrollTop : 183 }, 500)
			}              
		}, 200);
	}

	visualSlide()
});

function visualSlide() {
	var vSwiper = new Swiper('.visual-slide',{
		speed: 1500,
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