$(function(){

    tabAction();    //탭
    gallerySlide(); //학원 둘러보기 슬라이드
    tableShow();
    mainLeftBn(); // 기숙 메인 왼쪽 롤링 배너
    leftRolling(); // 왼쪽배너 롤링
    btmRolling(); // 맨하단배너 롤링


    //레프트메뉴
    // $(".js-lnb .depth-01").on("click",function(){
    //     if(!$(this).hasClass("js-ready")) {
    //         $(this).parent().parent().children().removeClass("on");
    //         $(this).parent().addClass("on");
    //     }        
    // });
    
    //header 틀고정
    // $(window).scroll(function(){
    //     var scroll = $(window).scrollTop();
    //     var ob = $('.headerWrap').outerHeight();
    //     if(!scroll == 0 && scroll > ob){
    //         $('.headerWrap').addClass('pos-sticky')	
    //     }
    //     else{
    //         $('.headerWrap').removeClass('pos-sticky')	
    //     }      
    // });   

    //탭
    function tabAction(){
        var $btn = $('.js-tab a');
        var $list = $('.js-tab-cont');
        var $btn02 = $('.js-tab02 a');
        var $list02 = $('.js-tab-cont02');
    
        $list,$btn.each(function(i){
            var idx = i;

            $(this).click(function(e){
                e.preventDefault();
                $list.removeClass('on').eq(idx).addClass('on');
                if($btn.hasClass('on')){
                    $btn.removeClass("on");
                }
                $btn.eq(idx).addClass("on");
            });
            
        });

        $list02,$btn02.each(function(i){
            var idx = i;

            $(this).click(function(e){
                e.preventDefault();
                $list02.removeClass('on').eq(idx).addClass('on');
                if($btn02.hasClass('on')){
                    $btn02.removeClass("on");
                }
                $btn02.eq(idx).addClass("on");
            });
            
        });
    }

    // 기숙 메인 왼쪽 롤링 배너
    function mainLeftBn() {
        var mainLeftBanner = new Swiper('.yj-floatL-bn', {
            autoplay: {
                delay: 2000,
                disableOnInteraction: false
            },
            loop: true
        });
    }

    //학원 둘러보기 슬라이드
    function gallerySlide(){

        var gallery1 = new Swiper('.js-gallery1', {
            keyboardControl: true,
            autoplayDisableOnInteraction:false,
            speed:500,
            touchRatio: 0,
            pagination: {
                el: ".js-thumb1",
                clickable: true,
                renderBullet: function (index, className) {
                    return '<span class="' + className + '"><img src="'+ $('.js-gallery1 .swiper-slide img').eq(index).attr('src') +'"></span>'; //slide의 img src 가져와서 bullet span태그에 붙여넣음
                }
            },
            navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
            },
            spaceBetween: 10,
            autoHeight: true,

        });

        var gallery2 = new Swiper('.js-gallery2', {
            keyboardControl: true,
            autoplayDisableOnInteraction:false,
            speed:500,
            touchRatio: 0,
            pagination: {
                el: ".js-thumb2",
                clickable: true,
                
                renderBullet: function (index, className) {
                    return '<span class="' + className + '"><img src="'+ $('.js-gallery2 .swiper-slide img').eq(index).attr('src') +'"></span>'; 
                }
            },
            navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
            },
            spaceBetween: 10,
            autoHeight: true,
        });

        // $(function(){
        //     var length = $(".js-thumb1 span").length;
        //     var length2 = $(".js-thumb2 span").length;
        //     $(".js-thumb1").css("width",156*length - 1);
        //     $(".js-thumb2").css("width",156*length2 - 1);
        // });
    }

    //캠퍼스 생활 table 
    function tableShow(){
        var $board_bt = $('.board_tit');
        var $board_list = $('.board_view');

        $board_bt.on("click",function(){
            $board_list.removeClass("on");
            $(this).next(".board_view").addClass("on");
        });
    }

    //a default
    $(".js-btn-none").on("click",function(e){
        e.preventDefault();
    });

    function returnMotion(idx) {
        // swiper-slide 클래스 선언한 요소(div태그가 아닌 경우엔 해당 태그로) 갯수를 length로 카운트하고 math.random()으로 난수화
        var rIndex =Math.floor(Math.random() * ($('div'+idx+' .swiper-slide:not(.swiper-slide-duplicate)').length) );
        return parseInt(rIndex);
    }
    function leftRolling() {
        var mainLeftBanner = new Swiper('.bn-left-rolling', {
            autoplay: {
                delay: 4000,
                disableOnInteraction: false
            },
            loop: true,
            pagination: {
                el: '.bn-pagination',
                clickable: true,
                renderBullet: function (index, className) {
                    return '<span class="' + className + '">' + '</span>';
                },
            },
            initialSlide : returnMotion('.bn-left-rolling') //랜덤
        });
    }
    function btmRolling() {
        var mainLeftBanner = new Swiper('.btm-rolling-box', {
            autoplay: {
                delay: 4000,
                disableOnInteraction: false
            },
            loop: true,
            pagination: {
                el: '.btm-pagination',
                clickable: true,
                renderBullet: function (index, className) {
                    return '<span class="' + className + '">' + '</span>';
                },
            },
            initialSlide : returnMotion('.btm-rolling-box') //랜덤
        });
    }

	
});

