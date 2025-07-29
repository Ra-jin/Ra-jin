
$(".bt-foucs").on("click", function(e){
    e.preventDefault();

})
// 슬라이드
$(".regular-slide").each(function(index){
    var $this = $(this);
    var slide = $this.addClass("js-slide-" + index+1);

    var swiper = new Swiper(slide, {
        loop: true,
        observer: true,
        slidesPerView : 1,
        speed : 500,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
        }
    });
});

$(function() {
    tab1();
    tab2();
});
// 탭메뉴
function tab1(){
	var $btn = $(".tab-type1 > a");
	var $cont = $(".tab-cont1 > p");
	$btn.first().addClass("on");
	$cont.first().addClass("on");
	$btn.on("click",function(e){
		e.preventDefault();
		var idx = $(this).index();
		$btn.eq(idx).addClass("on").siblings().removeClass("on");
		$cont.eq(idx).addClass("on").siblings().removeClass("on");
	});
}

function tab2(){
	var $btn = $(".tab-type2 > a");
	var $cont = $(".tab-cont2 > .box");
	$btn.first().addClass("on");
	$cont.first().addClass("on");
	$btn.on("click",function(e){
		e.preventDefault();
		var idx = $(this).index();
		$btn.eq(idx).addClass("on").siblings().removeClass("on");
		$cont.eq(idx).addClass("on").siblings().removeClass("on");
	});
}
