$(function(){
	fixmenu();
	reviewSlide();
	if ($('.cont04 div').hasClass('grade-slide-wrap')) {
		// cont04 학년별 탭슬라이드
		gradeSlide();
	}
	studyHallSlide();
	methodSlide();
	manageSlide();
	ctSlide();
	if($('.cont07 .teacher-wrap div').hasClass('teacher-rolling')) {
		teachSlide();
	}else if($('.cont07 .teacher-wrap div').hasClass('teacher-sub-list')){
		teacherSlide();
	};
	tabMenu('.tab-wrap','.tab-cont');

	if($('.container').hasClass('russel')){
		specialSlide();

	}


    // 중복된 .mask-bg 제거 (한 번만 실행)
    $('.mask-bg').not(':first').remove();
})

// 대치학원  롤링 내 팝업
$(document).on('click', '.bt-tt.bt-tt01', function () {
	$('.layer-tt').removeClass('on');
	$('.layer-tt.layer01').addClass('on');
	$('.mask-bg').show();
});

$(document).on('click', '.bt-tt.bt-tt02', function () {
	$('.layer-tt').removeClass('on');
	$('.layer-tt.layer02').addClass('on');
	$('.mask-bg').show();

});

$(document).on('click', '.bt-tt.bt-tt03', function () {
	$('.layer-tt').removeClass('on');
	$('.layer-tt.layer03').addClass('on');
	$('.mask-bg').show();
});

$(document).on('click', '.bt-tt', function () {
	// mask-bg가 여러 개면 하나만 남기고 제거
	$('.mask-bg').not(':first').remove();
});

// 팝업 닫기 (X 버튼으로만 닫기)
$(document).on('click', '.bt-close-tt', function () {
	$('.layer-tt').removeClass('on');
	$('.mask-bg').hide();
});





/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 110;
	var $fix_h = $('.js-fix-menu').height() + 100;
	var $bt_fix = $('.js-fix-menu li');

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
		
		$doc.animate({scrollTop:$contWrap_top - $fix_h}, 800);
	});

	//1번만 실행 변수
	let playStart01 = true;
	let playStart02 = true;

	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		// 각 cont진입 시 클래스 on 추가
		// $cont.each(function(i){
		// 	var $target = $cont.eq(i);
		// 	var $target_top  = Math.floor($target.offset().top - $fix_h);
		// 	if(scroll >= $target_top){
		// 		$target.addClass('on').siblings().removeClass('on');
		// 	}
		// });

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				// js-cont 클래스끼리만 on 클래스 토글
				$cont.removeClass('on');
				$target.addClass('on');
			}
		});


		// fix-menu 탭 영역 진입 시 fix-button 클래스 on 추가
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);
			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		

		// cont02 입결 애니메이션 N회
		var flag = true;
		if($('.cont02').hasClass('on')) {
			$('.achieve-box').addClass('on')
		}

	});
}

/*데이터 산출 기준 */
$(function(){
    $('.data-txt').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

/* cont02 카운트 */
// function countNum() {
// 	$('.counter').each(function() {
// 		var $this = $(this),
// 			countTo = $this.attr('data-count');
// 		$({ countNum: $this.text()}).animate({
// 			countNum: countTo
// 		},
// 		{
// 			duration: 1800,
// 			easing:'linear',
// 			//4자리 수일때 콤마사용
// 			step: function() {
// 			$this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
// 			},
// 			complete: function() {
// 			$this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
// 			}
// 		});
// 	});
// };

/* cont03 학생 리뷰 슬라이드 */
function reviewSlide(){
    var totalSlides = $('.review-slide .swiper-wrapper .swiper-slide').length;
    
    var rSwiper = new Swiper('.review-slide', {
        slidesPerView: 'auto',
        loop: true,
        allowTouchMove: true,
        autoHeight: true,
        spaceBetween: 15,
		centeredSlides: true,
		centeredSlidesBounds: true,
        speed: 500,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        on: {
            init: function () {
                updateSlideCount(this.realIndex + 1, totalSlides);
            },
            slideChangeTransitionEnd: function () {
                updateSlideCount(this.realIndex + 1, totalSlides);
            }
        }
    });

    function updateSlideCount(currentSlide, totalSlides) {
        $('.slide-cnt').text(currentSlide + '/' + totalSlides);
    }

    // slide 갯수에 따른 pagination width값 조절
    let slideLeng = totalSlides;
    let bulletWidth = 100 / slideLeng
    $(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")
}

// cont04 학년별 탭슬라이드
function gradeSlide(){
	var stuSlideNav = new Swiper('.grade-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	if ($(".grade-slide .swiper-wrapper .swiper-slide").length == 2) {
		// slide 2개 일 경우
		var slidegrade= new Swiper('.grade-slide', {
			spaceBetween: 10,
			loop: false,
			loopAdditionalSlides : 1,
			autoHeight: true,
			speed : 500,
			allowTouchMove: true,
			// autoplay:{
			// 	delay: 4000,
			// 	disableOnInteraction: false,
			// },
			thumbs: {
				swiper: stuSlideNav
			},
			observer: true,
			observeParents: true,
		});
	}
	else if($(".grade-slide .swiper-wrapper .swiper-slide").length == 1){	
		$('.swiper-slide-active').addClass('swiper-slide-thumb-active');
	} 
	else {
		var slidegrade = new Swiper('.grade-slide', {
			spaceBetween: 10,
			loop: true,
			loopAdditionalSlides : 1,
			autoHeight: true,
			speed : 500,
			allowTouchMove: true,
			// autoplay:{
			// 	delay: 4000,
			// 	disableOnInteraction: false,
			// },
			thumbs: {
				swiper: stuSlideNav
			},
			observer: true,
			observeParents: true,
		});
	}
}


/* cont04 썸머스쿨만의 방법 슬라이드 */
function methodSlide(){
	var stuSlideNav = new Swiper('.method-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	var slideCont = new Swiper('.method-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 10,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		// autoplay:{
		// 	delay: 5000,
		// 	disableOnInteraction: false,
		// },
		thumbs: {
			swiper: stuSlideNav
		},
	});
}

// 바자관 슬라이드
function studyHallSlide(){
	var stuSlideNav1 = new Swiper('.studyHall-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	
	var slideCont1 = new Swiper('.studyHall-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 10,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		// autoplay:{
		// 	delay: 5000,
		// 	disableOnInteraction: false,
		// },
		thumbs: {
			swiper: stuSlideNav1
		},
	});
}


/* cont04 대치 스페셜탭 */
function specialSlide(){
	var manageSlideNav = new Swiper('.special-slide-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	})

	var manageCont = new Swiper('.special-slide', {
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 5, 
		autoHeight: true,
		loop:true,
		speed : 500,
		allowTouchMove: true,
		observer: true,
		observeParents: true,
		thumbs: {
			swiper: manageSlideNav
		},
		// autoplay:{
		// 	delay: 7000,
		// 	disableOnInteraction: false,
		// },

	})
}



/* cont05 선생님 슬라이드01 */
function teachSlide() {
	var teacherSwiper = new Swiper('.teacher-rolling',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		speed: 3000,
		slidesPerView: 'auto',
		spaceBetween: 20,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
		observer: true,
		observeParents: true
	});
}

/* cont05 선생님 슬라이드02 */
function teacherSlide(){
	var tSwiper = new Swiper('.teacher-sub-list' ,{
		// allowTouchMove: false,
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
		},
		centeredSlidesBounds: true,
		loop:true,
		speed: 2700,
		slidesPerView: 'auto',
		spaceBetween: 15,
	});

}

/* cont06 입시관리 탭 */
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	})

	var manageCont = new Swiper('.manage-slide', {
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 5, 
		autoHeight: true,
		loop:true,
		speed : 500,
		allowTouchMove: true,
		observer: true,
		observeParents: true,
		thumbs: {
			swiper: manageSlideNav
		},
		// autoplay:{
		// 	delay: 7000,
		// 	disableOnInteraction: false,
		// },
		on: {
			beforeTransitionStart: function () {
				setTimeout(function() {
					$('.manage-slide > .swiper-wrapper > .swiper-slide .s-wrap').css('display','none')
					$('.manage-slide > .swiper-wrapper > .swiper-slide-active .s-wrap').css('display','block')
				},500)
				
				setTimeout(function() {
					$('.manage-slide > .swiper-wrapper > .swiper-slide .s-wrap').css('display','none')
					$('.manage-slide > .swiper-wrapper > .swiper-slide-active .s-wrap').css('display','block')
				},10)
			}
		}
	})
}

/* cont08 콘텐츠 슬라이드 */
function ctSlide(){
    var totalSlides = $('.ct-slide .swiper-wrapper .swiper-slide').length;
    
    var rSwiper = new Swiper('.ct-slide', {
        slidesPerView: 'auto',
        loop: true,
        allowTouchMove: true,
        autoHeight: true,
        spaceBetween: 15,
		centeredSlides: true,
		centeredSlidesBounds: true,
        speed: 500,
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
        pagination: {
            el: ".ct-pager",
            clickable: true,
        },
    });

    // slide 갯수에 따른 pagination width값 조절
    let slideLeng = totalSlides;
    let bulletWidth = 100 / slideLeng
    $(".ct-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")
}

