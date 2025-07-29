$(document).ready(function(){
	var $top = $('.full-danka').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	tab();
	fixmenu();
})

// 탭메뉴
function tab(){
	var $bt     = $('.js-tab-bt > a');
	var src = $bt.find(' > img').attr('src');
	var $cont   = $('.js-tab-cont');
	
	$bt.first().addClass('on');
	$cont.first().addClass('on');

	$bt.on('click',function(e){
		e.preventDefault();
		var idx 	= $(this).index();
		var $offImg = $('.js-tab-bt > a > img')
		var $onImg 	= $(this).find('img');

		$offImg.attr('src', $offImg.attr('src').replace("on", "off"));
		$onImg.attr('src', $onImg.attr('src').replace("off", "on"));

		$bt.eq(idx).addClass('on').siblings().removeClass('on');
		$cont.eq(idx).addClass('on').siblings().removeClass('on');
	})
}

// 고정메뉴
function fixmenu(){
	var $doc    = $('html, body')
	var $cont_top	= $('.half-wrap').offset().top;
	var $fix_top    = $('.js-fix-menu').parent().offset().top;
	var $fix_menu   = $('.js-fix-menu');
	var $bt_fix     = $('.js-fix-menu a');
	var $cont     	= $('.js-cont');
	var $fix_h 		= $('.js-fix-menu').height();

	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i       = $(this).index();
		var cont_on  = $cont.eq(i);
		var cont_top = cont_on.offset().top;

		$doc.animate({scrollTop:cont_top - $fix_h})
	})

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if(scroll > $cont_top){
			$('.half-quick').css({
				'position':'fixed',
				'top':100,
			});
		}else{
			$('.half-quick').css({
				'position':'absolute',
				'top':$cont_top,
			});
		}

		if(scroll >= $fix_top){
			$fix_menu.css({
				'position':'fixed',
			});
			$('.fix-menu-wrap').addClass('fix');
		}else{
			$fix_menu.css({
				'position':'absolute',
			});
			
			$('.fix-menu-wrap').removeClass('fix')
		}

		$cont.each(function(i){
			var target      = $cont.eq(i);
			var target_top  = Math.floor(target.offset().top - $fix_h);

			if(scroll >= target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on')
			}
		})

	});
}

// 1개 슬라이드 공통
$('.js-half-slide').each(function(i){
	var $this = $(this);
	var owl = $this.addClass('js-slide-' +  Number(i + 1));

	owl.owlCarousel({
		loop:true,              //무한루프
		margin:0,              //슬라이드 간 간격
		dots: true,			//페이지 dot
        dotsData: true,
		nav:true,               //네비게이션
		items:1,                //아이템 갯수
		autoplay:true,          //자동재생
		autoplaySpeed: 400,
		autoplayTimeout:3000,   //자동시간 3초
	});

	$this.mouseover(function(){
		owl.trigger('stop.owl.autoplay');
	})
  
	$this.mouseleave(function(){
		owl.trigger('play.owl.autoplay');
	})
});

// 반수반 스라이드

$(function(){
	var owlMock = $('.mock-slide');
	var owlMock_l = $('.mock-slide .bt-mock').length;
	// var owl_list = $('.mock-slide div').lenght();
	if(owlMock_l > 4){
		owlMock.owlCarousel({
			mouseDrag:true,
			loop:false,              //무한루프
			dots: false,			//페이지 dot
			nav:true,               //네비게이션
			items:4,               //아이템 갯수
			autoplay:false          //자동재생
		});
	}else{
		owlMock.owlCarousel({
			mouseDrag:false,
			loop:false,              //무한루프
			dots: false,			//페이지 dot
			nav:false,               //네비게이션
			items:4,                //아이템 갯수
			autoplay:false,          //자동재생
		});

	}
})

// 모의고사 탭
$(function(){
	var $bt_mock = $('.bt-mock').parent();
	var $cont_mock = $('.cont-mock p');

	$bt_mock.first().addClass('on');
	$cont_mock.first().addClass('on');

	$bt_mock.on('click',function(){
		var i = $(this).index();
		$(this).addClass('on').siblings().removeClass('on');
		$cont_mock.eq(i).addClass('on').siblings().removeClass('on')
	})
})

// 수업후기 레이어
$('.review').hover(
	function()
	{
		$(this).children('.txt-hover').css('display','block');
	},
	function(){
		$(this).children('.txt-hover').css('display','none');
	}
)

// 인터뷰 영상 팝업
function winIn(url){
	window.open(url,'interview','width=860,height=480,scrollbars=no')
}