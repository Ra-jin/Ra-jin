$(function(){
    topTab()        //최상단 탭
    tabMenu('.tab_menu.type01 .pre-btn', '.tab_menu.type01 .pre-con') 
    fixmenu1();
    fixmenu2();
    fixmenu3();
});

// 최상단 탭
function topTab(){        
        
    tabMenu('.tab', '.tab-con')

    var $bt_depth01 = $('.prewinter-wrap .tab a')
    var $cont_depth01 = $('.prewinter-wrap .tab-con')
    
    if($bt_depth01.eq(0).hasClass('on')){
        $cont_depth01.eq(0).addClass('on')
    }else{
        $cont_depth01.eq(1).addClass('on')
    }
}


// tab1 버튼 클릭 시 이미지 변경
function fixmenu1() {
    var $tab = $(".tab_menu.type01 .pre-btn a");

    $tab.first().find("img").attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
    
    $tab.on("click", function() {
        var i = $(this).index('.tab_menu.type01 .pre-btn a');
        var $img = $(".tab_menu.type01 .pre-btn a img");
        var $imgOn = $tab.eq(i).find("img");
        
        $img.attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
        $imgOn.attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
    
    });
}

/* swiper tab1 */
// swiper 탭 버튼 클릭 시 이미지 변경
function fixmenu2() {
    var $tab = $(".links-container .nav-link");

    $tab.first().find("img").attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
    
    $tab.on("click", function() {
        var i = $(this).index('.links-container .nav-link');
        var $img = $(".links-container .nav-link img");
        var $imgOn = $tab.eq(i).find("img");
        
        $img.attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
        $imgOn.attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
    
    });
}
// swiper
var pagesContainer = new Swiper('.pages-container-inner', {
	slidesPerView: 1,
	watchSlidesProgress: true,
    pagination: {
        el: ".swiper-pagination.type01",
        clickable: true,
    },
    slidesPerView: '1',
    spaceBetween: 20,
    // 슬라이드 체인지시 버튼 이미지 변경
    on: {
        beforeTransitionStart: function () {
            var indexEl = $('.pages-container-inner .swiper-slide-active').index()
            $('.nav-link').eq(indexEl).addClass('active').siblings().removeClass('active');
            $('.nav-link').children().attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
            $('.nav-link.active').children().attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
        }
    }
});

// swiper 탭 버튼 클릭시 슬라이드 변경
$('.nav-link').on('click', function() {
    $(this).addClass('active').siblings().removeClass('active');
    pagesContainer.slideTo($('.nav-link').index($(this)));
});


/* swiper tab2 */
// swiper 탭 버튼 클릭 시 이미지 변경
function fixmenu3() {
    var $tab = $(".links-container02 .nav-link02");

    $tab.first().find("img").attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
    
    $tab.on("click", function() {
        var i = $(this).index('.links-container02 .nav-link02');
        var $img = $(".links-container02 .nav-link02 img");
        var $imgOn = $tab.eq(i).find("img");
        
        $img.attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
        $imgOn.attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
    
    });
}
// swiper
var pagesContainer02 = new Swiper('.pages-container-inner02', {
	slidesPerView: 1,
	watchSlidesProgress: true,
    pagination: {
        el: ".swiper-pagination.type02",
        clickable: true,
    },
    slidesPerView: '1',
    spaceBetween: 20,
    // 슬라이드 체인지시 버튼 이미지 변경
    on: {
        beforeTransitionStart: function () {
            var indexEl2 = $('.pages-container-inner02 .swiper-slide-active').index()
            $('.nav-link02').eq(indexEl2).addClass('active').siblings().removeClass('active');
            $('.nav-link02').children().attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
            $('.nav-link02.active').children().attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
        }
    }
});

// swiper 탭 버튼 클릭시 슬라이드 변경
$('.nav-link02').on('click', function() {
    $(this).addClass('active').siblings().removeClass('active');
    pagesContainer02.slideTo($('.nav-link02').index($(this)));
});
