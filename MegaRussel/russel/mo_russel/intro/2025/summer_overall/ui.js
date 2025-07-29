$(function(){
	fixmenu();	
	// chartDn();
	if ($('.cont03 div').hasClass('grade-slide-wrap')) {
		// cont04 학년별 탭슬라이드
		gradeSlide();
	}
	studyHallSlide();
	methodSlide();
	manageSlide();
	ctSlide();
	if($('.cont04 .teacher-wrap div').hasClass('teacher-rolling')) {
		teachSlide();
	}else if($('.cont04 .teacher-wrap div').hasClass('teacher-sub-list')){
		teacherSlide();
	};
	tabMenu('.tab-wrap','.tab-cont');
})

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
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$target.addClass('on').siblings().removeClass('on');
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
	});
}


//count 한번만 실행
// let countStart = true
// // 스크롤 이벤트
// $(window).scroll(function(){
// 	var scroll = $(window).scrollTop();

// 	if($(".cont05").hasClass("on")) {
// 		var gTop = $(".trick-box");
// 		var $gtopScroll  = gTop.offset().top;
// 		if(scroll >= $gtopScroll && start == true){
// 			chartDn()
// 			start = false
// 		}
// 		else {
// 			// $('.counter').text(0);
// 		}
// 	}
// });

/* chart */
// 도넛차트 한번만 실행
// var start = true;
// function chartDn() {
					
// 	var ctx = document.getElementById("doughnut-chart").getContext('2d');;
// 	gradient = ctx.createLinearGradient(10, 150, 50, 50);

// 	gradient.addColorStop(0, '#082EC7 ');
// 	gradient.addColorStop(1, '#4268FF ');

// 	var myChart = new Chart(ctx, {
// 		type: 'doughnut',
// 		data: {
// 			datasets: [
// 				{
// 					backgroundColor: ["#717171", "#fff" , gradient, "#fff"],
// 					data: [170, 3, 824, 3],
// 					borderWidth: "2",
// 					cutout: "58%",
// 					borderColor: "transparent",
// 					//borderRadius: "200",
// 				}
// 			]
// 		},
// 		options: {
// 			plugins: {
// 				tooltip: {
// 					enabled: false,
// 				},
// 				hover: {
// 					mode: null
// 				}
// 			},
// 		},
// 	})
// }



/*데이터 산출 기준 */
$(function(){
    $('.data-txt').on('click',function(){
        $(this).next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

// 학년별 탭슬라이드
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


/* 썸머스쿨만의 방법 슬라이드 */
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

/* 선생님 슬라이드01 */
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

/*  선생님 슬라이드02 */
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

/* 입시관리 탭 */
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

/*  콘텐츠 슬라이드 */
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

