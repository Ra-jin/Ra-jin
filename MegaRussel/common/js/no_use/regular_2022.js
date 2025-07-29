$(document).ready(function(){
	var $top = $(".full-danka .visual").offset().top;
	$("html, body").animate({scrollTop:$top},500);
	fixmenu();
	tab();
})

// 탭메뉴
function tab(){
	var $btn = $(".tab-inner > a");
	var $cont = $(".tab-cont > .box");
	$btn.first().addClass("on");
	$cont.first().addClass("on");
	$btn.on("click",function(e){
		e.preventDefault();
		var idx = $(this).index();
		$btn.eq(idx).addClass("on").siblings().removeClass("on");
		$cont.eq(idx).addClass("on").siblings().removeClass("on");
	});
}

// 고정메뉴
function fixmenu(){
	var $doc    = $('html, body')
	var $fix_top    = $(".js-fix-menu-wrap").offset().top;
	var $fix_menu   = $(".js-fix-menu-wrap");
	var $bt_fix     = $(".js-fix-menu a");
	var $cont     = $(".js-cont");
	//var $video     = $(".videoClip")

	$bt_fix.on("click",function(e){
		e.preventDefault();
		var i       = $(this).index();
		var cont_on  = $cont.eq(i);
		var cont_top = cont_on.offset().top;

		$doc.animate({scrollTop:cont_top})
	})

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if(scroll >= $fix_top){
			$fix_menu.addClass("fix-on");

		}else{
			$fix_menu.removeClass("fix-on");
		}
		$cont.each(function(i){
			var target      = $cont.eq(i);
			var target_top  = Math.floor(target.offset().top);

			if(scroll >= target_top){
				$bt_fix.eq(i).addClass("on").siblings().removeClass("on")
			}

		})

	});
}