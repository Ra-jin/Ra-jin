
$(document).ready(function(){
    //상단 높이 맞춤
	var $top = $('.mock-wrap').offset().top;
	// $('html, body').animate({scrollTop:$top},500);


	// tab메뉴
	// $(".tab-menu > li > a").click(function() {
	// 	var index = $(this).parent().index();
		
	// 	$(this).parent().addClass('on').siblings().removeClass('on')
	// 	$(".tab-wrap > .tab-content").eq(index).addClass('on').siblings().removeClass('on')
		
	// 	return false;
	// });
	
	// //tab메뉴
	// $(".bt-tab a").click(function() {

		
	// 	var index = $(this).index();
		
	// 	$(this).addClass('on').siblings().removeClass('on')
	// 	$(".cont-box").eq(index).addClass('on').siblings().removeClass('on')
		
	// 	return false;
	// });

	//tab메뉴
	$(".bt-tab span").click(function() {

		
		var index = $(this).index();
		
		$(this).addClass('on').siblings().removeClass('on')
		$(".cont-box").eq(index).addClass('on').siblings().removeClass('on')
		
		return false;
	});

	// // 성적 분석 내 tab메뉴
	$(".tab-menu02 > li > a").click(function() {
		
		var id = $(this).parent().parent().attr("id")

		if (id == "subject_list"){}
		else { var index = $(this).parent().index();}

		$(this).parent().addClass('on').siblings().removeClass('on')
		$(this).parent().parent().next().children().eq(index).addClass('on').siblings().removeClass('on')
	
		return false;
	});

	// // 성적 분석 내 tab > tab 메뉴
	$(".tab-menu03 > li > a").click(function() {
		var index = $(this).parent().index();
		
		$(this).parent().addClass('on').siblings().removeClass('on')
		$(this).parent().parent().next().children().eq(index).addClass('on').siblings().removeClass('on')
	
		return false;
	});




	// tab
	// tabMenu('.bt-tab', '.cont-box');

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

	// 혜택 탭
	$('.tab-benefit a').on('click',function(e){
		e.preventDefault()
		var t_list = $('.cont-benefit')
		var t_idx = $(this).index()

		$('.tab-benefit a').removeClass()
		$(this).addClass('on');
		t_list.eq(t_idx).addClass('on').siblings().removeClass('on')

	})

	// 성적 분석 리포트 슬라이드
	var swiper = new Swiper('.slide-report', {
        slidesPerView: 1,
		autoplay: {
			delay: 4000,
			disableOnInteraction: false,
		},
		loop: true,
		observer: true,
		observeParents: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
});

