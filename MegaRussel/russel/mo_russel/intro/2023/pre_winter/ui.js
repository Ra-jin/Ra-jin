$(function() {

	tabMenu('.tab-wrap','.tab-cont');
	rollSlide();
	fixmenu();
	studySlide();
});

//cont3 시간표 클릭 시 딤드처리
$('.tt-wrap').on('click',function(){
	$('.layer-tt').addClass('on')
	$('.mask-bg').css('display','block')
})
$('.bt-close-tt').on('click',function(){
	$('.layer-tt').removeClass('on')
	$('.mask-bg').css('display','none')
})


//cont3 중3시간표 클릭 시 딤드처리
$('.tt-wrap02').on('click',function(){
	$('.layer-tt02').addClass('on')
	$('.mask-bg').css('display','block')
})
$('.bt-close-tt').on('click',function(){
	$('.layer-tt02').removeClass('on')
	$('.mask-bg').css('display','none')
})

function rollSlide(){
    $(".rolling-slide").each(function(index){
        var $this = $(this);
        var slide = $this.addClass("js-mySwiper-" + parseInt(index+1));

        var slideCont = new Swiper(slide, {
			spaceBetween: 10,
            loop: true,
            observer: true,
            observeParents: true,
            slidesPerView : 1,
            slidesPerGroup :1,
            speed : 500,
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
			pagination: {
				el: ".swiper-pagination",
				dynamicBullets: true,
				clickable: true,
			},
			autoHeight : true,
        });
		//스크롤 이벤트
		// $(window).scroll(function(){
		// 	var wScroll = $(window).scrollTop();

		// 	//cont05 슬라이드 컨텐츠 영역 안에서만 작동
		// 	var gTop05 = $(".cont05");
		// 	var $gtopScroll05  = gTop05.offset().top - 100;
		// 	var gEnd = $(".cont06").offset().top;
		// 	if(wScroll >= $gtopScroll05 && wScroll < gEnd){
		// 		slideCont.autoplay.start(0)

		// 		$('.slide').hover(
		// 			function(){
		// 				slideCont.autoplay.stop()
		// 			},
		// 			function(){
		// 				slideCont.autoplay.start(0)
		// 			}
		// 		)

		// 	} else {
		// 		slideCont.autoplay.stop()
		// 	}
		// })
    });


}




/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');

	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		// 각 cont진입 시 클래스 active 추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - 150);
			if(scroll >= $target_top){
				$target.addClass('on').siblings().removeClass('on');
			}
		});


		//만약에 스크롤 탑이 탭버튼에 닿았을 때 탭버튼에  on이 붙도록 하기
		var $tab = $('.program-wrap');
		var $tab_top  = Math.floor($tab.offset().top - 150);

		var $lineBanner = $('.line-banner.nav-end');
		var $lineBanner_top  = Math.floor($lineBanner.offset().top - 0);



		if(scroll > $tab_top){
			$tab.addClass('on')
		}

		if(scroll < $tab_top){
			$tab.removeClass('on')
		}


		//탭이 최하단 배너에 닿으면 안 보이도록
		var $tabWrap = $('.program-wrap .tab-wrap');
	

		if(scroll + $tabWrap.innerHeight() >= $lineBanner_top - $tabWrap.innerHeight()){
			$tabWrap.css('display', 'none')
		}
		if(scroll + $tabWrap.innerHeight() < $lineBanner_top - $tabWrap.innerHeight()){
			$tabWrap.css('display', 'flex')
		}


	});
	


	var $tabBtn = $('.program-wrap .tab-wrap a');
	$tabBtn.click(function(e){
		e.preventDefault();

		var $tabCont = $('.tab-cont.on');
		var $tabCont_top  = Math.floor($tabCont.offset().top - 100);
		
		$doc.animate({scrollTop:$tabCont_top - 0 }, 800);
		
	});


}

// 바자관시간표 슬라이드
function studySlide(){

	var studyNav = new Swiper('.study-slide-nav', {
		slidesPerView: 2,
		freeMode: false,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});

	var studySlide = new Swiper('.study-slide', {
		loop: false,
		centeredSlides: true,
		allowTouchMove: true,
		autoHeight: true,
		autoplay:false,
		thumbs: {
			swiper: studyNav
		},
		spaceBetween: 100,

		on: {
			beforeTransitionStart: function () {
				// 슬라이드 change시 클래스 on 추가 및 제거
				let activeIndex = this.realIndex;
				$('.study-slide-nav .swiper-slide-thumb-active').addClass('on').siblings().removeClass('on');
				

				//스위치 모션 온오프
				
				var btnBar = $('.btn-bar');
				
				if(activeIndex == 1){
					btnBar.addClass('rightOn');
				}

				if(activeIndex  == 0){
					btnBar.removeClass('rightOn');
				}
				
			},
			
		}
	});

}