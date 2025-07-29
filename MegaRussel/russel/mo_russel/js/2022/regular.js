
    tabMenu('.bt-p', '.cont-p')
    tabMenu('.tab-danka', '.cont-danka')
    
    $(window).load(function(){

        // 후기 슬라이드
        var reviewSwiper = new Swiper('.review-slide', {
            loop: true,
            // slidesPerView: "auto",
            spaceBetween: 10,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            autoplay:false,
            // autoplay: {
            //     delay: 5000,
            //     disableOnInteraction: false,
            // }
        });

        // 만점자 슬라이드
        var perfectSwiper = new Swiper('.perfect-slide', {
            slidesPerView: "auto",
            spaceBetween: 10,
            autoplay: {
                delay: 7000,
                clickable: true,
              },
            scrollbar: {
                el: '.swiper-scrollbar',
                dragSize: 110,
                draggable: true,
                
            },
        });

        // 수능에 최적화된 러셀 슬라이드
        var figureThumbs = new Swiper('.figure-navi', {
            slidesPerView: 5,
            freeMode: true,
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
            allowTouchMove:false
        });	
        var figure = new Swiper('.figure-img', {
            loop: true,
            speed : 0,
            allowTouchMove: false,
            effect: 'fade',
            autoplay:{
                delay: 7500,
                disableOnInteraction: false,
            },						  
            thumbs: {
                swiper: figureThumbs
            },
            loop: true,
        });

        // 선생님 슬라이드
        function randomIdx()  {
            var slideTotal = $('.js-teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
            var r_slide = Math.floor(Math.random() * slideTotal);
            return parseInt(r_slide);
        }
        var swiper = new Swiper('.teacher-swiper',{
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

        // 포인트 01 슬라이드
        var studySwiper = new Swiper('.study-slide', {
            loop: true,
            slidesPerView: "auto",
            spaceBetween: 20,
            pagination: {
                el: ".swiper-pagination",
            },
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            }
        });

        $('.bt-tt').on('click',function(){
            studySwiper.autoplay.stop()
            $('.layer-tt').addClass('on')
        })
        $('.bt-close-tt').on('click',function(){
            studySwiper.autoplay.start()
            $('.layer-tt').removeClass('on')
            $('.mask-bg').css('display','none')
        })      

        var swiper = new Swiper('.point05-slide', {
            spaceBetween: 40,
            loop: true,
            slidesPerView: 'auto',
            speed:500,
            // allowTouchMove: false,
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },
            pagination: {
                el: ".swiper-pagination",
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

        // qna
        var mapSwiper = new Swiper('.map-slide', {
            speed : 0,
            allowTouchMove: false,
            autoplay: {
                delay: 4000,
                disableOnInteraction: false,
            }
        }); 

        var $bt_q   = $('.bt-slide')
        $bt_q.on('click',function(){
            $(this).toggleClass('on')
            $(this).next('.cont-slide').toggleClass('on')
        })
        $bt_q.eq(2).on('click',function(){
            if($(this).hasClass('on')){
                mapSwiper.slideTo(0, 0, false)
            }
        })

        $('.bt-data').on('click',function(){
            $(this).next().toggleClass('on')  
        })        
        $('html').click(function(e){
            if($(e.target).parents('.data-wrap').length < 1){
                $('.txt-data').removeClass('on')
            }
        })
        
    })
