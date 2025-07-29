tabMenu('.bt-p', '.cont-p')
tabMenu('.tab-month', '.cont-month')
tabMenu('.tab-danka', '.cont-danka')
$(window).load(function(){
    $('.js-regular-swiper').each(function(i){
        var $this = $(this);
        var swiper = $this.addClass('regular-swiper' + 0 +  Number(i + 1));
        var swiper = new Swiper(swiper , {
            loop: true,
            slidesPerView : 1,
            slidesPerGroup :1,
            pagination: {
                el: '.page',
            },
            // autoplay: {
            //     delay: 6000
            // },
            autoplay: {
                delay: 6000,
                disableOnInteraction: false,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            observer: true,
            observeParents: true
        });
    });

    function randomIdx()  {
        var slideTotal = $('.js-teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
        var r_slide = Math.floor(Math.random() * slideTotal);
        return parseInt(r_slide);
    }

    var swiper2 = new Swiper('.teacher-swiper',{
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
    });

    var swiper3 = new Swiper('.js-book-swiper',{
        loop: true,
        slidesPerView : 2,
        spaceBetween : 15,
        pagination: {
            el: '.book_page',
        },
        autoplay: {
            delay: 6000
        }
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
})