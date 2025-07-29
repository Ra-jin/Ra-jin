$(function(){
    // var $top = $(".first-wrap").offset().top -100;
    // $("html, body").animate({scrollTop:$top},700);

    countBox();
	gotoClass();
	topTab();

	rollSlide();
})


//모잡요강 바로가기 클릭시 앵커처리
function gotoClass(){
	var $doc = $('html, body')
	var $bt_fix = $('.fixed-bar a');
	var $cont = $('.section.sec4 .recruit-tit');


	$bt_fix.on('click',function(e){
		e.preventDefault();

		var $cont_top = $cont.offset().top;
		$doc.animate({scrollTop:$cont_top - 100}, 700);

	});

}


//section1 데이터 산출 기준 버튼
const dataName = document.querySelector('.section.sec1 .info-stxt span');
const dataView = document.querySelector('.section.sec1 .layer-wrap');
const closeBtn = dataView.querySelector('.js-close-mask img')

dataName.addEventListener('click',e=>{
	dataView.style.display="block";
});

closeBtn.addEventListener('click',e=>{
	dataView.style.display="none"
});


//스크롤 내렸을 때 section1 도넛차트 실행
var dnStart = true;

$(window).scroll(function(){
	var scroll = $(window).scrollTop();
	var data2 = $('.data-box.data2');
	var chartEl = $('.graph-wrap.graph1 > div');
	var $data2_top = data2.offset().top - 200;

	if(scroll >= $data2_top){

		data2.addClass("chart");

		if(data2.hasClass("chart") && dnStart == true){
			chartDn();
			dnStart = false
		}

	}else{
		data2.removeClass("chart");

		if (chartEl.hasClass('chart-area')) {
			//도넛차트 destroy
			$("#doughnut-chart").remove();
			$('.chart-area').append('<canvas id="doughnut-chart"></canvas>');
			dnStart = true
		}



		// dnStart = true
	}


});


//section1 도넛차트
function chartDn() {

	var ctx = document.getElementById("doughnut-chart");

	const myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			datasets: [
				{
					backgroundColor: ["#c1c1c1", "#22ed77"],
					data: [40, 960],
					borderWidth: "0",
					cutout: "58%",
					borderColor: "#414141"
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


//section1 세로 그래프 애니메이션 실행
function countBox(){
    $(window).on('scroll', function(){
        scl();
    })
}

function scl(){
    var $cont = $('.js-cont')
    var winScl	= $(window).scrollTop()

    $cont.each(function(i){
        var target      = $cont.eq(i);
        var target_top  = target.offset().top

        if(winScl >= target_top - 300 ){
            $(this).addClass('on')
        }
    })
}


//section2 선배 리뷰 롤링
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

//section2 최상위권대학 합격자 롤링
var  goalSwiper = new Swiper(".mySwiper.goal", {
	spaceBetween: -190,
	swiperPerView: 1,
	loop : true,
	loopAdditionalSlides : 1,
	centeredSlides: false,
	autoplay: {
		delay: 0,
		disableOnInteraction: false,
	},
	speed: 3000,
});

//section3 바른공부 자습전용관 롤링
var bajaSwiper = new Swiper(".swiper.baja-rolling", {
	pagination: {
		el: ".swiper-pagination.baja-rolling.page",
		dynamicBullets: true,
		clickable: true,
	},
	spaceBetween: 20,
	loop: true,
	loopAdditionalSlides : 1,
	autoplay:{
		delay:7000,
		disableOnInteraction: false,
	},
});










//section3 강사진 롤링
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


//section3 학습/입시/생활관리탭
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

    });


}


//section3 프리미엄콘텐츠 롤링
var premiumSwiper = new Swiper(".mySwiper.premium-rolling", {
loop: true,
loopAdditionalSlides : 1,
autoplay:{
	delay:4000,
	disableOnInteraction: false,
},
slidesPerView : '1.5',
spaceBetween: 30,
});


//section3 바자관 롤링 내 이미지 클릭 시 딤드처리
$('.bt-tt').on('click',function(){
	bajaSwiper.autoplay.stop()
	$('.layer-tt').addClass('on')
})
$('.bt-close-tt').on('click',function(){
	bajaSwiper.autoplay.start()
	$('.layer-tt').removeClass('on')
	$('.mask-bg').css('display','none')
})





