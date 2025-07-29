$(document).ready(function(){
	var $top = $('.regular-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);
    //tab();
    autoPlay();
    slideType();
    arcodian();
	fixmenu();

	$('.qna-tit').on('click',function(){
		$(this).toggleClass('on')
		$(this).next('.qna-txt').toggleClass('on')
	})
});


// 고정메뉴
function fixmenu(){
	var $doc    = $('html, body');
	var $bt_fix     = $('.js-fix-menu a, .js-fix-menu span');
	var $bt_sub     = $(".js-fix-menu .bt-sub");
	var $bt_stab    = $('.js-fix-menu span');
	var $cont     	= $('.js-cont');
	//비주얼 위치
	//var $contFront_H =$('.js-cont').eq(0).outerHeight() /2
	var $contFront  = $('.js-cont').eq(0).offset().top;
	//보라색 배경 영역 
	// var $contT_H =$('.cont-title').outerHeight() /2
	// var $contT = $('.cont-title').offset().top - $contT_H;
	// var $contS  = $('.cont-sys').offset().top - $contT_H;
	//단과 강사진
	// var $contD_H = $('.cont-danka').outerHeight() /2
	// var $contD  = $('.cont-danka').offset().top - 120;
	// var $contM  = $('.cont-manage').offset().top - $contD_H;


	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i       = $(this).index();
		var cont_on  = $cont.eq(i);
		var cont_top = cont_on.offset().top;
		$doc.animate({scrollTop:cont_top})
	})

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		//상단 비주얼 숨김처리
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
				$offImg.attr("src", function(idx, j){ return j.replace("_on.png","_off.png"); });
				$onImg.attr("src", function(idx, j){ return j.replace("_off.png","_on.png"); });
			}
			if($bt_stab.hasClass("on")){
				$bt_sub.addClass('on');
				var $onImg2 	= $bt_sub.find('img');
				$onImg2.attr("src", function(idx, j){ return j.replace("_off.png","_on.png"); });
			}
		})
	});
}

// 탭메뉴
function tab(){
	var $bt     = $('.js-tab-bt > a');
	var $cont   = $('.js-tab-cont > .box');
	
	$bt.first().addClass('on');
	$cont.first().addClass('on');

	$bt.on('click',function(e){
		e.preventDefault();
		var idx 	= $(this).index();
		$bt.eq(idx).addClass('on').siblings().removeClass('on');
		$cont.eq(idx).addClass('on').siblings().removeClass('on');
	})
}


function autoPlay() {
    var i = 0;
	setInterval(time, 4000);
	function time(){
		var $comment = $('.review-box .stu-info');
		var $offImg = $('.review-box .stu-info img');
		var $onImg 	= $comment.eq(i).addClass('on').find('img');

		$comment.removeClass('on');
		$comment.eq(i).addClass('on');
				
		$offImg.attr("src", function(idx, j){ return j.replace("_on.png","_off.png"); });
		$onImg.attr("src", function(idx, j){ return j.replace("_off.png","_on.png"); });

		i++;
		if(i >= $comment.length) i = 0;
	}

    var j = 0;
	var interval = setInterval(activeJs, 5000);
	function activeJs(){
		var $system = $('.js-system-wrap .box, .js-system-wrap .tit-box p');
		$system.removeClass('on');
		$system.eq(j).addClass('on');

        var $sysTxt = $('.js-system-wrap .tit-box p');
		$sysTxt.removeClass('on');
		$sysTxt.eq(j).addClass('on');

		j++;
		if(j >= $system.length) j = 0;
        if(j >= $sysTxt.length) j = 0;

        $system.on("mouseover", function(){
			clearInterval(interval);
			interval = false;
		});

        $system.on("mouseleave", function(){
            if(interval == false) {
				interval = setInterval(activeJs, 5000);
			}
		});
	}
}

function randomIdx()  {//슬라이드 랜덤
    var slideTotal = $('.js-teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}


function slideType(){
    $('.js-regular-tab').each(function(i){
		var $this = $(this);
		var owl = $this.addClass('regular-tab' + 0 +  Number(i + 1));
		owl.owlCarousel({
			loop:true,              //무한루프
			items:1,                //아이템 갯수
			autoplay: {
                delay: 0,
                disableOnInteraction: false,
            },     //자동재생
			autoplayTimeout:5000,
			dots:true,
			dotsData:true,
			autoplayHoverPause:true
		});
        $(".regular-tab01").owlCarousel({
            nav:false
        });
		$('.js-regular-tab .owl-item').on('mouseenter',function(e){
			$(this).closest('.owl-carousel').trigger('stop.owl.autoplay');
		});
		$('.js-regular-tab .owl-item').on('mouseleave',function(e){
			$(this).closest('.owl-carousel').trigger('play.owl.autoplay',[500]);
		});
	});
	//담임선생님 이미지 스크롤
	var swiper = new Swiper('.js-teacher-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 3000,
		grabCursor: true,
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 20,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
    $('.js-teacher-swiper .swiper-slide').on('mouseover', function(){
        swiper.autoplay.stop();
    });
    $('.js-teacher-swiper .swiper-slide').on('mouseout', function(){
        swiper.autoplay.start();
    });
    //학습 동선 & 시설 환경
    $(".js-facility-swiper").owlCarousel({
        loop:true,              //무한루프
        items:1,                //아이템 갯수
        autoplay:true,          //자동재생
        autoplayTimeout:6000,
        nav:true,
        dots:false,
        autoplayHoverPause:true //롤오버시 자동재생 멈춤
    });
	//만점자 후기
    $(".js-review-swiper").owlCarousel({
        loop:true,              //무한루프
        items:1,                //아이템 갯수
        autoplay:true,          //자동재생
        autoplayTimeout:7000,
        // nav:true,
        dots:true,
		slidesPerView: "auto",
		autoplayHoverPause:true //롤오버시 자동재생 멈춤
    });
}

function arcodian() {
    var $list = $(".arcodian-list li")
    var $count = $list.length;
    var $num = Math.floor(Math.random() * $count);
    $list.eq($num).addClass("on")
    $list.on("mouseenter", function(){
        $(this).addClass("on").siblings(".arcodian-list li").removeClass("on");
    });

}

function playPop(url){
	var wnd = window.open("", "talk", "width=750,height=600,scrollbars=0,resizable=no,location=no,");
	wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
}




