$(document).ready(function(){
	var $top = $('.first-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	fixmenu();
    slideType();
    slideTab();
	autoPlay();

	$('.qna-tit').on('click',function(){
		$(this).toggleClass('on')
		$(this).next('.qna-txt').toggleClass('on')
	})
})

// 고정메뉴
function fixmenu(){
	var $doc    = $('html, body');
	var $bt_fix     = $('.js-fix-menu a, .js-fix-menu span');
	var $bt_sub     = $(".js-fix-menu a.bt-sub");
	var $bt_stab    = $('.js-fix-menu span');
	var $cont     	= $('.js-cont');
	var $contFront  = $('.js-cont').eq(0).offset().top;

	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i       = $(this).index();
		var cont_on  = $cont.eq(i);
		var cont_top = cont_on.offset().top;

		$doc.animate({scrollTop:cont_top})
	})

	

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		if(scroll >= $contFront){
			$('.fix-menu-wrap').addClass('on');
		} else{
			$('.fix-menu-wrap').removeClass('on');
		}

		$cont.each(function(i){
			var target      = $cont.eq(i);
			var target_top  = Math.floor(target.offset().top);

			if(scroll >= target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');

				var $offImg = $('.js-fix-menu > a > img');
				var $onImg 	= $bt_fix.eq(i).find('img');
				$offImg.attr("src", function(idx, j){ return j.replace("_on.jpg","_off.jpg"); });
				$onImg.attr("src", function(idx, j){ return j.replace("_off.jpg","_on.jpg"); });
				$bt_stab.removeClass('bg');
			}
			if($bt_sub.hasClass("on")){
				$bt_stab.addClass('bg');
			}
			if($bt_stab.hasClass("on")){
				//$bt_stab.addClass('bg');
				$bt_sub.addClass('on');
				var $onImg2 	= $bt_sub.find('img');
				$onImg2.attr("src", function(idx, j){ return j.replace("_off.jpg","_on.jpg"); });
			}
		})

	});
}
function autoPlay() {
	var i = 0;
	setInterval(time, 2000);
	function time(){
		var $comment = $('.danka-info p');
		$comment.removeClass('on');
		$comment.eq(i).addClass('on');
		i++;
		if(i >= $comment.length) i = 0;
	}

	var j = 0;
	var interval = setInterval(rolling, 4000);
	function rolling(){
		var $circle = $('.circle-box .circle');
		$circle.removeClass('on');
		$circle.eq(j).addClass('on');
		j++;
		if(j >= $circle.length) j = 0;

		$circle.mouseover(function() {
			clearInterval(interval);
			interval = false;
		});

		$circle.mouseleave(function() {
			if(interval == false) {
				interval = setInterval(rolling, 4000);
			}
		});
	}

	var t = 0;
	setInterval(teacher, 2000);
	function teacher(){
		var $tInfo = $('.t-info-box .t-txt-box p');
		$tInfo.removeClass('on');
		$tInfo.eq(t).addClass('on');
		t++;
		if(t >= $tInfo.length) t = 0;
	}
}

function slideType(){	
    //메인 tab01 슬라이드
    $(".first-cont01").owlCarousel({
        loop:true,              //무한루프
        items:1,                //아이템 갯수
        autoplay:true,          //자동재생
        autoplayTimeout:6000,
        dots:true,
        autoplayHoverPause:true //롤오버시 자동재생 멈춤
    });
	//담임선생님 이미지 스크롤
	var swiperScroll = new Swiper('.first-scroll-x',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides:true,
		grabCursor: true,
		speed: 3000,
		slidesPerView: 'auto',
		spaceBetween: 10,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});


}

function slideTab(){	
	$('.js-first-slide').each(function(i){
		var $this = $(this);
		var owl = $this.addClass('first-slide' + 0 +  Number(i + 1));
		owl.owlCarousel({
			loop:true,              //무한루프
			items:1,                //아이템 갯수
			autoplay:true,          //자동재생
			autoplayTimeout:5000,
			dots:true,
			dotsData:true,
			autoplayHoverPause:true
		});
		$('.js-first-slide .owl-item').on('mouseenter',function(e){
			$(this).closest('.owl-carousel').trigger('stop.owl.autoplay');
		});
		$('.js-first-slide .owl-item').on('mouseleave',function(e){
			$(this).closest('.owl-carousel').trigger('play.owl.autoplay',[500]);
		});
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
}

function countNumBak() {
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
			$this.text(0);
			},
			complete: function() {
			$this.text(0);
			}
		});
	});

}

function playPop(url){

	var wnd = window.open("", "talk", "width=750,height=600,scrollbars=0,resizable=no,location=no,");
	wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
}































