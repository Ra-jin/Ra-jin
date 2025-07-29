$(document).ready(function(){
	var $top = $('.full-danka').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	fixmenu();
})

//클릭시 영상 팝업
function playPop(url){ 
	var popupW = (window.screen.width / 2) - (544 / 2);
	var popupH= (window.screen.height / 2) - (306 / 2);
	var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no,top="+ popupH +",left="+ popupW);
	wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
}

// 고정메뉴
function fixmenu(){
	var $doc    = $('html, body')
	var $cont_top	= $('.summer-wrap').offset().top;
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
			$('.summer-wrap .quick').css({
				'position':'fixed',
				'top':150,
			});
		}else{
			$('.summer-wrap .quick').css({
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

// 2021 수능 전국 수석 이은수학생 슬라이드
$(".js-summer-review").owlCarousel({
    margin:0,              //슬라이드 간 간격
    dots: true,			//페이지 dot
    nav:false,               //네비게이션
    dotsData: true,
    items:1               //아이템 갯수
});

// 콘텐츠 제공 슬라이드
$('.learning-slide .owl-carousel').owlCarousel({
	loop:true,
	margin:40,
	nav:true,
	autoplay:true,
	autoplayTimeout: 2000,
	dots: false,
	autoWidth:true,
});