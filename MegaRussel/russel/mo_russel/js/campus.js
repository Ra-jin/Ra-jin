
$(function(){
    $('.facility-info:first-child > .f-box:first-child, .facility-info:first-child > .f-box:nth-child(2), .facility-info:first-child > .f-box:nth-child(3)').addClass("active")
})
$(window).scroll( function(){
    /* 2 */
    $('.f-box').each(function(i){
        var dHeight = $("body,html").height();
        var top_of_object = $(this).offset().top;
        var top_of_window = $(window).scrollTop() + dHeight -50;
        /* 3 */
        if( top_of_window > top_of_object ){
            $(this).addClass("active");
        }
    }); 
    
});

$(function(){
    $(".js-fac-slide").each(function(index){
        var $this = $(this);
        var slide = $this.addClass("js-slide-" + index+1);

        var swiper = new Swiper(slide, {
            loop: true,
            observer: true,
            observeParents: true,
            slidesPerView : 1,
            slidesPerGroup :1,
            speed : 500,
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            }
        });
    });
});