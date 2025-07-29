$(function(){
	//고정메뉴, 스크롤 이벤트
	fixmenu();
	
	// cont02
	infraSlide();
	smScroll();

	//cont06 합격 대학 슬라이드 
	uniSlide();

	// cont08 선생님 슬라이드
	teacherSlide();

	// cont10 장학승반 슬라이드
	scholarSlide();
	// contScroll();

	// cont12
	// programSlide();
	// subSlide();
	lineSlide();
	cSlide();

    // cont13
    studyHallSlide();
	// cont14 관리 탭슬라이드, 이미지롤링
	manageSlide();

	if($('.cont13 div').hasClass('v-wrap')){
		videoPlay();
	}

})

//데이터 산출 기준
$(function(){
    $('.data-txt').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

//데이터 산출 기준
$(function(){
    $('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})


// 고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 102;
	var $bt_fix = $('.js-fix-menu li');
	var $fix_h = $('.js-fix-menu').height() + 102;

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

		// 각 cont진입 시 클래스 active 추가
		// $cont.each(function(i){
		// 	var $target = $cont.eq(i);
		// 	var $target_top  = Math.floor($target.offset().top - $fix_h);
		// 	if(scroll >= $target_top){
		// 		$target.addClass('active').siblings().removeClass('active');
		// 	}
		// });
		// fix-menu 탭 영역 진입 시 fix-button 클래스 on 추가
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);
			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
		if($('.js-cont-wrap > div').hasClass('cont02')) {
			if($('.cont02 div').hasClass('d-start')){
				// cont02에 스크롤시 이벤트 실행
				var cTop = $(".cont02");
				var $ctopScroll  = cTop.offset().top-150;
				var gTop = $(".cont02 .d-start");
				var chartEl = $(".doughnut > div");
				var $gtopScroll  = gTop.offset().top-350;
				
				if(scroll >= $gtopScroll){
					gTop.addClass("on");
					//도넛차트 on일때 한번만 시작
					if(gTop.hasClass("on") && chartEl.hasClass('chart-area') && start == true) {
						chartDn()
						start = false
					}
				}else{
					gTop.removeClass("on");
					if (chartEl.hasClass('chart-area')) {
						//도넛차트 destroy
						$("#doughnut-chart").remove();
						$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
						start = true
					}
				}

				if(scroll >= $ctopScroll){
					cTop.addClass("on");
				}else{
					cTop.removeClass("on");
					gTop.removeClass("on");
				}

			}
		}

	});
}


//애니메이션 화살표
function smScroll(){
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con02 = $(".cont02")
		var con02top = con02.offset().top-150;
		var con03top = $('.cont03').offset().top-150;

		//화살표 애니메이션 실행
		if (scroll >= con02top && scroll <= con03top) {
			con02.addClass('on')
		} else {
			con02.removeClass('on')
		}
	});
}
// function contScroll(){
// 	$(window).scroll(function(){
// 		var scroll = $(window).scrollTop();
// 		let con10 = $(".cont10")
// 		var con10top = con10.offset().top-150;
// 		var con11top = $('.cont11').offset().top-150;

// 		//화살표 애니메이션 실행
// 		if (scroll >= con10top && scroll <= con11top) {
// 			con10.addClass('on')
// 	} else {
// 			con10.removeClass('on')
// 		}
// 	});
// }


function hsScroll(){
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let cont09 = $(".cont09")
		var cont09top = cont09.offset().top-150;
		var cont10top = $('.cont10').offset().top-150;

		//화살표 애니메이션 실행
		if (scroll >= cont09top && scroll <= cont10top) {
			cont09.addClass('on')
		} else {
			cont09.removeClass('on')
		}
	});
}


/* chart */
var myChart; // 전역 변수로 선언하여 차트 인스턴스를 참조
var start = true; // 도넛차트 한번만 실행

function chartDn() {
    var ctx = document.getElementById("doughnut-chart").getContext('2d');

    // 그라데이션 설정
    var gradient = ctx.createLinearGradient(10, 150, 0, 10);
    gradient.addColorStop(0, '#F98909');
    gradient.addColorStop(1, '#EE3A09');

    // 새로운 차트 생성
    myChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
            datasets: [
                {
                    backgroundColor: ["#ccc", "#fff", gradient, "#fff"],
                    data: [50, 3, 944, 3],
                    borderWidth: "2",
                    cutout: "58%",
                    borderColor: "transparent",
                }
            ]
        },
        options: {
            plugins: {
                tooltip: {
                    enabled: false,
                },
                hover: {
                    mode: null,
                }
            },
        },
    });
}

// cont02 이미지 슬라이드
function infraSlide(){
	var infSwiper = new Swiper('.infra-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoHeight: true,
		spaceBetween: 20,
		speed: 2000,
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.infra",
			clickable: true
		},
	});

	//스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con02 = $(".cont02")
		let con02Top = con02.offset().top-150;
		let con03Top = $(".cont03").offset().top-150;
		
		if (scroll >= con02Top && scroll <= con03Top) {
			con02.addClass('on')
			infSwiper.autoplay.start();
		} else {
			con02.removeClass('on')
			infSwiper.autoplay.stop();
		}
	})
}

//cont06 합격 대학 슬라이드 
function uniSlide(){
	var uniSwiper = new Swiper('.uni-slide', {
		slidesPerView: "1",
		spaceBetween: 20,
		centeredSlides: true,
		centeredSlidesBounds: true,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		  },
		loop : true,
		loopAdditionalSlides: 1, 
		speed : 500, 
		allowTouchMove : true,
		observer: true,
		observeParents: true, 
		autoHeight : true,
	});
	
	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con06 = $(".cont06")
		let conTop06 = con06.offset().top;
		let conTop07 = $(".cont07").offset().top-150;
		
		if (scroll >= conTop06 && scroll <= conTop07) {
			con06.addClass('on')
			uniSwiper.autoplay.start();
		} else {
			con06.removeClass('on')
			uniSwiper.autoplay.stop();
		}
	})
}


// cont07 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 5,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	var slideCont = new Swiper('.studyHall-slide', {
		spaceBetween: 5,
		loop: true,
		loopAdditionalSlides : 1,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true,
		pagination: {
			el: ".swiper-pagination.stuhall",
			
		}
	});
	
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con13 = $(".cont13");
		let con13Top = con13.offset().top-150;
		let con14Top = $(".cont14").offset().top-150;
		
		if (scroll >= con13Top && scroll <= con14Top) {
			con13.addClass('on')
			slideCont.autoplay.start();
		} else {
			con13.removeClass('on')
			slideCont.autoplay.stop();
		}
	});
}

// cont08 선생님 롤링 슬라이드
function teacherSlide(){
	var tSwiper = new Swiper('.teacher-rolling' ,{
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

// cont12 학습 콘텐츠 슬라이드
function programSlide(){
	var programSlideNav = new Swiper('.program-navi', {
		slidesPerView: 4,
		spaceBetween: 1,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	var programCont = new Swiper('.program-slide', {
		slidesPerView: "auto",
		centeredSlides: true,
		speed : 500,
		spaceBetween: 10, 
		autoHeight: true,
		allowTouchMove: false,
		observer: true,
		observeParents: true,
		thumbs: {
			swiper: programSlideNav
		},
		on: {
			beforeTransitionStart: function (){
				setTimeout(function() {
					$('.program-slide > .swiper-wrapper > .swiper-slide .pro-wrap').css('display','none')
					$('.program-slide > .swiper-wrapper > .swiper-slide-active .pro-wrap').css('display','block')
				},500)
				setTimeout(function() {
					$('.program-slide > .swiper-wrapper > .swiper-slide-active .pro-wrap').css('display','block')
				},50)
			}
		}
	});

	// 스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con12Top = $(".cont12").offset().top-150;
	// 	let con13Top = $(".cont13").offset().top-150;
		
	// 	if (scroll >= con12Top && scroll <= con13Top) {
	// 		programCont.autoplay.start();
	// 	} else {
	// 		programCont.autoplay.stop();

	// 	}
	// });
}

// cont12 프로그램 서브 슬라이드
function subSlide(){
	var subSwiper = new Swiper('.sub-slide', {
		loop : false,
		loopAdditionalSlides: 1, 
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 10, 
		// autoHeight: true,
		speed : 1000,
		allowTouchMove: true,
		observer: true,
		observeParents: true,
		autoplay:{
			delay: 7000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.swiper-pagination.sub',
			clickable: true
		}
	});

	// 스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con12Top = $(".cont12").offset().top-150;
	// 	let con13Top = $(".cont13").offset().top-150;
		
	// 	if (scroll >= con12Top && scroll <= con13Top) {
	// 		subSwiper.autoplay.start();
	// 	} else {
	// 		subSwiper.autoplay.stop();

	// 	}
	// });
}

function lineSlide(){
	var lnSlide = new Swiper('.line-slide', {
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

	// 스크롤 떨림 현상 방지
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con12Top = $(".cont12").offset().top-150;
	// 	let con13Top = $(".cont13").offset().top-150;
		
	// 	if (scroll >= con12Top && scroll <= con13Top) {
	// 		lnSlide.autoplay.start();
	// 		subSwiper.autoplay.start();
	// 	} else {
	// 		lnSlide.autoplay.stop();
	// 		subSwiper.autoplay.stop();
	// 	}
	// });
}

// cont08 애니메이션 화살표
function arrScroll(){
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let cont07 = $(".cont07")
		var cont07top = cont07.offset().top-150;
		var cont08top = $('.cont08').offset().top-150;

		//화살표 애니메이션 실행
		if (scroll >= cont07top && scroll <= cont08top) {
			cont07.addClass('on')
		} else {
			cont07.removeClass('on')
		}
	});
}

// cont12 콘텐츠리스트 롤링 슬라이드
function cSlide(){
	var ctSwiper = new Swiper('.con-roll',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 5000,
		grabCursor: true,
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}

// cont12 과목별 시행일정 팝업
$(function(){
    $(".js-bt-daily").on("click", function(){
		$('.js-w-pop .daily').addClass("on");
		$(".js-w-pop").css("display","flex");
	})

	//x버튼 누르면 팝업 사라짐
	$(".js-bt-close").on("click",function(){
		$(".js-w-pop div").removeClass("on");
		$(".js-w-pop").css("display","none")
	});
})



// cont10 장학 승반 슬라이드
function scholarSlide(){
	var scholarSwiper = new Swiper(".scholar-slide", {
		slidesPerView: "auto",
		spaceBetween: 10,
		// autoHeight: true,
		allowTouchMove: true,
		loop: true,
		speed : 500,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		observer: true,
		observeParents: true,	
		pagination: {
			el: ".swiper-pagination.scholar",
			clickable: true
		}
	});

	//  스크롤 떨림 현상 방지
	// $(window).scroll(function(){
	// 	var scroll = $(window).scrollTop();
	// 	let con10 = $(".cont10")
	// 	let conTop10 = con10.offset().top-150;
	// 	let conTop11 = $(".cont11").offset().top-150;
		
	// 	if (scroll >= conTop10 && scroll <= conTop11) {
	// 		con10.addClass('on')
	// 		scholarSwiper.autoplay.start();
	// 	} else {
	// 		con10.removeClass('on')
	// 		scholarSwiper.autoplay.stop();
	// 	}
	// })
}


//cont08 유튜브 영상 자동재생
function videoPlay(){

	$(window).scroll(function() {
		var con13 = $('.cont13');
		var con13Top = con13.offset().top-150;
		var scrollTop = $(window).scrollTop();
		var windowHeight = $(window).height();

		// .cont08 요소가 화면에 진입했는지 확인
		if (scrollTop + windowHeight > con13Top) {
			if (!con13.hasClass('on')) {  // 'on' 클래스가 없는 경우에만 추가
				con13.addClass('on');

				// 기존 iframe 삭제 및 새로운 iframe 생성 (항상 autoplay, mute 적용)
				con13.find('.v-wrap').html(`
                    <iframe width="100%" height="191"
                        src="https://www.youtube.com/embed/99BcdphVpvk?autoplay=1&mute=1&controls=0&modestbranding=1&showinfo=0&rel=0" 
                        frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>
                    </iframe>
				`);
			}
		}
	});
}

//cont14 관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	var manageCont = new Swiper('.manage-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 10,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: manageSlideNav
		},
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont14Top = $(".cont14").offset().top-150;
		let btTop = $(".bt-banner").offset().top-150;
		
		if (scroll >= cont14Top && scroll <= btTop) {
			manageCont.autoplay.start();
		} else {
			manageCont.autoplay.stop();

		}
	});
}
