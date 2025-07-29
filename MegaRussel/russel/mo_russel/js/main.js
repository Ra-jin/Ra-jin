$(function(){
    ptSlide()       //설명회/공개특강 슬라이드
    btCousel()      //상담 버튼 모션 클래스 추가 
    
});

function ptSlide(){
    var mainSlideNavi = new Swiper('.js-enter-pt', {
        loop:false,
        effect: 'fade',
        grabCursor: true,
        sepeed:500,
        pagination: {
            el: '.js-pt-page',
        }
    });
}

function btCousel(){
    $(window).scroll(function(){
        var $top_of_object = $('.js-bt-cousel-wrap').offset().top;
        var top_of_window = $(window).scrollTop()+600;
    
        if( top_of_window > $top_of_object ){
            $('.js-bt-cousel-wrap').addClass("active");
        }
    });   
}




