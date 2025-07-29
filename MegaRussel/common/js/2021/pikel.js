$(function () {
    var pTop = $(".pikel-tab-box").offset().top;
    //var pTop01 = $("#tabCon01").offset().top;
    var pTop02 = $("#tabCon02").offset().top;
    var pTop03 = $("#tabCon03").offset().top;
    var $pFix = $(".pikel-tab");
    var $btn = $(".pikel-tab a");
    
    $(window).scroll(function () {
        //스크롤시 tab 상단고정
        if ($(this).scrollTop() > pTop) {
            $('.pikel-tab').css("position","fixed");
            $pFix.addClass("active");
        } else {
            $('.pikel-tab').css("position","relative");
            $pFix.removeClass("active");
        }
        //스크롤시 버튼 on
        if($(window).scrollTop() < pTop02){
            $btn.eq(0).addClass("on").siblings().removeClass("on");
        }else if( pTop02 <= $(window).scrollTop() && $(window).scrollTop() < pTop03){
            $btn.eq(1).addClass("on").siblings().removeClass("on");
        }else{
            $btn.eq(2).addClass("on").siblings().removeClass("on");
        }
    });
});