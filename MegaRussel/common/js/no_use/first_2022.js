$(document).ready(function(){
	var $top = $(".first-wrap").offset().top;
	$("html, body").animate({scrollTop:$top},500);
	fixmenu();
	tab();
})

// 합격생 동영상
$(".bt-play").on("click",function(e){
	e.preventDefault();
	var url = $(this).attr('href');
	$(".view-play, .mask, body").addClass("play-on")
	$("#frame").attr('src',url);
})
$(".play-close").on("click",function(e){
	e.preventDefault();
	$(".view-play, .mask, body").removeClass("play-on")
	$("#frame").attr('src',' ');
})

// 탭메뉴
function tab(){
	var $bt     = $(".tab-inner > a");
	var $cont   = $(".tab-cont > p");
	
	$bt.first().addClass("on");
	$cont.first().addClass("on");

	$bt.on("click",function(e){
		e.preventDefault();
		var idx = $(this).index();

		$bt.eq(idx).addClass("on").siblings().removeClass("on");
		$cont.eq(idx).addClass("on").siblings().removeClass("on");
	})
}

// 고정메뉴
function fixmenu(){
	var $doc    = $('html, body')
	var $fix_top    = $(".js-fix-menu-wrap").offset().top;
	var $fix_menu   = $(".js-fix-menu-wrap");
	var $bt_fix     = $(".js-fix-menu a");
	var $cont     = $(".js-cont");
	var $video     = $(".videoClip")

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
			$fix_menu.removeClass("fix-off").addClass("fix-on");
			$video.fadeIn();

		}else{
			$fix_menu.removeClass("fix-on").addClass("fix-off");
			$video.fadeOut();
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