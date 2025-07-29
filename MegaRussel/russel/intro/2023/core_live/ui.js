$(function() {
	var $top = $('.live-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

    stuSlide()
});

// play시작 한번만
let playStart = true
let playStart01 = true
let playStart02 = true


// scroll 할때마다 이벤트 발생
$(window).scroll(function(){
    
	var scroll = $(window).scrollTop();
    
	var $cont = $('.js-cont');
    var $cont01_top = $('.cont01').offset().top - 500
    var scrollEnd = $(".bottom-bar").offset().top - 1000;
    
    // 각 cont 스크롤시 class on추가
    $cont.each(function(i){
        var $target = $cont.eq(i);
        var $target_top  = Math.floor($target.offset().top - 200);
        
        if(scroll >= $target_top){
            $target.addClass('on').siblings().removeClass('on')

        }
    });
    
    // cont00 진입시 애니메이션 1회 실행
    if ($('.cont00').hasClass('on')) {
        $('.cartoon-wrap').addClass('active')
        $('.cont02 .arrow-img').removeClass('puff-in-center')
        playStart01 = true
    }
    // cont02 진입시 애니메이션 N회 실행
    if ($('.cont02').hasClass('on') && playStart01 == true) {
        $('.cont02 .arrow-img').addClass('puff-in-center')
        playStart01 = false
        $('.cont03 .core-card').removeClass('pulsate-fwd')
        playStart02 = true
    }
        
    // cont03 진입시 애니메이션 N회 실행
    if ($('.cont03').hasClass('on') && playStart02 == true) {
        $('.cont03 .core-card').addClass('pulsate-fwd')
        playStart02 = false
        $('.cont02 .arrow-img').removeClass('puff-in-center')
        playStart01 = true
        
    }
    // cont04 진입시 애니메이션 1회 실행
    if ($('.cont04').hasClass('on')) {
        $('.cont04 .c-inner ul').addClass('active')
        $('.cont03 .core-card').removeClass('pulsate-fwd')
        playStart02 = true
    }
    // cont05 화면진입 시 f-banner 사라짐
    if(scroll >= scrollEnd ){
        $('.cont04').removeClass('on')
    }


    // cont01일때 동영상 재생
    // if(scroll >= $cont01_top && playStart == true){

    //     let videoPlay = $('.cont01 .video iframe').attr('src').replace('false','true')
    //     $('.cont01 .video iframe').attr('src', videoPlay)

    //     //재스크롤해도 src 바뀌지 않음
    //     playStart = false
    // }

})

// 합격 선배 리뷰 슬라이드
function stuSlide(){

	var sSwiper = new Swiper('.stu-slide',{
		loop: true,
		slidesPerView: 'auto',
		spaceBetween: 25,
		grabCursor: true,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false, // 버튼클릭해도 계속 롤링
		},
		speed: 1000,
	});
}