
$(".bt-foucs").on("click", function(e){
    e.preventDefault();
    // var top   =   $("#focus").offset().top -100;

    // $("body,html").animate({scrollTop:top})
})

// $(".js-bt-data").on("click", function(e){
//     e.preventDefault();
//     $(".layer-wrap").css("display","block")
// })
// $(".btClose").on("click", function(e){
//     e.preventDefault();
//     $(".layer-wrap, .mask-bg").css("display","none")
// })

// 슬라이드
$(".first-slide").each(function(index){
    var $this = $(this);
    var slide = $this.addClass("js-slide-" + index+1);

    var swiper = new Swiper(slide, {
        loop: true,
        observer: true,
        slidesPerView : 1,
        speed : 500,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
        }
    });
});

