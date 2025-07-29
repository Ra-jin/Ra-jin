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

	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"220px"})
	
	fixmenu();
	rollSlide();
	studyHallSlide();
	
	if($('.cont05 div').hasClass('teacher-swiper')){
		tSlide();
	}
	if($('.cont05 div').hasClass('teacher-sub-list')){
		teacherSlide();
	}
	
	// 대구 슬라이드
	if($('.js-cont').hasClass('russel_dg')){
		studySlide();
	}

	stuSlide();
	programSlide();
});

//데이터 산출 기준
// let data = document.querySelector('.data-txt');
// let dataView = document.querySelector('.data-view');
// data.addEventListener('click', function(){
// 	dataView.classList.toggle('on');
// });


/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 80;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
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

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h -102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
		if($('.cont > div').hasClass('cont01')) {

			if($('.cont01 div').hasClass('d-start')){
				// cont01에 스크롤시 이벤트 실행
				var cTop = $(".cont01");
				var $ctopScroll  = cTop.offset().top-102;
				var gTop = $(".cont01 .d-start");
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
				}
			}
		}

	});
}

/* chart */
var start = true; // 도넛차트 한번만 실행

function chartDn() {
	var ctx = document.getElementById("doughnut-chart").getContext('2d');
	gradient = ctx.createLinearGradient(10, 150, 0, 10);

	gradient.addColorStop(0, '#0501AC ');
	gradient.addColorStop(1, '#3B36FF ');

	var myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: ["#ccc", "#fff" , gradient, "#fff"],
					data: [50, 3, 944, 3],
					borderWidth: "2",
					cutout: "58%",
					borderColor: "transparent",
					//borderRadius: "200",
				}
			]
		},
		options: {
			plugins: {
				tooltip: {
					enabled: false,
				},
				hover: {
					mode: null
				}
			},
		},

	})
}

// 학생슬라이드
function rollSlide(){
	$(".roll-slide").each(function(i){
		var $this = $(this);
		var slide = $this.addClass('roll-slide-' + parseInt(i+1))
	
		var swiper = new Swiper(slide, {
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
			freeMode: {
				enabled: true,
				momentumBounce:false
			},
		});
    });
}

// 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	var slideCont = new Swiper('.studyHall-slide', {
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
		on: {
			slideChange:function () {
				$("#doughnut-chart01").remove();
				$('.chart-area01 .chart-img img').attr("src", function(idx, j){ return j.replace("bg02.png","bg01.png"); });
				if (this.realIndex == 1) {
					$('.chart-area01').append('<canvas id="doughnut-chart01"></canvas>');
					$('.chart-area01 .chart-img img').attr("src", function(idx, j){ return j.replace("bg01.png","bg02.png"); });
					chartDn01()
					// 도넛차트
					function chartDn01() {
					
						var ctx01 = document.getElementById("doughnut-chart01").getContext('2d');
						gradient01 = ctx01.createLinearGradient(0, 0, 370, 0);
						// gradient01 = ctx01.createLinearGradient(10, 150, 0, 10);
					
						gradient01.addColorStop(0.2, '#0308ec');
						gradient01.addColorStop(0.8, '#80106B');
						gradient01.addColorStop(1, '#d91100');
					
						var myChart01 = new Chart(ctx01, {
							type: 'doughnut',
							data: {
								datasets: [
									{
										backgroundColor: ["transparent",gradient01],
										data: [43, 944],
										borderWidth: "2",
										cutout: "66.5%",
										borderColor: "transparent",
										borderRadius: "200",
									}
								]
							},
							options: {
								animation: {
									duration: 2000
								},
								plugins: {
									tooltip: {
										enabled: false,
									},
									hover: {
										mode: null
									}
								},
							},
						})
					}
				}
			},
			// 슬라이드 체인지 전 이벤트
			beforeTransitionStart: function() {
				// console.log(this.realIndex)
				//도넛차트 복제슬라이드 활성화시
				if ($('.swiper-slide-duplicate.dough').hasClass('swiper-slide-active')) {
					$('.swiper-slide-duplicate.dough').find('#doughnut-chart01').attr('id', 'doughnut-chart02') //도넛차트 id값 변경
	
					$("#doughnut-chart02").remove(); //canvas 디스트로이
					//슬라이드의 인덱스 1일때
					if(this.realIndex == 1){
						$("#doughnut-chart02").remove();//canvas 디스트로이각 학원 AM단과 URL연결부분 링크랑 강사 삭제부분은 알려주시
						$('.swiper-slide-duplicate.dough .chart-area01').append('<canvas id="doughnut-chart02"></canvas>');//canvas 생성
	
						chartDn02(); //도넛차트 실행
						// 도넛차트
						function chartDn02() {
							
							var ctx02 = document.getElementById("doughnut-chart02").getContext('2d');
							gradient02 = ctx02.createLinearGradient(0, 0, 370, 0);
						
							gradient02.addColorStop(0.2, '#0308ec');
							gradient02.addColorStop(0.8, '#80106B');
							gradient02.addColorStop(1, '#d91100');
						
							var myChart02 = new Chart(ctx02, {
								type: 'doughnut',
								data: {
									datasets: [
										{
											backgroundColor: ["transparent",gradient02],
											data: [43, 944],
											borderWidth: "2",
											cutout: "66.5%",
											borderColor: "transparent",
											borderRadius: "200",
										}
									]
								},
								options: {
									animation: {
										duration: 2000
									},
									plugins: {
										tooltip: {
											enabled: false,
										},
										hover: {
											mode: null
										}
									},
								},
							})
						}
					}
				} else {
					$("#doughnut-chart02").remove();//canvas 디스트로이
				}
			}
		}
	});

	// 바자관 롤링 내 바자관시설보기 팝업
	$('.bt-tt01').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-pop01').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop01 .bt-close').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-pop01').removeClass('on')
		$('.mask-bg').css('display','none')
	})

	// 바자관 롤링 내 바자관시설보기 팝업
	$('.bt-tt02').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-pop02').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop02 .bt-close').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-pop02').removeClass('on')
		$('.mask-bg').css('display','none')
	})
	
	// cont03에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con03 = $(".cont03")
		let con03Top = con03.offset().top-150;
		let con04Top = $(".cont04").offset().top-150;
		
		if (scroll >= con03Top && scroll <= con04Top) {
			con03.addClass('on')
			slideCont.autoplay.start();
		} else {
			con03.removeClass('on')
			slideCont.autoplay.stop();

		}
	})
}

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
			spaceBetween: 40,
			freeMode: {
				enabled: true,
				momentumBounce:false
			},
		});
	});

	// cont04에 스크롤시 실행
	// $(window).scroll(function(){

	// 	var scroll = $(window).scrollTop();
	// 	let con04 = $(".cont04")
	// 	let con04Top = con04.offset().top-150;
	// 	let con05Top = $(".cont05").offset().top-150;
		
	// 	if (scroll >= con04Top && scroll <= con05Top) {
	// 		con04.addClass('on')
	// 		stuSlide.autoplay.start();
	// 	} else {
	// 		con04.removeClass('on')
	// 		stuSlide.autoplay.stop();

	// 	}
	// })
}


//강사진
function tSlide(){
	var slideIndex01 = $(".teacher-swiper .swiper-slide").index()
	
	var tSwiper = new Swiper('.teacher-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 2500,
		grabCursor: true,
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.teacher-swiper').hover(
		function(){
			tSwiper.autoplay.stop();
    },
		function(){
			tSwiper.autoplay.start();
		}
	);
}

//슬라이드 랜덤
function randomIdx()  {
	var slideTotal01 = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide01 = Math.floor(Math.random() * slideTotal01);
	return parseInt(r_slide01);
}

function teacherSlide(){
	var slideIndex02 = $(".teacher-sub-list .swiper-slide").index()
	
	var tSwiper = new Swiper('.teacher-sub-list',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 2500,
		grabCursor: true,
        initialSlide : randomIdx02(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.teacher-sub-list').hover(
		function(){
			tSwiper.autoplay.stop();
    },
		function(){
			tSwiper.autoplay.start();
		}
	);
}

//슬라이드 랜덤
function randomIdx02()  {
	var slideTotal02 = $('.teacher-sub-list .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide02 = Math.floor(Math.random() * slideTotal02);
	return parseInt(r_slide02);
}

//전용 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 3,
		slidesPerGroup : 3,
		spaceBetween: 40,
		loop: true,
		loopAdditionalSlides : 3,
		allowTouchMove: true,
		speed: 3000,
		autoplay:{
			delay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type01",
			clickable: true
		},
	});
	// cont06에 스크롤시 실행
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con06 = $(".cont06")
		let con06Top = con06.offset().top-150;
		let bottomTop = $(".bottom-bar").offset().top-150;
		
		if (scroll >= con06Top && scroll <= bottomTop) {
			con06.addClass('on')
			pSlide.autoplay.start();
		} else {
			con06.removeClass('on')
			pSlide.autoplay.stop();

		}
	})
}

// 대구 실전콘텐츠 탭슬라이드
function studySlide(){
	var stuSlideNav = new Swiper('.study-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	var slideCont = new Swiper('.study-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 2,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		}
	});
}
