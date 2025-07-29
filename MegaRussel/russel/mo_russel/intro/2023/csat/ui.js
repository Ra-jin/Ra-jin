$(function() {
	dataView()
	mapSlide()
});

// 데이타 보기
function dataView(){
	$('.data-txt').on('click',function(){
		$(this).next('.data-detail').toggleClass('on')
	})
}
	
// 지도 리뷰 슬라이드	
var idx = 1;
var addActive = setInterval(mapSlide, 2000);
$('.map-txt li').on('click',function(){
	var click_index = $(this).index()
	setTimeout(mapSlide, 0);
	idx = click_index;
	
})
function mapSlide(){
	var m_img = $('.map-img li')
	var m_txt = $('.map-txt li')
	m_img.removeClass('on')
	m_txt.removeClass('on')
	m_img.eq(idx).addClass('on')
	m_txt.eq(idx).addClass('on')

	idx++;
	
	if(idx >= m_img.length){
		idx = 0
	}if(idx >= m_txt.length){
		idx = 0
	}
	return idx;
}

	
	// Q1슬라이드
	var swiperCampus = new Swiper('.c-slide', {
		slidesPerView: 2,
		spaceBetween: 10,
		loop: true,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
	});
	
	// Q2슬라이드
	var swiperStudent = new Swiper('.st-slide', {
		spaceBetween: 40,
		loop: true,
		autoplay: {
			delay: 7000,
			disableOnInteraction: false,
		},
		pagination: {
		  el: ".swiper-pagination",
		  clickable: true,
		},

	});

	// Q3슬라이드
  var swiper = new Swiper('.t-slide', {
    slidesPerView: 1,
    loop: true,
      autoplay: {
      delay: 2000,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    observer: true,
    observeParents: true,
  });	

	// 탭버튼
	$(function(){
		var $bt		= $('.t-bt > a');
		var $cont	= $('.t-cont');
		var $bt2	= $('.info-bt > a');
		var $cont2	= $('.info-cont');

		$bt.on('click',function(e){
			e.preventDefault()
			var i	=  $(this).index()

			$(this).addClass('on').siblings().removeClass('on')
			$cont.eq(i).addClass('on').siblings().removeClass('on')
		})

		$bt2.on('click',function(e){
			e.preventDefault()
			var i	=  $(this).index()

			$(this).addClass('on').siblings().removeClass('on')
			$cont2.eq(i).addClass('on').siblings().removeClass('on')
		})
		
	})
