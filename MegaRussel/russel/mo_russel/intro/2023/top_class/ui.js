$(function() {
	gotoCampus()
	meritSlide()
});


// 모집안내 바로가기 버튼
function gotoCampus(){
	$('.fixed-bar a').on('click',function(e){
		e.preventDefault();
		var $cont_top = $('#cont').offset().top;

		$('html, body').animate({scrollTop:$cont_top - 100}, 700);
	});
};

// 슬라이드
function meritSlide(){
	$('.merit-slide').each(function(index){
		var $this = $(this)
		var slide = $(this).addClass('merit-slide-0' + parseInt(index+1))

	})
	var swiper = new Swiper('.merit-slide-01', {
		loop:true,
		slidesPerView: 1,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},
	});

	var swiper02 = new Swiper('.merit-slide-02', {
		observer: true,
		observeParents: true,
		loop:true,
		slidesPerView: 1,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},
	});

	var swiper03 = new Swiper('.merit-slide-03', {
		observer: true,
		observeParents: true,
		loop:true,
		slidesPerView: 1,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},
	});

	var swiper04 = new Swiper('.merit-slide-04', {
		observer: true,
		observeParents: true,
		loop:true,
		slidesPerView: 1,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
        autoHeight: true,
		pagination: {
			el: ".swiper-pagination",
		},
	});

}
