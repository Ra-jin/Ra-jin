tabMenu('.bt-tab', '.cont-tab')
$(window).load(function(){
    // 후기 슬라이드
    var reviewSwiper = new Swiper('.st-slide', {
        loop: true,
        slidesPerView: "1.3",
        centeredSlides: true,
        spaceBetween: 15,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        autoplay:true,
        autoplay: {
            delay: 10000,
            disableOnInteraction: false,
        },
        observer: true,
        observeParents: true
    });
    // 후기 슬라이드2
    var tSwiper = new Swiper('.st-slide02', {
        loop: true,
        autoHeight :true,
        slidesPerView: "1",
        centeredSlides: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        autoplay:true,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        observer: true,
        observeParents: true
    });
});

$(function(){
    // 최상단 탭
    var $tab_bt = $('.tab a')
    var $tab_cont = $('.tab-con')

    $tab_bt.on('click',function(e){
        e.preventDefault()
        var idx = $(this).index()
        $(this).addClass('on').siblings().removeClass('on')
        $tab_cont.eq(idx).addClass('on').siblings().removeClass('on')
    })
    layerPop();

    $(".tab-wrap .bt-tab a").eq(2).on("click", function() {
        teacherSwiper.slideTo(0, 0, false)
    });
    function randomIdx()  {
        var slideTotal = $('.js-teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
        var r_slide = Math.floor(Math.random() * slideTotal);
        return parseInt(r_slide);
    }
    var teacherSwiper = new Swiper('.teacher-swiper',{
        autoplay: {
            delay: 0,
            disableOnInteraction: false,
        },
        loop:true,
        centeredSlides: true,
        centeredSlidesBounds: true,
        speed: 3000,
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
        slidesPerView: 'auto',
        spaceBetween: 20,
        freeMode: {
            enabled: true,
            momentumBounce:false
        },
        observer: true,
        observeParents: true
    });

    $(".tab-wrap .bt-tab a").eq(3).on("click", function() {
        bookSwiper.slideTo(2, 0, false)
    });
    var bookSwiper = new Swiper('.book-slide', {
        loop: true,
        slidesPerView: "1.7",
        spaceBetween: 10,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        autoplay:true,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        observer: true,
        observeParents: true
    });
});

function layerPop() {
    $('.js-data').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
}
