$(window).load(function(){

    //cont02 오토갤러리
    var reviewSwiper = new Swiper('.cont02_slide .st-slide', {
        loop: true,
        slidesPerView: "1.3",
        centeredSlides: true,
        spaceBetween: 15,
        pagination: {
            el: ".cont02_slide .swiper-pagination",
            clickable: true,
        },
        autoplay:true,
        autoplay: {
            delay: 1000,
            disableOnInteraction: false,
        },
        observer: true,
        observeParents: true
    });

    
    //cont03 선생님 슬라이드
    var swiper2 = new Swiper('.teacher-swiper',{
        autoplay: {
            delay: 0,
            disableOnInteraction: false,
        },
        loop:true,
        loopAdditionalSlides : 1,
        centeredSlides: true,
        centeredSlidesBounds: true,
        speed: 3000,
        slidesPerView: 'auto',
        spaceBetween: 35,
        freeMode: {
            enabled: true,
            momentumBounce:false
        },
    });

    //cont04 바자관 오토갤러리
    var bajaSwiper = new Swiper('.cont04_slide .st-slide', {
        loop: true,
        slidesPerView: "1",
        centeredSlides: true,
        spaceBetween: 15,
        pagination: {
            el: ".cont04_slide .swiper-pagination",
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


    //cont05 입시전략실 오토갤러리
    var bajaSwiper = new Swiper('.cont05_slide .st-slide', {
        loop: true,
        slidesPerView: "1.6",
        centeredSlides: true,
        spaceBetween: 15,
        pagination: {
            el: ".cont05_slide .swiper-pagination",
            clickable: true,
        },
        autoplay:true,
        autoplay: {
            delay: 1000,
            disableOnInteraction: false,
        },
        observer: true,
        observeParents: true
    });


    //cont05 입시전략실 내부 슬라이드
    function randomIdx()  {
        var slideTotal = $('.js-strategy-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
        var r_slide = Math.floor(Math.random() * slideTotal);
        return parseInt(r_slide);
    }
    
    var swiper2 = new Swiper('.strategy-swiper',{
        autoplay: {
            delay: 0,
            disableOnInteraction: false,
        },
        loop:true,
        // centeredSlides: true,
        centeredSlides: false,
        // centeredSlidesBounds: true,
        centeredSlidesBounds: false,
        speed: 3000,
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
        slidesPerView: 'auto',
        spaceBetween: 20,
        freeMode: {
            enabled: true,
            momentumBounce:false
        },
    });



    //cont06 스터디상담후기 오토갤러리
    var studyReviewSwiper = new Swiper('.cont06_slide .st-slide', {
        loop: true,
        slidesPerView: "1",
        centeredSlides: true,
        spaceBetween: 15,
        pagination: {
            el: ".cont06_slide .swiper-pagination",
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

    //cont01 모집 요강 자세히 보기 버튼 클릭시 앵커처리
    const gotoDirect = document.querySelector('area.scrollMove');
    const contents = document.querySelector(".content")
    const firstTop = contents.offsetTop

    // console.log(gotoDirect)

    gotoDirect.onclick =()=>{
        window.scroll({top:firstTop-100, behavior:'smooth'})
    }
    
});
