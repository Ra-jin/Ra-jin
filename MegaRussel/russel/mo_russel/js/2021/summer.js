$(function(){
		$('.js-slide-tab').on('click',function(){
			// 롤링
			
			var studyHall = new Swiper('.slide01', {
				loop: true,
				autoplay: {
					delay: 2000,
					disableOnInteraction: false,
				},
				pagination: {
					el: '.slide-pagination',
				}
			});
		});

		$('.js-mask').on('click',function(){
			$(this).next('.layer-wrap').addClass('on');
		});
		$('.js-close-mask').on('click',function(){
			$('.layer-wrap').removeClass('on');
		});

	});

    maskBg();
    tabMenu(".tab",".tab-con");//탭메뉴 고정