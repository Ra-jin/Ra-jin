// 페이지 첫 진입시 비주얼 영역 맞춤
$(function() {
    var $top = $('.food-wrap').offset().top;
    $('html, body').animate({scrollTop:$top},500);
    
    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        var $vtopScroll  = $('.visual-area').offset().top-150;
        if($('.food-wrap div').hasClass('visual-area')){
            
            if(scroll >= $vtopScroll) {
				$('.visual-area').addClass("on");
			} else {
				$('.visual-area').removeClass("on");
			}
        }
    });
    

    foodSlide();
});


gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec0", // 객체기준범위
        pin: true, // 고정
        start: "top top", // 시작점
        end: "+=3600px", // 끝점
        scrub: 1, // 모션바운스
        markers: false, // 개발가이드선
    }
})

// 가로 스크롤 모션
.to('.sec0 .box01 ', {duration: 2, delay: 2})
.to('.sec0 .box01', {duration: 0, opacity: 0, x: -1200})

.to('.sec0 .box02', {duration: 0, opacity: 1, x: -1200})
.to('.sec0 .box02', {duration: 2, delay: 2})
.to('.sec0 .box02', {duration: 0, opacity: 0, x: -2400})

.to('.sec0 .box03', {duration: 0, opacity: 1, x: -2400})
.to('.sec0 .box03', {duration: 2, delay: 2})
.to('.sec0 .box03', {duration: 0, opacity: 0, x: -3600})

.to('.sec0 .box04', {duration: 0, opacity: 1, x: -3600})
.to('.sec0 .box04', {duration: 2, delay: 2})
.to('.sec0 .box04', {duration: 0});

function foodSlide(){
    var sSlide = new Swiper('.food-slide', {
        slidesPerView: "auto",
		centeredSlides: true,
        spaceBetween: 18,
		speed : 1000,
        autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
        loop:true,
		allowTouchMove: false,
		observer: true,
		observeParents: true,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
}

var rSlide = new Swiper('.rice-slide', {
    slidesPerView: 1,
    centeredSlides: true,
    spaceBetween: 10,
    loop:true,
    speed : 1500,
    autoplay:{
        delay: 4000,
        disableOnInteraction: false,
    },
    allowTouchMove: false,
    observer: true,
    observeParents: true,
    on: {

        slideChange: function () {
            $('.food-list li').removeClass('on');
            $('.food-list li').eq(this.realIndex).addClass('on');
        }
    
    },

});
