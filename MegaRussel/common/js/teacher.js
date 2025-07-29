
$(function(){
    // 공통 탭메뉴
    var $tab_bt  = $(".js-tab-bt li");

    $tab_bt.on("click",function(){
        var i = $(this).index();
        //alert(i);
        $(this).addClass("on").siblings().removeClass("on");
		$(this).parents().children(".js-tab-cont").eq(i).addClass("on").siblings().removeClass("on")
    })

    // 퀵메뉴&탭메뉴
    // var top = $(".teacher-wrap").offset().top - 73;
    var $quick_bt = $(".bt-set li");
    var $tab_cont  = $(".tab-cont");

    $quick_bt.on("click",function(){
        var idx = $(this).index();
        $("body, html").animate({scrollTop : 785},300);

        $tab_bt.eq(idx).addClass("on").siblings().removeClass("on");
        $quick_bt.eq(idx).addClass("on").siblings().removeClass("on");
        $tab_cont.eq(idx).addClass("on").siblings().removeClass("on");
    })

    fixTab();
    moveMenu();
    // cast()
})

//퀵배너관련 js 
function quickSet() {
    var $allBtn = $(".quick-menu .btn-all");
    var $btnClose = $(".quick-menu .btn-close");
    //클릭시
    $allBtn.click(function() {
        $(".q-menu").toggleClass("on");
    });
    //닫기버튼 클릭시
    $btnClose.click(function() {
        $(".q-menu").removeClass("on");
    });
}

//스크롤이동 제어 
function moveMenu() {
    var $menu = $(".curri-menu li")
    //var $cont = $(".teacher-wrap .t-box")
    var $doc    = $('html, body')

    $menu.on("click",function(e){
        e.preventDefault();
        //수업 커리큘럼 (수업 커리큘럼contents_01)
        var idx = $menu.index(this);
        var mn_class = $(this).attr('class');
        
        if (idx == 0) {
            if($("#contents_01").length > 0) {                
                offsetTop = $("#contents_01").offset().top - 70;
            } else {
                alert('곧 공개됩니다.');
                return;
            }
        }
        //학습 관리 프로그램 (학습관리프로그램contents_02, 스페셜관리 프로그램contents_03)    => 2차 퀵메뉴 오픈후 스페셜은 제거해야함.
        if (idx == 1) {
            if($("#contents_02").length > 0) {                
                offsetTop = $("#contents_02").offset().top;
            } else {
                alert('곧 공개됩니다.');
                return;
            }
        }
        if (idx == 2) {
            if($("#contents_03").length > 0) {                
                offsetTop = $("#contents_03").offset().top;
            } else {
                alert('곧 공개됩니다.');
                return;
            }
        }

        // 개설강좌
        if (mn_class == 'bt-lec') {
            if($("#lec_list").length > 0) {                
                offsetTop = $("#lec_list").offset().top;
            } else {
                alert('곧 공개됩니다.');
                return;
            }
        }

        // 영상 캐스트
        if (mn_class == 'bt-cast') {
            if($("#cont_cast").length > 0) {                
                offsetTop = $("#cont_cast").offset().top;
            } else {
                alert('곧 공개됩니다.');
                return;
            }
        }            
            
        $doc.stop().animate({
            scrollTop : offsetTop - 110
        }, 500);
    });

}

//비주얼 on 일때 animation css3 실행
function visual() {
    $(".teacher-wrapper .visual-wrap .visual").addClass("on");
}

function fixTab(){
    // var tab_top = $('.tab-fix').offset().top;
    var right_top = $('.wrap_right_sky').offset().top;

    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        if(scroll > 785){
            $('.tab-bt').addClass('fix-tab')
        }else{
            $('.tab-bt').removeClass('fix-tab')
        }

        // 우측 플로팅 배너 고정
        if(scroll >= right_top) {
            $('.wrap_right_sky').addClass('fix')
        }else{
            $('.wrap_right_sky').removeClass('fix')
        }
    })
    
}

// function cast(){
//     var cast = new Swiper('.slide-cont01', {
// 		loop: true,
// 		slidesPerView: 2,
// 		speed : 500,
//         spaceBetween: 27,
// 		allowTouchMove: true,
// 		autoplay:true,
// 		autoplay:{
// 			delay: 5000,
// 			disableOnInteraction: false,
// 		},
//         navigation: {
//             nextEl: '.swiper-button-next',
//             prevEl: '.swiper-button-prev',
//         },
// 	 });
//    }



