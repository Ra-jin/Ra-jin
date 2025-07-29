$(function(){
    topTab()        //√÷ªÛ¥‹ ≈«
    tabMenu('.winter-tab', '.winter-cont')      // ∑Øºø ¿©≈ÕΩ∫ƒ «¡∑Œ±◊∑•
    layerPop();     // µ•¿Ã≈Õ ªÍ√‚ ±‚¡ÿ
    dankaAlert()                //¥‹∞˙ πˆ∆∞ø° ∏µ≈© æ¯¿ª ∞ÊøÏ alert    
    tabMenu('.cont-tab', '.cont-winter-type')      // ∑Øºø ¿©≈Õ «√∑ØΩ∫
});

 
// ΩΩ∂Û¿ÃµÂ
$(window).load(function(){    
    tabWinter()     // ≈« ∞Ì¡§
    
    // ¥´≥ª∏Æ¥¬ »ø∞˙
    var $visual = document.getElementById("visual");
    $(function(){
        $("canvas.snow").snowEffect({
            windPower: 0,
            interaction: false,
            speed: .1,
            opacity:0.1,
            color: "#ffffff",
            size:1.3
        });
    });

    // ¿©≈ÕΩ∫ƒ ¿Áø¯ª˝
    var reviewSwiper = new Swiper('.st-slide', {
        loop: true,
        slidesPerView: "1",
        centeredSlides: true,
        spaceBetween: 0,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        autoplay:true,
        autoplay: {
            delay: 6000,
            disableOnInteraction: false,
        },
        observer: true,
        observeParents: true
    });

    // »ƒ±‚ ΩΩ∂Û¿ÃµÂ
    var reviewSwiper = new Swiper('.review-slide', {
        loop: true,
        slidesPerView: "1.3",
        centeredSlides: true,
        spaceBetween: 20,
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

    
    // º±ª˝¥‘ ΩΩ∂Û¿ÃµÂ
    function randomIdx() {
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
        initialSlide : randomIdx(),//ΩΩ∂Û¿ÃµÂ Ω√¿€ ∑£¥˝
        slidesPerView: 'auto',
        spaceBetween: 20,
        freeMode: {
            enabled: true,
            momentumBounce:false
        },
        observer: true,
        observeParents: true
    });

    $('.winter-tab-wrap a').eq(0).on('click',function(){
        teacherSwiper.slideTo(0, 0, false)
    })

    // ∑Øºø ¿©≈ÕΩ∫ƒ «¡∑Œ±◊∑• ≈« > ¥„¿”º±ª˝¥‘ ∞¸∏Æ ≈« > ΩΩ∂Û¿ÃµÂ
    $('.tab03-slide').each(function(index){
        var $this = $(this);
        var slide_class = $this.addClass("js-slide-" + parseInt(index+1));
        var slide_list = slide_class.children().find('.swiper-slide')

        if(slide_list.length >= 2){            
            var tab03_slide = new Swiper(slide_class, {
                loop: true,
                observer: true,
                observeParents: true,
                slidesPerView : 1,
                slidesPerGroup :1,
                spaceBetween : 1,
                speed : 500,
                pagination: {
                    el: ".swiper-pagination",
                    clickable: true,
                }                
            });
        }
    })
    
    // ∑Øºø ¿©≈ÕΩ∫ƒ «¡∑Œ±◊∑• ≈« > ¿©≈ÕΩ∫ƒ «¡∑Œ±◊∑• ≈« > ΩΩ∂Û¿ÃµÂ    
    $(".winter-tab-wrap a").eq(3).on("click", function() {
        programSwiper.slideTo(0, 0, false)
    });
    var programSwiper = new Swiper('.program-slide', {
        loop: true,
        slidesPerView: "1.7",
        spaceBetween:40,
        // pagination: {
        //     el: ".swiper-pagination",
        //     clickable: true,
        // },
        autoplay:true,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        observer: true,
        observeParents: true
    });
});

// √÷ªÛ¥‹ ≈«
function topTab(){        
        
    tabMenu('.tab', '.tab-con')

    var $bt_depth01 = $('.winter-wrap .tab a')
    var $cont_depth01 = $('.winter-wrap .tab-con')
    
    if($bt_depth01.eq(0).hasClass('on')){
        $cont_depth01.eq(0).addClass('on')
    }else{
        $cont_depth01.eq(1).addClass('on')
    }
}

// ¥‹∞˙ πˆ∆∞ø° ∏µ≈© æ¯¿ª ∞ÊøÏ alert
function dankaAlert(){
    var $bt_danka = $('.btn-danka a');
    var pattern = /[§°-§æ|§ø-§”|∞°-∆R]/;

    $bt_danka.on('click',function(e){
        var a_txt = $(this).attr('href');

        if(pattern.test(a_txt)){
            e.preventDefault()
            alert(a_txt)
        }
    })        
}

// ∑Øºø ¿©≈ÕΩ∫ƒ «¡∑Œ±◊∑• ≈« ∞Ì¡§
function tabWinter(){
    var $bt_wrap       = $('.winter-tab-wrap');
    var $bt       = $('.winter-tab-wrap a');
    var $bt_top     = $bt_wrap.offset().top - 100;

    $bt.on('click',function(){
        $('html, body').animate({scrollTop:$bt_top},500);
    })
    
    $(window).on('scroll',function(){
        var $win_scl    = $(window).scrollTop();

        if($win_scl > $bt_top){
            $bt_wrap.addClass('fix-tab')
        }else{
            $bt_wrap.removeClass('fix-tab')
        }
    })
}

// µ•¿Ã≈Õ ªÍ√‚ ±‚¡ÿ ∑π¿ÃæÓ
function layerPop() {
    $('.js-data').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
}
