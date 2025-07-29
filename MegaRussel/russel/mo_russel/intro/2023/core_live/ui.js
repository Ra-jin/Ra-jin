// play시작 한번만
let playStart = true
let playStart01 = true
let playStart02 = true


// scroll 할때마다 이벤트 발생
$(window).scroll(function(){
    
	var scroll = $(window).scrollTop();
    
	var $cont = $('.js-cont');

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
        if(scroll >= $('.cont02 div:nth-child(2)').offset().top + 200) {

            $('.cont02 .arrow-img').addClass('puff-in-center')
            playStart01 = false
        }
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


})