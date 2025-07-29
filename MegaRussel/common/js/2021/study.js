

$(document).ready(function(){
	var $top = $(".study-wrap").offset().top;
	
	if(window.location.hash) {
		var hash = window.location.hash.substring(1);
		$('html,body').animate({
			'scrollTop':   $('#' + hash).offset().top
		}, 0);
	}else{
		$("html, body").animate({scrollTop:$top},500);
	}	
	fixmenu();
	tab();
})

function tab(){
	// ÅÇ
	$('.tab li').on('click',function(){
		var idx = $('.tab-wrap .tab li').index($(this));
		$(this).addClass('on').siblings().removeClass('on');
		$('.tab-con').eq(idx).addClass('on').siblings('.tab-con').removeClass('on');
	});
}
// °íÁ¤¸Þ´º
function fixmenu(){
	var $doc    = $('html, body')
	var $fix_top    = $(".js-fix-menu-wrap").offset().top;
	var $fix_menu   = $(".js-fix-menu-wrap");
	var $bt_fix     = $(".js-fix-menu a");
	var $cont     = $(".js-cont");	

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
		}else{
			$fix_menu.removeClass("fix-on").addClass("fix-off");			
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

