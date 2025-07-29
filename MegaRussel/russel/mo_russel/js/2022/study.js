
$(window).load(function(){

    //고정메뉴 및 스크롤이벤트
    fixmenu();

    //cont01 후기 슬라이드
    reviewSlide();

    //cont03 만점자 후기 슬라이드
    topSlide();

    //cont07 시설환경 슬라이드
    facilitySlide();

    //cont07 승반강반 슬라이드
    goalSlide();

    //cont08 북슬라이드
    bookSlide();

    // cont09 대구학원 탭메뉴
	if ($('.cont09 div').hasClass('campus-tab-wrap')) {
        campusTab();
	}
});


// 고정메뉴 및 스크롤이벤트
function fixmenu(){
    // var $doc    = $('html, body')
    // var $fix_menu   = $(".js-fix-menu-wrap");
    // var $fix_top    = $(".js-fix-menu-wrap").offset().top;
    // var $bt_fix     = $(".js-fix-menu a");
    // var $cont     = $(".js-cont");
    // var totalHeight = $('.fix-menu').innerHeight() + $('.sub-tit').innerHeight() + $('.header-fix').innerHeight();

    // $bt_fix.on("click",function(e){
    //     e.preventDefault();
    //     var i        = $(this).index();

    //     var cont_on  = $cont.eq(i);
    //     var cont_top = cont_on.offset().top - totalHeight;

    //     $doc.animate({scrollTop:cont_top})
    // })

    var $doc = $('html, body');
    var $fix_menu = $(".js-fix-menu-wrap");
    var $fix_top    = $(".js-fix-menu-wrap").offset().top;
    var $bt_fix = $(".js-fix-menu a");
    var $cont = $(".js-cont");
    var totalHeight = calculateTotalHeight();

    // Recalculate totalHeight on window resize
    $(window).on('resize', function() {
        totalHeight = calculateTotalHeight();
    });

    $bt_fix.on("click", function(e) {
        e.preventDefault();
        var i = $(this).index();

        if (i < 0 || i >= $cont.length) {
            return; // Index out of range, exit function
        }

        var cont_on = $cont.eq(i);
        if (cont_on.length) {
            var cont_top;
            if (i === 0) {
                cont_top = cont_on.offset().top;
            } else {
                cont_top = cont_on.offset().top - totalHeight;
            }
            $doc.animate({scrollTop: cont_top});
        }
    });

    function calculateTotalHeight() {
        var fixMenuHeight = $('.fix-menu').innerHeight() || 0;
        var subTitHeight = $('.sub-tit').innerHeight() || 0;
        var headerFixHeight = $('.header-fix').innerHeight() || 0;
        return fixMenuHeight + subTitHeight + headerFixHeight;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	//1번만 실행 변수
	let gStart = true

    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        
        //상단고정메뉴 on 처리
        if(scroll >= $fix_top){
            $fix_menu.removeClass("fix-off").addClass("fix-on");
        }else{
            $fix_menu.removeClass("fix-on").addClass("fix-off");
        }

        //상단고정메뉴 on 처리
        $cont.each(function(i){
            var target      = $cont.eq(i);
            var target_top  = Math.floor(target.offset().top - totalHeight);

            if(scroll >= target_top){
                $bt_fix.eq(i).addClass("on").siblings().removeClass("on")
            }
        })

        //화살표 모션 실행
        var campusCom = $('.cont04').hasClass('russel_com');

		if(campusCom == true){
			var gtop = $('.cont04').offset().top - 120;

			//화살표 애니메이션 실행
			if(scroll >= gtop && gStart == true) {
				$('.russel_com .graph').addClass('on')
				gStart = false
			}
			if($('.cont05').hasClass('active')) {
				$('.russel_com .graph').removeClass('on')
				gStart = true
			}
		}

        //스크롤 시 표준시간표 위에 가이드 삭제
        var s1 = $('.system-scroll').offset().top -300;
        if($(window).scrollTop() +200 > s1){$('.system-scroll').addClass('on');}


    });
}

//모집일정 및 학원안내 Bar 클릭 시 스크롤 이동
$('.info-btn').on('click', function(){
    var offsetTop = $('.cont09').offset().top;
    var totalHeight = $('.fix-menu').innerHeight() + $('.sub-tit').innerHeight() + $('.header-fix').innerHeight() + 75;

    $('html, body').animate({
        scrollTop: offsetTop - totalHeight
    }, 1000);
});

//데이터 산출 기준
$(function(){
    $('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

//cont01 후기 슬라이드
function reviewSlide(){
 var reviewSlide = new Swiper('.review-slide', {
     loop: true,
     centeredSlides: true,
     spaceBetween: 15,
     slidesPerView: "auto",
     speed : 500,
     allowTouchMove: true,
     autoplay:true,
     autoplay:{
         delay: 4000,
         disableOnInteraction: false,
     },
     pagination: {
         el: '.page.type01',
     },
     on: {
        // 슬라이드 change시 메뉴이미지 변경 (beforeTransitionStart : 슬라이드 전환 시작 전에 이벤트가 시작됩니다.)
            // 슬라이드 change시 메뉴이미지 변경 (activeIndexChange : 활성화된 인덱스가 바뀔 때 이벤트가 발생합니다.)
          // 슬라이드 change시 메뉴이미지 변경 (slideChange : 슬라이드가 바뀔 때마다 이벤트가 발생합니다.)
          beforeTransitionStart : function () {

              $('.review-slide .swiper-slide-active').addClass('active').siblings().removeClass('active')
              $('.review-slide .swiper-slide').children().children('img').attr("src",function(idx, j){ return j.replace("_on.jpg",".jpg"); });
              $('.review-slide .swiper-slide.active').children().children('img').attr("src", function(idx, j){ return j.replace(".jpg","_on.jpg"); });
          }



      },
  });
}

//cont03 만점자 후기 슬라이드
function topSlide(){
    var topSlide = new Swiper('.top-slide', {
        loop: true,
        centeredSlides: false,
        // spaceBetween: 13,
        slidesPerView: "auto",
        speed : 500,
        allowTouchMove: true,
        autoplay:true,
        autoplay:{
            delay: 4000,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.page.type02',
        },
    });
}

//cont05 입결 지도 이미지 경로 변경
(function() {
    var $mapImg = $('.map-wrapper .tac img');
    $mapImg.attr('src', 'https://russeldata.megastudy.net/campus/images/russel/m_russel/intro/info/2022/study_hall/cont05_map02.jpg');

})();

//cont06 입시담임선생님관리 탭 on, off
$(function(){
    var $bt_q   = $('.bt-slide')
    $bt_q.on('click',function(){
        $(this).toggleClass('on')
        $(this).next('.cont-slide').toggleClass('on')
    })
    // $bt_q.eq(2).on('click',function(){
    //     if($(this).hasClass('on')){
    //         // mapSwiper.slideTo(0, 0, false)
    //     }
    // })

    // $('.btn-plan').on('click',function(){
    //     $(this).next().toggleClass('on')
    // })
    // $('html').click(function(e){
    //     if($(e.target).parents('.data-wrap').length < 1){
    //         $('.txt-data').removeClass('on')
    //     }
    // })
});

//cont07 시설환경 슬라이드
function facilitySlide(){
    $('.facility-slide').each(function(i){
        var $this = $(this);
        var swiper = $this.addClass('facility-slide' + 0 +  Number(i + 1));
        var swiper = new Swiper(swiper , {
            loop: true,
            spaceBetween: 10,
            slidesPerView : 1,
            slidesPerGroup :1,
            pagination: {
                el: '.page.type03',
            },
            // autoplay: {
            //     delay: 6000
            // },
            autoplay: {
                delay: 6000,
                disableOnInteraction: false,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            observer: true,
            observeParents: true
        });
    });
}

//cont07 승반강반 슬라이드
function goalSlide(){
    $('.goal-slide').each(function(i){
        var $this = $(this);
        var swiper = $this.addClass('goal-slide' + 0 +  Number(i + 1));
        var swiper = new Swiper(swiper , {
            loop: true,
            slidesPerView : 1,
            slidesPerGroup :1,
            autoHeight: true,
            pagination: {
                el: '.page.type04',
            },
            autoplay: {
                delay: 6000,
                disableOnInteraction: false,
            },
            observer: true,
            observeParents: true
        });
    });
}

//cont08 북슬라이드
function bookSlide(){
    var swiper = new Swiper('.book-slide',{
        autoplay: {
            delay: 0,
            disableOnInteraction: false,
        },
        loop:true,
        centeredSlides: true,
        centeredSlidesBounds: true,
        speed: 3000,
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
        slidesPerView: 'auto',
        spaceBetween: 50,
        freeMode: {
            enabled: true,
            momentumBounce:false
        },
    });

}

function randomIdx()  {
    var slideTotal = $('.js-book-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}

//cont07 수능 최적화 시스템 탭메뉴
var $tab_bt02 = $('.system-menu a')
var $tab_cont02 = $('.system-cont')

$tab_bt02.on('click',function(e){
    e.preventDefault()
    var idx = $(this).index()
    $(this).addClass('on').siblings().removeClass('on')
    $tab_cont02.eq(idx).addClass('on').siblings().removeClass('on')
})

// cont09 대구학원 탭메뉴
function campusTab(){
    tabMenu('.campus-tab', '.campus-cont')

    var $bt_depth01 = $('.campus-tab-wrap .campus-tab a')
    var $cont_depth01 = $('.campus-tab-wrap .campus-cont')

    if($bt_depth01.eq(0).hasClass('on')){
        $cont_depth01.eq(0).addClass('on')
    }else{
        $cont_depth01.eq(1).addClass('on')
    }
}