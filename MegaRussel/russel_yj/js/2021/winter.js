$(function () {
    var $top = $('.full-danka').offset().top;
    $('html, body').animate({scrollTop:$top},500);
    fixmenu();
    passReview();
	countNum();
})
//원형 그래프
function circleGraph01() {
	$('.pie-graph-top01 .yj-pie-graph .circle').each(function(i){
		var perNum = $(".pie-graph-top01 .yj-pie-graph .circle"+ 0 +(i+1)).find(".num").text();
		$('.circle'+ 0 +(i+1)).circleProgress({
			value: (perNum-10)/100,
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
			$(this).find('strong').html((stepValue*100+10).toFixed(0) + '<i>%</i>');
		});
	});
}

function circleGraph02() {
	$('.pie-graph-top02 .yj-pie-graph .circle').each(function(i){
		var perNum = $(".pie-graph-top02 .yj-pie-graph .circle"+ 0 +(i+1)).find(".num").text();
		$('.circle'+ 0 +(i+1)).circleProgress({
			value: (perNum-10)/100,
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
			$(this).find('strong').html((stepValue*100+10).toFixed(0) + '<i>%</i>');
		});
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
		//var cont_top = cont_on.offset().top;

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
				'top':150,
			});
		}else{
			$('.winter-wrap .quick').css({
				'position':'absolute',
				'top':135,
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
	});
}
function passReview(){
    var $re_btn     = $(".js-review"),
        $re_btn_2     = $(".js-review > a"),
        $re_detail  = $(".js-detail");

        $re_btn_2.click(function(e){e.preventDefault();})
        $re_btn.on("click", function(){
            var num = $re_btn.index(this);

            $re_btn.each(function(i){
            if(num == i){
                $re_btn.eq(i).toggleClass("on");
                $re_detail.eq(i).slideToggle(200);
            }else{
                $re_btn.eq(i).removeClass("on");
                $re_detail.eq(i).slideUp(200);
            }
        });
    });
}
function countNum() {
	$('.counter').one("click",function() {
		$('.counter').each(function() {
			var $this = $(this),
				countTo = $this.attr('data-count');
			
			$({ countNum: $this.text()}).animate({
				countNum: countTo
			},
			
			{
			
				duration: 500,
				easing:'linear',
				step: function() {
				$this.text(Math.floor(this.countNum));
				},
				complete: function() {
				$this.text(this.countNum);
				}
			});
		});
	});
}
// function countNumReset() {
// 	$('.counter').each(function() {
// 		var $this = $(this),
// 			countTo = 0;
		
// 		$({ countNum: $this.text()}).animate({
// 			countNum: countTo
// 		},
		
// 		{
		
// 			duration: 500,
// 			easing:'linear',
// 			step: function() {
// 			$this.text(Math.floor(this.countNum));
// 			},
// 			complete: function() {
// 			$this.text(this.countNum);
// 			}
// 		});
// 	});
// }
