$(document).ready(function(){
	
    setTimeout(visual, 500);
    slide();
    qna();
    autoPlay();
    layerPop();
});


$(window).load(function () {
	$(window).scroll(function(){		
		$('.gr-in').each(function(i){
			var wH 		= $(window).height()/2;
			var sT		= $(this).offset().top - wH;
			var winT	= $(window).scrollTop();

			if(winT > sT){
				$('.gr-in').eq(i).addClass('on');
			}

			if($(this).hasClass('on')){
				sGraph(i);
				count(i);
				// countPoint(i);
			}
		})
	})
})

function layerPop() {
    $('.js-data').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });

}
function visual(){
    $('.first-wrap .visual').addClass("on");
}
function slide(){
    //2023 수능 이슈
	var swiper1 = new Swiper('.slide-box01', {
		loop: true,
		slidesPerView: 'auto',
		pagination: {
			el: '.pagination',
		},
		autoplay: {
			delay: 10000
		}
	});
    //면학분위기로 소문난 바른공부 자습전용관
    var swiper2 = new Swiper('.slide-box02', {
		loop: true,
		slidesPerView: 1,
		spaceBetween: 20,
		autoplay: {
			delay: 6000
		}
	});
    //프리미엄 컨텐츠
    var swiper3 = new Swiper('.slide-box03', {
		loop: true,
		slidesPerView: 2,
		spaceBetween: 20,
		autoplay: {
			delay: 3000
		}
	});
     //만점자 후기
    var swiper4 = new Swiper('.slide-box04', {
		loop: true,
		slidesPerView: 1,
        pagination: {
			el: '.pagination',
		},
		spaceBetween: 20,
		autoplay: {
			delay: 10000
		}
	});

}

function autoPlay() {
    var i = 0;
	setInterval(time, 2000);
	function time(){
		var $comment = $('.danka-info-box p');
		$comment.removeClass('on');
		$comment.eq(i).addClass('on');
		i++;
		if(i >= $comment.length) i = 0;
	}

    var a = 0;
	setInterval(mapJs, 5000);
	function mapJs(){
		var $mapTxt = $('.map-txt li');
        var $mapImg = $('.map-img p');
		$mapTxt.removeClass('on');
		$mapTxt.eq(a).addClass('on');
        $mapImg.removeClass('on');
		$mapImg.eq(a).addClass('on');
		a++;
		if(a >= $mapTxt.length) a = 0;
	}

    var j = 0;
	setInterval(circleJs, 7000);
	function circleJs(){
		var $circleImg = $('.img-circle p');
        var $circleTxt = $('.txt-circle p');
		$circleImg.removeClass('on');
		$circleImg.eq(j).addClass('on');
        $circleTxt.removeClass('on');
		$circleTxt.eq(j).addClass('on');
		j++;
		if(j >= $circleImg.length) j = 0;
	}
}

// 토글버튼
function qna(){
	var bt_q = $('.first-info-flip > .quse')
	//var cont_a = $('.first-info-flip > .answer')
	bt_q.on('click',function(){
		$(this).toggleClass('on')
		$(this).next().toggleClass('on')
	})
}



// 막대그래프 모션
function sGraph(i){
	$('.gr-in').eq(i).find('.box').each(function(){
		tH	= $(this).height();
		$(this).children().find('.bar').animate({height:tH},800)
	})
}

// 막대그래프 카운트 업
function count(i){
	$('.gr-in').eq(i).find('.num').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		$({
			countNum: $this.text()
		}).animate({
			countNum: countTo
			},
			{
			duration: 800,
			easing: 'swing',
			step: function() {
				$this.text(Math.floor(this.countNum));
			},
			complete: function() {
				$this.text(this.countNum);
			}
		});
	});
}

tabMenu(".tab",".tab-con");//탭메뉴 고정


