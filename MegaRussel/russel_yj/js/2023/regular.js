$(function() {
	var $top = $('.regular-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	//탭1의 padding-top설정
	$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"190px"})
	
    fixmenu();

});

var start = true;
// 고정메뉴
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();

	// fixmenu 클릭 시 해당 영역으로 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;
		if (i == 0) {
			$doc.animate({scrollTop:$cont_top}, 800);
		}else {
			$doc.animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
	});

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


	});
}







