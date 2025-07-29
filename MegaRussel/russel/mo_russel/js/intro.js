//상단 비주얼 슬라이드
$(function(){
    introSlide()     //메인 슬라이드
    allBanner()     //배너 전체보기   
    campusSlide()   //학원 배너 슬라이드
});



function introSlide(){    
    var $s_slide = $(".js-intro-slide .swiper-slide");
    if($s_slide.length >= 2){
        var main_slide = new Swiper('.js-intro-slide', {
            loop: true,
            slidesPerView: 'auto',
            speed : 1000,
            autoplay:false,
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },
            pagination: {
                el: '.js-intro-pagination',
                type: 'fraction',
            },
            noSwiping: true
        });
        $(".js-intro-pagination").css("display","block");
    }else{
        var main_slide = new Swiper('.js-intro-slide', {        
            loop: false,
            pagination: {
                el: '.js-intro-pagination',
                type: 'fraction',
            }
        });
        $(".js-intro-pagination").css("display","none");
    }
    
    var $btBranch = $(".js-b-tit");

    $btBranch.on("click",function(){
        $(this).parent().toggleClass("on");        
        main_slide.autoplay.stop();
        $(".swiper-slide-active .visual, .swiper-slide-active .slide-txt, .main-pagination").toggleClass("blur");
    });
    
    $(".js-intro-slide").on("touchmove",function(){
        $(".slide-txt").next().removeClass("on");
        $(".swiper-slide").children(".branch").removeClass("on")
        $(".swiper-slide .visual, .swiper-slide .slide-txt, .main-pagination").removeClass("blur");
        main_slide.autoplay.start();
    });

}

function allBanner(){
    var $btAll      = $(".js-intro-pagination");
    var $bannerAll  = $(".js-all-layer")
    var $close      = $(".btn-close")
    var $bHeight    = $("document, body").height();
    var $mask       = $(".mask")

    $btAll.on("click", function(){
        $bannerAll.css({
            "opacity":"1",
            "z-index":"10"
        })
        $mask.fadeIn()
    }); 
    
    $close.on("click", function(){
        $bannerAll.css({
            "opacity":"0",
            "z-index":"-1"
        })
        $mask.fadeOut()
    });

    $mask.css("height",$bHeight);

    var layer_slide = new Swiper('.layer-swiper-slide', {
        speed: 600,
        spaceBetween: 20,
        freeMode: true,
        slidesPerView: 'auto',
        loop:false
    });
}

function campusSlide(){ 
    
    var c_index = Math.floor(Math.random()*($('.campus-slide .swiper-slide:not(.swiper-slide-duplicate)').length));
    var result = parseInt(c_index);
    
    var campus_slide = new Swiper('.campus-slide', {
        effect: 'coverflow',
        speed: 300,
        grabCursor: true,
        centeredSlides: true,
        loop: true,
        coverflowEffect: {
            rotate: 0,
            stretch: 0,
            depth: 150,
            modifier: 1,
            slideShadows : true,
        },
        pagination: {
            el: '.swiper-pagination',
        },
        spaceBetween:40,
        initialSlide:result
    });
}
