
$(function(){
	// 롤링
	var studyHall = new Swiper('.slide01', {
		loop: true,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.slide-pagination',
		}
	});

	var studyHall2 = new Swiper('.slide02', {
		loop: true,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.pagination',
		}
	});

	var menu = ['reason <br> <strong>01</strong>', 'reason <br> <strong>02</strong>', 'reason <br> <strong>03</strong>', 'reason <br> <strong>04</strong>'];
	var studyHall3 = new Swiper('.slide03', {
		loop: true,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.pagination.pagination-bottom, .pagination.pagination-top',
			clickable: true,
			renderBullet: function (index, className) {
			return '<span class="' + className + '">' + (menu[index]) + '</span>';
			},
		},
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