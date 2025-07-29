
    tabMenu('.bt-tab', '.cont-tab')
    
    // 슬라이드
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
                delay: 12000,
                disableOnInteraction: false,
            },
            observer: true,
            observeParents: true
        });

        // 입시 담임선생님 철저한 관리
        var tSwiper = new Swiper('.slide-02', {
            loop: true,
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
        
        // 선생님 슬라이드
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
        });
        
        var contSwiper = new Swiper('.slide-04', {
            loop: true,
            slidesPerView: "1.7",
            spaceBetween: 40,
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
        
        var contSwiper = new Swiper('.slide-05', {
            loop: true,
            slidesPerView: "1",
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            autoplay:true,
            autoplay: {
                delay: 3000,
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

        //데이터 산출기준
        $('.bt-data').on('click',function(){
            $(this).next('.txt-data').toggleClass('on')  
        })
        
    })
