
$(document).ready(function(){

	tabMenu('.bt-tab','.cont-box') 
	tabMenu('.bt-wrap','.t-cont-box') 
	// cont01 도넛차트 실행
	if ($('.cont02 div').hasClass('stu-review')) {
        stuSlide()
    }
});

//데이터 산출 기준
$(function(){
    $('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})
// 학생후기 슬라이드
function stuSlide() {
	
	var stuSwiper02 = new Swiper('.stu-review', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type01",
			clickable: true
		}
	});
}