$(function() {
	
	//gnb틀고정용
	$(window).load(function(){
		//페이지 로드 시 스크롤 visual로 이동
		$('html, body').animate({
			scrollTop : $('.visual-wrap').offset().top + 1			
		});
	});	
    
	//페이지 로드 후 1초 동안 스크롤 중지 후 1초 지나면 스크롤 가능하도록
	function delay(){
		setTimeout(enableScroll ,1000);
	}

	//스크롤 시 스크롤 안 되게 하는 이벤트 제거
	function enableScroll(){
		$(window).off("scroll", disableScroll);
	}

	//스크롤 안 되게 하는 이벤트
	function disableScroll(){
		//페이지 상단 위치값 찾기
		var target = document.querySelector('.visual-wrap');
		var endY = target.getBoundingClientRect().top + window.pageYOffset;

		////스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);
	
	$(".js-cont-wrap").eq(0).children().eq(0).css({"padding-top":"70px"})
	fixmenu();

	smScroll();
	contScroll();
	hsScroll();
	gyScroll();
	
	// cont02 이미지 슬라이드
	infraSlide();

	//cont06 합격 대학 슬라이드 
	uniSlide();

	if($('.cont13 div').hasClass('v-wrap')){
		videoPlay();
	}

	studyHallSlide();

	// cont12 콘텐츠 롤링 슬라이드
	cSlide();
});



/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 80;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $contWrap.eq(i);
		var $cont_top = $cont_i.offset().top - 102;
		// 헤더가 pos-sticky 없을때 첫번째 탭 타겟위치
		if (i == 0) {
			if($('.headerWrap').hasClass('pos-sticky') === false){
				$('html, body').animate({scrollTop:$cont_top + 20}, 800);
			}
			else{
				// 첫번째 탭 클릭시 컨텐츠 위에서 아래로 스크롤이동
				if($cont_top > preScrollTop ){
					$('html, body').animate({scrollTop:$cont_top + $fix_h + 30 }, 800);				
				}
				// 첫번째 탭 컨텐츠 아래에서 위로 스크롤이동
				else{
					$('html, body').animate({scrollTop:$cont_top }, 800);
				}
			}
		}
		// 헤더가 pos-sticky 없을때 타겟위치
		else if($('.headerWrap').hasClass('pos-sticky') === false){
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 30}, 800);
		}
		else {			
			// 클릭시 컨텐츠 위에서 아래로 스크롤이동
			if($cont_top > preScrollTop ){
				$('html, body').animate({scrollTop:$cont_top + $fix_h/2 }, 800);				
			}
			else{
				// 클릭시 컨텐츠 아래에서 위로 스크롤이동
				$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
			}
		}
	});

	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		// 스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}else{
			$('.fix-menu').removeClass('fix')
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$target.addClass('active').siblings().removeClass('active');
			}
		});

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$contWrap.each(function(i){
			var $target = $contWrap.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});


		if($('.cont > div').hasClass('cont02')) {
			if($('.cont02 div').hasClass('d-start')){
				// cont02에 스크롤시 이벤트 실행
				var cTop = $(".cont02");
				var $ctopScroll  = cTop.offset().top-102;
				var gTop = $(".cont02 .d-start");
				var chartEl = $(".doughnut > div");
				var $gtopScroll  = gTop.offset().top-400;

				if(scroll >= $gtopScroll){
					// 기존 차트가 있으면 제거
					// if (myChart) {
					// 	myChart.destroy();
					// }
					
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
		// if($('.cont > div').hasClass('cont06')) {
		// 	var cTop02 = $(".cont06");
		// 	// var $ctopScroll02  = cTop02.offset().top-102;
		// 	var gTop02 = $(".cont06 .result-box");
		// 	var $gtopScroll02  = gTop.offset().top-150;

		// 	if(scroll >= $gtopScroll02){
		// 		gTop02.addClass("on");
		// 	}else{
		// 		gTop02.removeClass("on");
		// 	}
		// }
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

function gyScroll(){
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con06 = $(".cont06")
		var con06top = con06.offset().top-150;
		var con07top = $('.cont07').offset().top-150;
		// var gTop02 = $(".cont06 .result-box");

		//화살표 애니메이션 실행
		if (scroll >= con06top && scroll <= con07top) {
			con06.addClass('on')
			$(".cont06 .result-box").addClass("on");
		} else {
			con06.removeClass('on')
			$(".cont06 .result-box").removeClass("on");
		}
	});
}

function contScroll(){
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let con10 = $(".cont10")
		var con10top = con10.offset().top-150;
		var con11top = $('.cont11').offset().top-150;

		//화살표 애니메이션 실행
		if (scroll >= con10top && scroll <= con11top) {
			con10.addClass('on')
		} else {
			con10.removeClass('on')
		}
	});
}


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

// cont12 콘텐츠 롤릴 슬라이드
function cSlide(){
	var cSwiper = new Swiper('.con-roll',{
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
		spaceBetween: 80,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}

//cont13 유튜브 영상 자동재생
function videoPlay(){

	$(window).scroll(function() {
		var cont13 = $('.cont13');
		var cont13Top = cont13.offset().top;
		var scrollTop = $(window).scrollTop();
		var windowHeight = $(window).height();

		// .cont08 요소가 화면에 진입했는지 확인
		if (scrollTop + windowHeight > cont13Top) {
			if (!cont13.hasClass('on')) {  // 'on' 클래스가 없는 경우에만 추가
				cont13.addClass('on');

				// 기존 iframe 삭제 및 새로운 iframe 생성 (항상 autoplay, mute 적용)
				cont13.find('.v-wrap').html(`
                    <iframe width="986" height="568" 
                        src="https://www.youtube.com/embed/99BcdphVpvk?autoplay=1&mute=1&controls=0&modestbranding=1&showinfo=0&rel=0" 
                        frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>
                    </iframe>
				`);
			}
		}
	});
}

// .cont14 바자관 슬라이드
function studyHallSlide(){
	
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	
	var slideCont = new Swiper('.studyHall-slide', {
		loop: true,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		spaceBetween: 20,
		autoplay:{
			delay: 8000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true
	});
}