$(function () {
	var $top = $('.full-danka').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	fixmenu();
	tab();
	nav();
	slide01();
	hoverJs();
	//circleGraph();
});
//원형 그래프
function circleGraph() {
		$('.pie-graph01 .circle').each(function(i){
			var perNum = $(".pie-graph01 .circle"+ 0 +(i+1)).find(".num").text();
			$('.circle'+ 0 +(i+1)).circleProgress({
				value: perNum/100,
				startAngle: -Math.PI/1.95,
				size:218,
				Hsize:219,
				emptyFill:"rgba(0, 0, 0, 0)",
				fill:{
					image:"https://russeldata.megastudy.net/campus/images/russel/intro/2021/winter/full_circle01.png"
				},
				animation:{
					duration:2200,
					easing:"swing"
				},
				lineCap : "butt",
				reverse:false
			}).on('circle-animation-progress', function(event, progress, stepValue) {
				$(this).find('strong').html((stepValue*100).toFixed(1) + '<i>%</i>');
			});
		});
		
		$('.pie-graph02 .circle').each(function(i){
			var perNum = $(".pie-graph02 .circle"+ 0 +(i+1)).find(".num").text();
			$('.circle'+ 0 +(i+1)).circleProgress({
				value: perNum/100,
				startAngle: -Math.PI/1.95,
				size:189,
				Hsize:192,
				emptyFill:"rgba(0, 0, 0, 0)",
				fill: {gradient: ['#3945e4','#5ad1ff','#5ad1ff']},
				animation:{
					duration:2200,
					easing:"swing"
				},
				lineCap : "round",
				thickness:32,
				reverse:false
			}).on('circle-animation-progress', function(event, progress, stepValue) {
				$(this).find('strong').html((stepValue*100).toFixed(0) + '<i>%</i>');
			});
		});
}

function hoverJs() {
	$('.cont02-student-list li').hover(function() {
		var $offImg = $('.cont02-student-list li .pic img')
		var $onImg 	= $(this).find('img');
		$offImg.attr("src", function(idx, e){ return e.replace("_on.jpg","_off.jpg"); });
		$onImg.attr("src", function(idx, e){ return e.replace("_off.jpg","_on.jpg"); });
		$(this).addClass("on").siblings().removeClass('on');
	});
}
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

		var $offImg = $('.js-fix-menu > a > img')
		var $onImg 	= $bt_fix.eq(i).find('img');
		$offImg.attr("src", function(idx, j){ return j.replace("_on.png","_off.png"); });
		$onImg.attr("src", function(idx, j){ return j.replace("_off.png","_on.png"); });
		
		$doc.animate({scrollTop:$visual-$fix_h});
	});

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if(scroll > $cont_top){
			$('.winter-wrap .quick').css({
				'position':'fixed',
				'top':90,
			});
		}else{
			$('.winter-wrap .quick').css({
				'position':'absolute',
				'top':200,
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
	$bt_nav.first().find('img').attr("src", $bt_nav.first().find('img').attr("src").replace("_off","_on"));

	$bt_nav.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var cont_on = $cont.eq(i);
		var cont_top = cont_on.offset().top;
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

// 텝
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

// 처음 컨텐츠 슬라이드
function slide01(){	
	$('.js-winter-slide').each(function(i){
		var $this = $(this);
		var owl = $this.addClass('winter-slide' + 0 +  Number(i + 1));
		owl.owlCarousel({
			loop:true,              //무한루프
			nav:false,               //네비게이션
			items:1,                //아이템 갯수
			autoplay:true,          //자동재생
			autoplayTimeout:6000,
			dots:true,
			dotsData:true,
			autoplayHoverPause:true //롤오버시 자동재생 멈춤
		});
		$('.js-winter-slide .owl-item').on('mouseenter',function(e){
			$(this).closest('.owl-carousel').trigger('stop.owl.autoplay');
		});
		$('.js-winter-slide .owl-item').on('mouseleave',function(e){
			$(this).closest('.owl-carousel').trigger('play.owl.autoplay',[500]);
		});
	});

	//말풍선 슬라이드
	var swiper = new Swiper(".js-cont-slide01", {
		speed: 400,
		loop: true,
		effect: "fade",
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
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
}


// 사전예약금 접수 유의사항 hover
$('.bt-info, .layer-info').hover(
	function(){
		$('.layer-info').css('display','block')
	},
	function(){
		$('.layer-info').css('display','none')
	}
)


$('.bt-receipt').hover(
	function(){
		$('.layer-receipt').css('display','block')
	},
	function(){
		$('.layer-receipt').css('display','none')
	}
)

