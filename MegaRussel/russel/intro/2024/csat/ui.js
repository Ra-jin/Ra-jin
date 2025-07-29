$(document).ready(function(){
	stuSlide();
	programSlide();

	// var $top = $('.mock-wrap').offset().top;
	//페이지 첫 진입시 비주얼 영역 맞춤
	var bodytop	= $(".mock-wrap").offset().top;
	$("html,body").animate({scrollTop:bodytop},700)

	//tab메뉴
	// $(".bt-tab span").click(function() {
	// 	var index = $(this).index();
		
	// 	$(this).addClass('on').siblings().removeClass('on')
	// 	$(".cont-box").eq(index).addClass('on').siblings().removeClass('on')
		
	// 	return false;
	// });

	//탭메뉴 성적분석리포트탭 안 열었을 경우
	$(".bt-tab span").click(function() {
		var index = $(this).index();
		
		$(this).eq(1).addClass('on').siblings().removeClass('on')
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


//학생 맞춤 관리
function stuSlide(){
	$(".stu-slide").each(function(i){
		var $this = $(this);
		var slide01 = $this.addClass('stu-slide-' + parseInt(i+1))

		var stuSlide = new Swiper(slide01, {
			autoplay: {
				delay: 0,
				disableOnInteraction: false,
				pauseOnMouseEnter: true,
			},
			loop:true,
			centeredSlides: true,
			centeredSlidesBounds: true,
			speed: 3500,
			grabCursor: true,
			initialSlide : randomIdx(),//슬라이드 시작 랜덤
			slidesPerView: 'auto',
			spaceBetween: 16,
			// spaceBetween: 0,
			freeMode: {
				enabled: true,
				momentumBounce:false
			},
		});
	});
}

//슬라이드 랜덤
function randomIdx()  {
	var slideTotal01 = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide01 = Math.floor(Math.random() * slideTotal01);
	return parseInt(r_slide01);
}


// function programSlide(){

// 	var swiper = new Swiper('.swiper-container.program-slide', {
// 		slidesPerView: 3,  // 화면에 표시되는 슬라이드 수
// 		spaceBetween: 16,  // 슬라이드 간격
// 		pagination: {
// 			el: '.swiper-pagination.type01',
// 			clickable: true,
// 			dynamicBullets: true,
// 		},
// 		width: 640,
// 		slidesPerGroup: 3, // 한 번에 이동하는 슬라이드 수
// 		loop: true,  // 슬라이드 루프
// 		speed: 3000,
// 		autoplay: {
// 			delay: 3000,  // 자동 슬라이드 딜레이
// 			disableOnInteraction: false,  // 사용자 상호작용 후에도 자동 슬라이드 유지
// 		},
// 	});
// }


function programSlide(){

	var swiper = new Swiper('.swiper-container.program-slide', {
		slidesPerView: 3,  // 화면에 표시되는 슬라이드 수
		// slidesPerView: 'auto',  // 화면에 표시되는 슬라이드 수
		spaceBetween: 16,  // 슬라이드 간격
		pagination: {
			el: '.swiper-pagination.type01',
			clickable: true,
			dynamicBullets: true,
		},
		// centeredSlides: true,
		width: 640,
		slidesPerGroup: 3, // 한 번에 이동하는 슬라이드 수
		loop: true,  // 슬라이드 루프
		speed: 3000,
		autoplay: {
			delay: 3000,  // 자동 슬라이드 딜레이
			disableOnInteraction: false,  // 사용자 상호작용 후에도 자동 슬라이드 유지
		},
	});
}


$(document).ready(function() {
    // 페이지 로드 후 첫 번째 탭을 기본으로 활성화
    $('.tab-link').first().addClass('on');
    var firstImg = $('.tab-link').first().find('img');
    var firstImgSrc = firstImg.attr('src');
    firstImg.attr('src', firstImgSrc.replace('.jpg', '_on.jpg'));
    $('#tab-content-1').addClass('on');

    // 탭 클릭 이벤트 처리
    $('.tab-link').click(function(event) {
        event.preventDefault();

        // 모든 탭의 이미지를 원래 상태로 되돌림
        $('.tab-link img').each(function() {
            var imgSrc = $(this).attr('src');
            if (imgSrc.includes('_on.jpg')) {
                $(this).attr('src', imgSrc.replace('_on.jpg', '.jpg'));
            }
        });

        // 클릭한 탭의 이미지에 _on 추가
        var clickedImg = $(this).find('img');
        var clickedImgSrc = clickedImg.attr('src');
        clickedImg.attr('src', clickedImgSrc.replace('.jpg', '_on.jpg'));

        // 모든 탭에서 on 클래스 제거
        $('.tab-link').removeClass('on');

        // 클릭한 탭에 on 클래스 추가
        $(this).addClass('on');

        // 모든 컨텐츠 숨기기
        $('.cont-benefit').removeClass('on');

        // 클릭한 탭에 해당하는 컨텐츠 보여주기
        var contentId = '#tab-content-' + $(this).data('tab');
        $(contentId).addClass('on');
    });
});