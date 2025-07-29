$(function () {
	var $top = $('.winter-danka').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	fixmenu();
	tab();
	nav();
	barGraph();
	count();
});


// 고정메뉴
function fixmenu(){
	var $doc    = $('html, body')
	var $fix_top    = $('.js-fix-menu').parent().offset().top;
	var $fix_menu   = $('.js-fix-menu');
	var $bt_fix     = $('.js-fix-menu a');
	var $cont     	= $('.js-cont');
	var $cont_top	= $('.winter-wrap').offset().top;
	var $fix_h 		= $('.js-fix-menu').height();
	var $visual_h = $(".visual-wrap").height();
	var $visual = $(".visual-wrap").offset().top + ($visual_h + $fix_h);
	
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i       = $(this).index();
		var cont_on  = $cont.eq(i);
		var cont_top = cont_on.offset().top;

		$(this).addClass('on').siblings().removeClass('on');
		cont_on.addClass('on').siblings().removeClass('on');
		
		$doc.animate({scrollTop:$visual-$fix_h});
	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

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
			var navCont      = $("#nav-cont");
			var navCont_top  = Math.floor(navCont.offset().top-100);
			var scrollEnd = $(".tab-box02").offset().top + 200;
			
			if (scroll >= navCont_top && scroll < scrollEnd) {
				$('.nav-in').addClass('fix');
				$('.nav-wrap').addClass('on');
			} else {
				$('.nav-in').removeClass('fix');
				$('.nav-wrap').removeClass('on');
			}
		});
	});
}

function nav(){
	//nav
	var $doc = $('html, body');
	var $bt_nav = $('.nav-wrap li'); 
	var $cont = $('.js-cont .js-box');
	var $fix_h = $('.js-fix-menu').height();

	$bt_nav.first().addClass("on");

	$bt_nav.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var cont_on = $cont.eq(i);
		var cont_top = cont_on.offset().top -150;
		$doc.animate({scrollTop:cont_top});
	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		$cont.each(function(i){
			var $cont_top  = $cont.eq(i).offset().top - $fix_h;
			if(scroll >= $cont_top){
				$bt_nav.eq(i).addClass('on').siblings().removeClass('on');
				var $offImg = $('.nav-wrap a > img');
				var $onImg 	= $bt_nav.eq(i).find('img');
				$offImg.attr("src", function(idx, j){ return j.replace("_on.png","_off.png"); });
				$onImg.attr("src", function(idx, j){ return j.replace("_off.png","_on.png"); });

			}
		});
	});
}

	// $(window).scroll(function(){
	// 	var scroll = $(window).scrollTop();
	// 	$cont.each(function(i){
	// 		// var $cont_top  = $cont.eq(i).offset().top;
	// 		var $cont_top  = $cont.eq(i).offset().top - $fix_h;
	// 		if(scroll >= $cont_top - 150){
	// 			$bt_nav.eq(i).addClass('on').siblings().removeClass('on');
	// 		}
	// 	});
	// });






// 탭
function tab(){
	$('.tab-box').each(function(index){
		var $this = $(this);
		var tabWarp = $this.addClass("tab-box" + 0 + Number(index + 1));
		var $bt     = tabWarp.children('.tab-bt').find('a');
		var $cont   = tabWarp.children('.tab-cont').find(' > div');

		$bt.first().addClass('on');
		$bt.first().find('img').attr("src", $bt.first().find('img').attr("src").replace("_off","_on"));
		$cont.first().addClass('on');

		$bt.on('click',function(e){
			e.preventDefault();
			var i = $(this).index();
			var $offImg = $('.tab-box a > img')
			var $onImg 	= $(this).find('img');

			$(this).addClass('on').siblings().removeClass('on');
			$cont.eq(i).addClass('on').siblings().removeClass('on');
			$offImg.attr("src", function(idx, e){ return e.replace("_on.png","_off.png"); });
			$onImg.attr("src", function(idx, e){ return e.replace("_off.png","_on.png"); });
		});
	});
}

//그래프
function barGraph(){
	$(window).scroll(function(){
		var graphScroll = $(window).scrollTop();
		var graphTop = $(".bar-graph-top");
		var $graphTopScroll  = graphTop.offset().top-150;
		if(graphScroll >= $graphTopScroll){
			graphTop.addClass("on");
		} else {
			graphTop.removeClass("on");
		}
	});
};


//카운트
function count(){
	$(window).scroll(function(){
			var scroll = $(window).scrollTop();
			var gTop = $(".count");
			var $gtopScroll  = gTop.offset().top-150;
			if(scroll >= $gtopScroll){
				gTop.addClass("on");
				countNum();
			} else {
				gTop.removeClass("on");
				$('.counter').text(0);
			}
		});
}


function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		
		{
		
			duration: 1500,
			easing:'linear',
			step: function() {
			$this.text(Math.floor(this.countNum));
			},
			complete: function() {
			$this.text(this.countNum);
			}
		});
	});
};

