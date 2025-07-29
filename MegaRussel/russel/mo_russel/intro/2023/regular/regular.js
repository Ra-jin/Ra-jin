
$(function() {
    gotoClass();
    clickJs();
    dataNum();
    topTab();
	chartDn();
	systemTab();


	bajaSlide();
	bookSlide();
	rollSlide();

	// var hash = window.location.href.split('#').pop();;+
	// console.log(hash)
	// if(hash = "detail-info"){		
	// 	$('html, body').animate({scrollTop:$('.cont.cont09 .recruit-tit').offset().top - 100}, 100);
	// }

});


//스크롤 이벤트
$(window).scroll(function(){
    var scroll = $(window).scrollTop();

    //승반강반장학제도에 스크롤 시 실행
    var gTop01 = $(".schol-box.box01");
    var $gtopScroll01  = gTop01.offset().top - 400;
    if(scroll >= $gtopScroll01){
        gTop01.addClass("on");

    } else {
        gTop01.removeClass("on");
    }


    //최상위권 대학진학목표달성에 스크롤 시 실행
    var gTop02 = $(".first-class-box.box01");
    var $gtopScroll02  = gTop02.offset().top - 300;
    if(scroll >= $gtopScroll02){
        gTop02.addClass("on");

    } else {
        gTop02.removeClass("on");
    }




});

//cont1 모집안내 바로가기 클릭시 앵커처리
function gotoClass(){
	var $doc = $('html, body')
	var $bt_fix = $('.fixed-bar a');
	var $cont = $('.cont.cont09 .recruit-tit');

	$bt_fix.on('click',function(e){
		e.preventDefault();

		var $cont_top = $cont.offset().top;
		$doc.animate({scrollTop:$cont_top - 100}, 700);
	});
}

//cont1 만점자 배너 클릭시 레이어 팝업 처리
function clickJs() {
    $(".stu-review .click").on("click", function() {
        $(this).toggleClass("on");
    });
}

//cont1 데이터 산출 기준 버튼
function dataNum(){
    const dataName = document.querySelector('.data-box .info-stxt span');
    const dataView = document.querySelector('.data-box .layer-wrap');
    const closeBtn = dataView.querySelector('.js-close-mask img')

    dataName.addEventListener('click',e=>{
        dataView.style.display="block";
    });

    closeBtn.addEventListener('click',e=>{
        dataView.style.display="none"
    });
}






var start = true;

//cont2 재원생 결과 롤링
var coreUpSwiper = new Swiper(".mySwiper.coreUp", {
	pagination: {
		el: ".swiper-pagination.coreUp.page",
		dynamicBullets: true,
		clickable: true,
	},
	loop: true,
	loopAdditionalSlides : 1,
	autoplay:{
		delay:7000,
		disableOnInteraction: false,
	},
	observer: true,
	observeParents: true,
	on: {
		slideChange:function(){
			$("#doughnut-chart").remove();
			if(this.realIndex == 0){
				$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
				chartDn();
			}
		},
		// 슬라이드 체인지 전 이벤트
		beforeTransitionStart: function() {

			// console.log(this.realIndex)
			//도넛차트 복제슬라이드 활성화시
			if ($('.swiper-slide-duplicate.dough').hasClass('swiper-slide-active')) {
				$('.swiper-slide-duplicate.dough').find('#doughnut-chart').attr('id', 'doughnut-chart02') //도넛차트 id값 변경

				$("#doughnut-chart02").remove(); //canvas 디스트로이
				//슬라이드의 인덱스 0일때
				if(this.realIndex == 0){
					$("#doughnut-chart02").remove();//canvas 디스트로이
					$('.swiper-slide-duplicate.dough .chart-area').append('<canvas id="doughnut-chart02"></canvas>');//canvas 생성

					chartDn02(); //도넛차트 실행
				}
			} else {

				$("#doughnut-chart02").remove();//canvas 디스트로이
			}
		}
	}
});
function chartDn() {
	var ctx = document.getElementById("doughnut-chart").getContext('2d');
	gradient = ctx.createLinearGradient(100, 0, 0, 50);

	gradient.addColorStop(0, '#953dde');
	gradient.addColorStop(1, '#6500e3');

	var myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: [gradient, "transparent"],
					data: [913, 87],
					borderWidth: "4",
					cutout: "65%",
					borderColor: "transparent",
					borderRadius: "200",
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

function chartDn02() {
	var ctx02 = document.getElementById("doughnut-chart02").getContext('2d');
	gradient02 = ctx02.createLinearGradient(100, 0, 0, 50);

	gradient02.addColorStop(0, '#953dde');
	gradient02.addColorStop(1, '#6500e3');

	var myChart02 = new Chart(ctx02, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: [gradient02, "transparent"],
					data: [913, 87],
					borderWidth: "4",
					cutout: "65%",
					borderColor: "transparent",
					borderRadius: "200",
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



//cont2 선배 리뷰 롤링
var reviewSwiper = new Swiper(".mySwiper.review-rolling", {
	pagination: {
		el: ".swiper-pagination.review-rolling.page",
		dynamicBullets: true,
		clickable: true,
	},
	loop: true,
	loopAdditionalSlides : 1,
	autoplay:{
		delay:7000,
		disableOnInteraction: false,
	}
});

//cont2 최상위권대학 합격자 롤링
var  goalSwiper = new Swiper(".swiper.goal", {
	// spaceBetween: -160,
	spaceBetween: 10,
	swiperPerView: 1,
	loop : true,
	loopAdditionalSlides : 1,
	centeredSlides: false,
	autoplay: {
		delay: 0,
		disableOnInteraction: false,
	},
	speed: 2500,
	width:150,
});

function bajaSlide(){
	//cont3 바른공부 자습전용관 롤링
	var bajaSwiper = new Swiper(".mySwiper.baja-rolling", {
		spaceBetween: 0,
		pagination: {
			el: ".swiper-pagination.baja-rolling.page",
			dynamicBullets: true,
			clickable: true,
		},
		loop: true,
		centeredSlides: false,
		loopAdditionalSlides : 1,
		autoplay:{
			delay:7000,
			disableOnInteraction: false,
		},
		autoHeight : true,
	});

	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll = $(window).scrollTop();

		//cont03 바자관 탭슬라이드 스타트
		var gTop06 = $(".cont03");
		var $gtopScroll06  = gTop06.offset().top - 100;
		var gEnd = $(".cont04").offset().top;
		if(wScroll >= $gtopScroll06 && wScroll < gEnd){
			bajaSwiper.autoplay.start(0)

			$('.mySwiper.baja-rolling').hover(
				function(){
					bajaSwiper.autoplay.stop()
				},
				function(){
					bajaSwiper.autoplay.start(0)
				}
			)

		} else {
			bajaSwiper.autoplay.stop()
		}
	})

	//cont3 바자관 롤링 내 이미지 클릭 시 딤드처리
	$('.bt-tt').on('click',function(){
		bajaSwiper.autoplay.stop()
		$('.layer-tt').addClass('on')
	})
	$('.bt-close-tt').on('click',function(){
		bajaSwiper.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}



//cont4 선생님 롤링
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
		momentumBounce:false,
	},
	observer: true,
	observeParents: true,
});

//cont05 입시/학습/생활관리탭 메뉴 이미지 변경
function systemTab() {
	var $tab = $(".system-tab a");

	$tab.first().find("img").attr("src", function(idx, j){ return j.replace(".jpg","_on.jpg"); });

	$tab.on("click", function() {
		var i = $(this).index('.system-tab a');
		var $img = $(".system-tab a img");
		var $imgOn = $tab.eq(i).find("img");

		$img.attr("src",function(idx, j){ return j.replace("_on.jpg",".jpg"); });
		$imgOn.attr("src", function(idx, j){ return j.replace(".jpg","_on.jpg"); });

	});
}

//cont05 입시/학습/생활관리탭
function topTab(){
    tabMenu('.system-tab', '.system-cont')

    var $bt_depth01 = $('.system-tab-wrap .system-tab a')
    var $cont_depth01 = $('.system-tab-wrap .system-cont')

    if($bt_depth01.eq(0).hasClass('on')){
        $cont_depth01.eq(0).addClass('on')
    }else{
        $cont_depth01.eq(1).addClass('on')
    }
}


// $(function(){
//     $(".rolling-slide").each(function(index){
//         var $this = $(this);
//         var slide = $this.addClass("js-mySwiper-" + parseInt(index+1));

//         var swiper = new Swiper(slide, {
//             loop: true,
//             observer: true,
//             observeParents: true,
//             slidesPerView : 1,
//             slidesPerGroup :1,
//             speed : 500,
//             autoplay: {
//                 delay: 3000,
//                 disableOnInteraction: false,
//             },
// 			pagination: {
// 				el: ".swiper-pagination",
// 				dynamicBullets: true,
// 				clickable: true,
// 			},
// 			autoHeight : true,
//         });
//     });

// });




function rollSlide(){
    $(".rolling-slide").each(function(index){
        var $this = $(this);
        var slide = $this.addClass("js-mySwiper-" + parseInt(index+1));

        var slideCont = new Swiper(slide, {
            loop: true,
            observer: true,
            observeParents: true,
            slidesPerView : 1,
            slidesPerGroup :1,
            speed : 500,
            autoplay: {
                delay: 3000,
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
		$(window).scroll(function(){
			var wScroll = $(window).scrollTop();

			//cont05 슬라이드 컨텐츠 영역 안에서만 작동
			var gTop05 = $(".cont05");
			var $gtopScroll05  = gTop05.offset().top - 100;
			var gEnd = $(".cont06").offset().top;
			if(wScroll >= $gtopScroll05 && wScroll < gEnd){
				slideCont.autoplay.start(0)

				$('.slide').hover(
					function(){
						slideCont.autoplay.stop()
					},
					function(){
						slideCont.autoplay.start(0)
					}
				)

			} else {
				slideCont.autoplay.stop()
			}
		})
    });


}



//cont06 최상위권 대학 진학 목표 롤링
var reviewSwiper = new Swiper(".mySwiper.first-class", {
	pagination: {
		el: ".swiper-pagination.first-class.page",
		dynamicBullets: true,
		clickable: true,
	},
	loop: true,
	loopAdditionalSlides : 1,
	autoplay:{
		delay:7000,
		disableOnInteraction: false,
	}
});

//cont07 최상위권 대학 진학 목표 롤링

function bookSlide(){
	var reviewSwiper = new Swiper(".mySwiper.book", {
		pagination: {
			el: ".swiper-pagination.book.page",
			dynamicBullets: true,
			clickable: true,
		},
		loop: true,
		loopAdditionalSlides : 1,
		autoplay:{
			delay:10000,
			disableOnInteraction: false,
		},
		autoHeight: true,
	});

	//스크롤 이벤트
	$(window).scroll(function(){
		var wScroll = $(window).scrollTop();

		//cont07 북슬라이드 스타트
		var gTop07 = $(".cont07");
		var $gtopScroll07  = gTop07.offset().top - 100;
		var gEnd = $(".cont08").offset().top;;
		if(wScroll >= $gtopScroll07 && wScroll < gEnd){
			reviewSwiper.autoplay.start(0)

			$('.mySwiper.book').hover(
				function(){
					reviewSwiper.autoplay.stop()
				},
				function(){
					reviewSwiper.autoplay.start(0)
				}
			)

		} else {
			reviewSwiper.autoplay.stop()
		}
	})

}




//cont08 집체모의고사 롤링
var reviewSwiper = new Swiper(".mySwiper.pre", {
	pagination: {
		el: ".swiper-pagination.pre.page",
		dynamicBullets: true,
		clickable: true,
	},
	loop: true,
	loopAdditionalSlides : 1,
	autoplay:{
		delay:7000,
		disableOnInteraction: false,
	}
});
