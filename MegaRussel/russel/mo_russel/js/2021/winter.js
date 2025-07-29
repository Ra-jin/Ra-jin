

$(document).ready(function(){
	slide()
	qna()
	// 스와이프 아이콘 사라짐
	$('.img-click').on({
		touchstart:function(e){
			$(this).fadeOut(300)
		}		
	})
});

// 선생님 사진 좌우 모션
$(window).load(function () {

	var width = $('.img-t').width() - $('.img-t-wrap').width();
	// console.log(width)

	function animateMydiv() {
		$('.img-t').animate({
				'left': -width + 'px'
			}, 8000).animate({
			'left': '0px'
		}, 8000, animateMydiv);
	}
	animateMydiv();

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
				countPoint(i);
			}
		})
	})
})

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

// 파이그래프 카운트 업 소수점
function countPoint(i){
	$('.gr-in').eq(i).find('.count').each(function() {
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
				$this.text(Number(this.countNum).toFixed(1));
			},
			complete: function() {
				$this.text(Number(this.countNum).toFixed(1));
			}
		});
	});
}

function slide(){

	// 롤링		
	var swiper1 = new Swiper('.slide-box01', {
		loop: true,
		slidesPerView: 1,
		spaceBetween: 20,
		pagination: {
			el: '.page',
		},
		autoplay: {
			delay: 6000
		},
	});

	var swiper2 = new Swiper('.slide-review' , {
		loop: true,
		slidesPerView : 1,
		slidesPerGroup :1,
		speed : 100,
		autoplay: true,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		pagination: {
			el: '.slide-page',
			type: 'fraction'
		}
	});
	

	$('.slide-wrap').each(function(index){ 
		var $this = $(this);
		var slide = $this.addClass("js-slide-" + Number(index+1));
		var swiper = new Swiper(slide , {
			loop: true,
			slidesPerView : 1,
			slidesPerGroup :1,
			speed : 100,
			autoplay: {
				delay: 6000
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			pagination: {
				el: '.pagination'
			}
		});
	});

	// 탭 버튼
	$('.wrap-tab').each(function(index){
		var $this = $(this);
		var tabWarp = $this.addClass("tab-" + 0 + Number(index + 1));
		
		var $bt     = tabWarp.children('.tab-bt').find('a');
		var $cont   = tabWarp.children('.tab-cont');

		$bt.first().addClass('on');
		$cont.first().addClass('on')

		$bt.on('click',function(e){
			e.preventDefault();
			var i = $(this).index();
			$(this).addClass('on').siblings().removeClass('on');
			$cont.eq(i).addClass('on').siblings().removeClass('on');
		})
	})

}

// 토글버튼
function qna(){
	var bt_q = $('.winter-info > .q')
	var cont_a = $('.winter-info > .a')
	bt_q.on('click',function(){
		$(this).toggleClass('on')
		$(this).next().toggleClass('on')
	})
}

// 사전예약금 접수 유의사항
$('.bt-info').on('click',function(){
	$('.layer-info').css('display','block');
})
$('.bt-close').on('click',function(){
	$('.layer-info, .mask-bg').css('display','none');
})

// 사전예약금 접수 유의사항
$('.bt-receipt').on('click',function(){
	$('.layer-receipt').css('display','block');
})
$('.bt-close').on('click',function(){
	$('.layer-receipt, .mask-bg').css('display','none');
})