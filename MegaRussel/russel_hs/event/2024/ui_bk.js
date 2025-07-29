// 페이지 첫 진입시 비주얼 영역 맞춤
$(function() {
    var $top = $('.system-wrap').offset().top;
    $('html, body').animate({scrollTop:$top},500);

});
/*------------------- 비주얼 스크롤 모션 -------------------*/
// scene 갯수
let items = gsap.utils.toArray(".sec0 > div");
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec0", // 객체기준범위
        pin: true, // 고정
        start: "top top", // 시작점
        end: "+=8000", // 끝점
        scrub: 1, // 모션바운스
        markers: false, // 개발가이드선
        snap: {
            snapTo: 1 / (items.length - 1),
            duration: 0.2,
            delay : 0,
        }
    }
})

.to('.sec0 .scene01', {duration: 0, delay: .2,})
.to('.sec0 .scene01', {duration: 0, opacity: 0, y: -500})

.to('.sec0 .scene02', {duration: 0, opacity: 1, y: 0})
.to('.sec0 .scene02 h2', {duration: 0, animation: 'fadeIn 1.5s 1s both'})
.to('.sec0 .scene02 .balls li', {duration: 0, opacity: 1, animation: 'bounce-in-top 2s both'})
.to('.sec0 .scene02', {duration: 2, delay: .2})
.to('.sec0 .scene02', {duration: 0, opacity: 0, y: -500})

.to('.sec0 .scene03', {duration: 0, opacity: 1, y: 0})
.to('.sec0 .scene03', {duration: 2, delay: .2})
.to('.sec0 .scene03', {duration: 0, opacity: 0})

.to('.sec0 .scene04', {duration: 0, opacity: 1})
.to('.sec0 .scene04', {duration: 2, delay: .2})
.to('.sec0 .scene04', {duration: 0, opacity: 0, y: -500})

.to('.sec0 .scene05', {duration: 0, opacity: 1, y: 0})
.to('.sec0 .scene05 .tit', {duration: 0, animation: 'fadeIn 1s .5s both'})
.to('.sec0 .scene05 p', {duration: 0, animation: 'jello-horizontal .9s 1s both'})
.to('.sec0 .scene05 .obj01 img', {duration: 0, animation: 'fadeIn .5s 2s both'})
.to('.sec0 .scene05', {duration: 0, delay: 2})
.to('.sec0 .scene06', {duration: 0, delay: 2});

/*------------------- //비주얼 스크롤 모션 -------------------*/
/* cont01 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec1", // 객체기준범위
        pin: true, // 고정
        start: "top top", // 시작점
        end: "+=1000px", // 끝점
        scrub: 1, // 모션바운스
        markers: false, // 개발가이드선
    }
})

.to('.sec1 .c-scene01', {duration: 2, delay: .5,})

.to('.sec1 .c-scene01', {duration: 0, filter: 'blur(100px)', backgroundColor: 'rgb(65, 175, 255, .15)'})
.to('.sec1 .c-scene02', {duration: 0, backgroundColor: 'rgb(65, 175, 255, .15)'})
.to('.sec1 .c-scene02', {duration: 0, opacity: 1})
.to('.sec1', {duration: 0, delay: 4})
.to('.sec1', {duration: 0});

/* //cont01 스크롤 모션 */

/* cont02 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
    trigger: ".sec2", // 객체기준범위
    pin: true, // 고정
    start: "top top", // 시작점
    end: "=+2000", // 끝점
    scrub: 1, // 모션바운스
    markers: false, // 개발가이드선
    }
})

.to('.sec2 .box01 ', {duration: 2, delay: 2})
.to('.sec2 .box01', {duration: 0, opacity: 0, y: -100})

.to('.sec2 .box02', {duration: 0, opacity: 1, y: 0})
.to('.sec2 .indicator span:first-child', {duration: 0, backgroundColor: 'transparent',})
.to('.sec2 .indicator span:nth-child(2)', {duration: 0, backgroundColor: 'rgb(255, 255, 255, 0.3)',})
.to('.sec2 .box02', {duration: 2, delay: 2})
.to('.sec2 .box02', {duration: 0, opacity: 0, y: -100})

.to('.sec2 .box03', {duration: 0, opacity: 1, y: 0})
.to('.sec2 .indicator span:nth-child(2)', {duration: 0, backgroundColor: 'transparent',})
.to('.sec2 .indicator span:nth-child(3)', {duration: 0, backgroundColor: 'rgb(255, 255, 255, 0.3)',})
.to('.sec2 .box03', {duration: 2, delay: 2})
.to('.sec2 .box03', {duration: 0, opacity: 0, y: -100})

.to('.sec2 .box04', {duration: 0, opacity: 1, y: 0})
.to('.sec2 .indicator span:nth-child(3)', {duration: 0, backgroundColor: 'transparent',})
.to('.sec2 .indicator span:nth-child(4)', {duration: 0, backgroundColor: 'rgb(255, 255, 255, 0.3)',})
.to('.sec2 .box04', {duration: 2, delay: 2})
.to('.sec2 .box04', {duration: 0});

/* //cont02 스크롤 모션 */

/* cont03 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
    trigger: ".sec3", // 객체기준범위
    pin: true, // 고정
    start: "top top", // 시작점
    end: "=+2000", // 끝점
    scrub: 1, // 모션바운스
    markers: false, // 개발가이드선
    }
})

.to('.sec3 .box01', {duration: 2, delay: 2})
.to('.sec3 .box01', {duration: 0, opacity: 0, y: -100})

.to('.sec3 .box02', {duration: 0, opacity: 1, y: 0})
.to('.sec3 .indicator span:first-child', {duration: 0, backgroundColor: 'transparent',})
.to('.sec3 .indicator span:nth-child(2)', {duration: 0, backgroundColor: 'rgb(255, 255, 255, 0.3)',})
.to('.sec3 .box02', {duration: 2, delay: 2})
.to('.sec3 .box02', {duration: 0, opacity: 0, y: -100})

.to('.sec3 .box03', {duration: 0, opacity: 1, y: 0})
.to('.sec3 .indicator span:nth-child(2)', {duration: 0, backgroundColor: 'transparent',})
.to('.sec3 .indicator span:nth-child(3)', {duration: 0, backgroundColor: 'rgb(255, 255, 255, 0.3)',})
.to('.sec3 .box03', {duration: 2, delay: 2})
.to('.sec3 .box03', {duration: 0, opacity: 0, y: -100})

.to('.sec3 .box04', {duration: 0, opacity: 1, y: 0})
.to('.sec3 .indicator span:nth-child(3)', {duration: 0, backgroundColor: 'transparent',})
.to('.sec3 .indicator span:nth-child(4)', {duration: 0, backgroundColor: 'rgb(255, 255, 255, 0.3)',})
.to('.sec3 .box04', {duration: 2, delay: 2})
.to('.sec3 .box04', {duration: 0});

/* //cont03 스크롤 모션 */


/* cont04 가로 스크롤 모션 */
// var swiper = new Swiper('.card-slide', {
//     direction: 'horizontal',
//     // mousewheelControl: true,
//     // parallax: true,
//     mousewheel: true,
//     speed: 300,
//     slidesPerView: 2,
//     //centeredSlides: true,
//     //grabCursor: true,
    
//     // swiper 마우스휠 첫슬라이드/끝슬라이드 도달시 풀림
//     on: {
//         slideChange: function() {
//             setTimeout(function () {
//                 swiper.params.touchReleaseOnEdges = false;  
// 			    swiper.params.mousewheel.releaseOnEdges = false;
//             });
//         },
//         reachEnd: function() {
//             setTimeout(function () {
// 				swiper.params.touchReleaseOnEdges = true;
//                 swiper.params.mousewheel.releaseOnEdges = true;
//             }, 500);
//         },
// 		reachBeginning: function() {
//             setTimeout(function () {
// 				swiper.params.touchReleaseOnEdges = true;
//                 swiper.params.mousewheel.releaseOnEdges = true;
//             }, 500);
//         }
//     }
// });

//스크롤 이벤트
// $(window).scroll(function(){
//     var scroll = $(window).scrollTop();

//     // cont04 고정
//     $cont04Top = $(".cont04").offset().top
//     if (scroll >= $cont04Top) {
//         $(".cont04").addClass('on')
//     }
// });

// let sections = gsap.utils.toArray(".sec4 ul li");

// gsap.to(sections, {
// xPercent: -100 * (sections.length - 1),

// scrollTrigger: {
//         trigger: ".sec4",
//         pin: true,
//         scrub: 1,
//         end: "+=2000",
//         markers: true,
//     }
// });
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec4", // 객체기준범위
        pin: true, // 고정
        start: "top top", // 시작점
        end: "+=6000px", // 끝점
        scrub: 1, // 모션바운스
        markers: false, // 개발가이드선
    }
})
.to('.sec4', {duration: 2, delay: 2})
.to('.sec4 ul', {duration: 10, x: -470})
.to('.sec4', {duration: 2, delay: 2})
.to('.sec4 ul', {duration: 10, x: -940})
.to('.sec4', {duration: 2, delay: 2})
.to('.sec4 ul', {duration: 10, x: -1410})
.to('.sec4', {duration: 2, delay: 2})
.to('.sec4 ul', {duration: 10, x: -1880})
.to('.sec4', {duration: 2, delay: 2})
.to('.sec4 ul', {duration: 10, x: -2350})
.to('.sec4', {duration: 2, delay: 2})
.to('.sec4 ul', {duration: 10, x: -2820})
.to('.sec4', {duration: 2, delay: 2})
.to('.sec4 ul', {duration: 10, x: -3290})
.to('.sec4', {duration: 2, delay: 2})

/* //cont04 가로 스크롤 모션 */



/* cont06 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec6", // 객체기준범위
        //pin: true, // 고정
        start: "-1500px", // 시작점
        end: "+=500px", // 끝점
        scrub: 1, // 모션바운스
        markers: false, // 개발가이드선
    }
})
.to('.cont06', {duration: 2, translateY: '0'})
.to('.cont06', {duration: 2, borderRadius: '0'});

/* cont06 스크롤 모션 */



/* cont08 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec5", 
        pin: true, 
        start: "top top", 
        end: "+=2000", 
        scrub: 1, 
        markers: false,
    }
})
.to('.sec5 .box01 ', {duration: 2, delay: 2})
.to('.sec5 .box01', {duration: 0, opacity: 0, y: -100})
.to('.sec5 .box02', {duration: 0, opacity: 1, y: 0})
.to('.sec5 .indicator span:first-child', {duration: 0,backgroundColor: 'transparent'})
.to('.sec5 .indicator span:nth-child(2)', {duration: 0,backgroundColor: 'rgb(0, 0, 0, 0.1)'})
.to('.sec5 .box02', {duration: 2, delay: 2})
.to('.sec5 .box02', {duration: 0, opacity: 0, y: -100})

.to('.sec5 .box03', {duration: 0, opacity: 1, y: 0})
.to('.sec5 .indicator span:nth-child(2)', {duration: 0,backgroundColor: 'transparent'})
.to('.sec5 .indicator span:nth-child(3)', {duration: 0,backgroundColor: 'rgb(0, 0, 0, 0.1)'})
.to('.sec5 .box03', {duration: 2, delay: 2})
.to('.sec5 .box03', {duration: 0, opacity: 0, y: -100})

.to('.sec5 .box04', {duration: 0, opacity: 1, y: 0})
.to('.sec5 .indicator span:nth-child(3)', {duration: 0,backgroundColor: 'transparent'})
.to('.sec5 .indicator span:nth-child(4)', {duration: 0,backgroundColor: 'rgb(0, 0, 0, 0.1)'})
.to('.sec5 .box04', {duration: 2, delay: 2})
.to('.sec5 .box04', {duration: 0});

/* //cont08 스크롤 모션 */

/* cont09 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec7",
        start: "top top", 
        end: "+=700px", 
        pin: true, 
        scrub: true, 
        markers: false,
    }
})
.to('.sec7 .cont09 div', {duration: 2, opacity: 1, translateY: 0})
.to('.sec7 .cont09', {duration: 2, delay: 2})
.to('.sec7 .cont09', {duration: 0})
/* cont09 스크롤 모션 */