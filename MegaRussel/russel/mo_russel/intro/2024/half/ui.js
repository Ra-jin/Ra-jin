$(function(){
	//고정메뉴, 스크롤 이벤트
	fixmenu();

	// cont01 도넛차트 실행
	if ($('.cont01 div').hasClass('h-box-graph')) {
		dnChart();
	}

	// cont02 상승리뷰 슬라이드
	reviewSlide();

	// cont02 합격자 리스트 롤링
	if ($('.cont02 div').hasClass('pass-rolling-l')) {
		passSlideLeft();
		passSlideRight();
	}

	// cont03 바자관 탭슬라이드
	studyHallSlide();

	// cont04 관리 탭슬라이드
	manageSlide();

	// cont04 이미지 롤링
	imgSlide()

	// cont04 학생후기 슬라이드
	stuSlide01()
	
	// cont05 선생님 롤링 슬라이드
	if ($('.cont05 div').hasClass('teacher-rolling')) {
		teachSlide()
	}
	if ($('.cont05 div').hasClass('teacher-sub-list')) {
		teacherSlide()
	}	

	// cont05 학생후기 슬라이드
	if ($('.cont05 div').hasClass('stu-r-slide')) {
		stuSlide02()
	}
	
	// cont06 학습 콘텐츠 슬라이드
	programSlide();

	// cont06 학생후기 슬라이드
	if ($('.cont06 div').hasClass('stu-r-slide')) {
		stuSlide03()
	}

	// tabMenu('.tab-wrap','.tab-cont');
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

//학원 데이터 산출 기준
// $(function(){
//     $('.info-stxt').on('click',function(){
//         $('.data-view').toggle();
//     });

// })


// 고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	//var $cont = $('.js-cont');
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

	});
}


// cont01 도넛차트 실행
function dnChart(){
	if($('.cont01 div').hasClass('chart-area')){
		
		//스크롤 내렸을 때 도넛차트 실행
		$(window).scroll(function(){
			var scroll = $(window).scrollTop();
			var gtop = $(".h-box-graph")
			var chartEl = $(".doughnut > div");
			var $gtopScroll  = gtop.offset().top - 350;
		
			if(scroll >= $gtopScroll){
				
				gtop.addClass("chart");
				if(gtop.hasClass("chart") && dnStart == true){
					chartDn();
					dnStart = false
				}
		
			}else{
				gtop.removeClass("chart");
		
				if (chartEl.hasClass('chart-area')) {
					//도넛차트 destroy
					$("#doughnut-chart").remove();
					$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
					dnStart = true
				}
			}
		});

		//도넛차트
		var dnStart = true; // 도넛차트 한번만 실행
		
		function chartDn() {
		
			var ctx = document.getElementById("doughnut-chart").getContext('2d');;
			gradient = ctx.createLinearGradient(10, 150, 0, 10);
		
			gradient.addColorStop(0, '#0501AC');
			gradient.addColorStop(1, '#3B36FF');
		
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
	}

}


// cont02 상승리뷰 슬라이드
function reviewSlide(){
	if ($(".review-slide .swiper-wrapper .swiper-slide").length == 1) {
		// slide 1개 일 경우
		var rSlide = new Swiper('.review-slide', {
			slidesPerView: 1,
			spaceBetween: 26,
			allowTouchMove: false,
		});
	} else {
		var rSlide = new Swiper('.review-slide', {
			slidesPerView: 1,
			loop: true,
			allowTouchMove: true,
			autoHeight: true,
			spaceBetween: 26,
			speed: 300,
			autoplay:{
				delay: 7000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination.type01",
				clickable: true
			},
		});
	}

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.review-slide .swiper-wrapper .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".review-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont02Top = $(".cont02").offset().top-150;
		let con03Top = $(".cont03").offset().top-150;
		
		if (scroll >= cont02Top && scroll <= con03Top) {
			rSlide.autoplay.start();
		} else {
			rSlide.autoplay.stop();

		}
	})
}

//cont02 합격자 리스트 롤링
function passSlideLeft(){

	var passSwiper01 = new Swiper('.pass-rolling-l',{
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
		observer: true,
		observeParents: true
	});
}
function passSlideRight(){

	var passSwiper02 = new Swiper('.pass-rolling-r',{
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
		observer: true,
		observeParents: true
	});
}

// cont03 바자관 탭슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	

	// 코어 일때
	var slideSetting = {
		slidesPerView : "3",
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	}
	if ($('.studyHall-navi').hasClass('core')) {
		var stuSlideNav = new Swiper('.studyHall-navi', slideSetting)
	}

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
				$('.chart-area01 .chart-img img').attr("src", function(idx, j){ return j.replace("bg03.png","bg02.png"); });
				if (this.realIndex == 1) {
					$('.chart-area01').append('<canvas id="doughnut-chart01"></canvas>');
					$('.chart-area01 .chart-img img').attr("src", function(idx, j){ return j.replace("bg02.png","bg03.png"); });
					chartDn01()
					
					// 도넛차트
					function chartDn01() {
						
						var ctx01 = document.getElementById("doughnut-chart01").getContext('2d');;
						gradient01 = ctx01.createLinearGradient(0, 0, 260, 0);
					
						gradient01.addColorStop(0, '#0308ec');
						gradient01.addColorStop(0.7, '#861065');
						gradient01.addColorStop(1, '#d91100');
					
						var myChart01 = new Chart(ctx01, {
							type: 'doughnut',
							data: {
								datasets: [
									{
										backgroundColor: ["transparent",gradient01],
										data: [63, 937],
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
							
							var ctx02 = document.getElementById("doughnut-chart02").getContext('2d');;
							gradient02 = ctx02.createLinearGradient(0, 0, 260, 0);
						
							gradient02.addColorStop(0, '#0308ec');
							gradient02.addColorStop(0.7, '#861065');
							gradient02.addColorStop(1, '#d91100');
						
							var myChart02 = new Chart(ctx02, {
								type: 'doughnut',
								data: {
									datasets: [
										{
											backgroundColor: ["transparent",gradient02],
											data: [63, 937],
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
	
	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let cont03Top = $(".cont03").offset().top-150;
		let cont04Top = $(".cont04").offset().top-150;
		
		if (scroll >= cont03Top && scroll <= cont04Top) {
			slideCont.autoplay.start();
		} else {
			slideCont.autoplay.stop();

		}
	})

	// 바자관 롤링 내 표준시간표 팝업
	$('.bt-tt').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-tt').addClass('on')
	})
	$('.layer-tt .bt-close-tt').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})

	
	// 바자관 롤링 내 바자관시설보기 팝업
	$('.bt-tt02').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-tt02').addClass('on')
		$('.mask-bg.type02').css('display','block')
	})
	$('.layer-tt02 .bt-close-tt').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-tt02').removeClass('on')
		$('.mask-bg.type02').css('display','none')
	})
}

// cont04 관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
		spaceBetween: 1
	});	
	var manageCont = new Swiper('.manage-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: manageSlideNav
		},
		pagination: {
			el: ".swiper-pagination.type02",
			clickable: true
		}
	});

	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.manage-slide .swiper-slide').length / 3
	let bulletWidth = 100 / slideLeng
	$(".manage-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con04Top = $(".cont04").offset().top-150;
		let con05Top = $(".cont05").offset().top-150;
		
		if (scroll >= con04Top && scroll <= con05Top) {
			manageCont.autoplay.start();
		} else {
			manageCont.autoplay.stop();

		}
	})
	

}

// cont04 이미지 롤링
function imgSlide(){

	var rollingSwiper = new Swiper('.img-rolling',{
		autoplay: {
			delay: 0,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		allowTouchMove: false,
		speed: 3000,
		slidesPerView: 'auto',
		spaceBetween: 10,
		observer: true,
		observeParents: true
	});
}

// cont04 학생후기 슬라이드
function stuSlide01() {
	
	var stuSwiper = new Swiper('.stu-r-slide.type01', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type03",
			clickable: true
		}
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con04Top = $(".cont04").offset().top-150;
		let con05Top = $(".cont05").offset().top-150;
		
		if (scroll >= con04Top && scroll <= con05Top) {
			stuSwiper.autoplay.start();
		} else {
			stuSwiper.autoplay.stop();

		}
	})
}
// cont05 선생님 롤링 슬라이드
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

// cont05 선생님 롤링 슬라이드02
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
// cont05 학생후기 슬라이드
function stuSlide02() {
	
	var stuSwiper02 = new Swiper('.stu-r-slide.type02', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type04",
			clickable: true
		}
	});

	// 스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con05Top = $(".cont05").offset().top-150;
		let con06Top = $(".cont06").offset().top-150;
		
		if (scroll >= con05Top && scroll <= con06Top) {
			stuSwiper02.autoplay.start();
		} else {
			stuSwiper02.autoplay.stop();

		}
	})
}
// cont06 학습 콘텐츠 슬라이드
function programSlide(){
	var pSlide = new Swiper('.program-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		spaceBetween: 26,
		speed: 2000,
		autoplay:{
			delay: 2000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination.type05",
			clickable: true
		},
	});
	// slide 갯수에 따른 pagination width값 조절
	let slideLeng = $('.program-slide .swiper-slide').length - 2
	let bulletWidth = 100 / slideLeng
	$(".program-slide.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet").css('width', bulletWidth + "%")
}

// cont06 학생후기 슬라이드
function stuSlide03() {
	
	if ($(".stu-r-slide.type03 .swiper-slide").length == 1) {
		// slide 1개 일 경우
		var stuSwiper03 = new Swiper('.stu-r-slide.type03', {
			centeredSlides: true,
			slidesPerView: "auto",
			allowTouchMove: false,
		});
	} else {
		var stuSwiper03 = new Swiper('.stu-r-slide.type03', {
			loop: true,
			centeredSlides: true,
			slidesPerView: "auto",
			autoHeight: true,
			speed : 500,
			allowTouchMove: true,
			autoplay:{
				delay: 5000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination.type05",
				clickable: true
			}
		});
	}
}

