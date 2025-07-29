$(function(){
    topTab()        //ÃÖ»ó´Ü ÅÇ
    dankaAlert()    //´Ü°ú ¹öÆ°¿¡ ¸µÅ© ¾øÀ» °æ¿ì alert
    tabMenu('.final02-tab', '.final02-cont')      // final02 ÅÇ
});

// ÃÖ»ó´Ü ÅÇ
function topTab(){        
        
    tabMenu('.tab', '.tab-con')

    var $bt_depth01 = $('.final-wrap .tab a')
    var $cont_depth01 = $('.final-wrap .tab-con')
    
    if($bt_depth01.eq(0).hasClass('on')){
        $cont_depth01.eq(0).addClass('on')
    }else{
        $cont_depth01.eq(1).addClass('on')
    }
}

// ´Ü°ú ¹öÆ°¿¡ ¸µÅ© ¾øÀ» °æ¿ì alert
function dankaAlert(){
    var $bt_danka = $('.bt-online');
    var pattern = /[¤¡-¤¾|¤¿-¤Ó|°¡-ÆR]/;

    $bt_danka.on('click',function(e){
        var a_txt = $(this).attr('href');

        if(pattern.test(a_txt)){
            e.preventDefault()
            alert(a_txt)
        }
    })        
}

// ½½¶óÀÌµå
$(window).load(function(){
    // ¼±»ý´Ô ½½¶óÀÌµå
    var teacherSwiper = new Swiper('.teacher-swiper',{
        autoplay: {
            delay: 0,
            disableOnInteraction: false,
        },
        loop:true,
        centeredSlides: true,
        centeredSlidesBounds: true,
        speed: 3000,
        slidesPerView: 'auto',
        spaceBetween: 20,
        freeMode: {
            enabled: true,
            momentumBounce:false
        },
    });

    $('.tab a').eq(0).on('click',function(){
        teacherSwiper.slideTo(0, 0, false)
    })

    // ¸ðÀÇ°í»ç ½½¶óÀÌµå
    var mockSwiper = new Swiper('.mock-slide',{
        autoplay: {
            delay:4000,
            disableOnInteraction: false,
        },
        loop:true,
        speed: 1000,
        slidesPerView: '2',
        spaceBetween: 20,
        pagination: {
          el: ".swiper-pagination",
        },
    });

    
    $(".final-slide").each(function(index){
        var $this = $(this);
        var f_slide = $this.addClass("js-slide-" + index+1);

        var finalSwiper = new Swiper(f_slide,{
            autoplay: {
                delay:4000,
                disableOnInteraction: false,
            },
            loop:true,
            speed: 1000,
            slidesPerView: '1',
            pagination: {
              el: ".swiper-pagination",
            },
        });
    });


});

