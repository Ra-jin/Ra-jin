$(function(){
	fixmenu();
	system();
	manageSlide();
	teacherSwiper();
	bajaSlide();
	programSlide();
	contScroll();
});

//고정메뉴, 스크롤 이벤트
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 102;
	var $bt_fix = $('.js-fix-menu li');
	var $fix_h = $('.js-fix-menu').height() + 102;

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		// e.preventDefault();
		if (e.cancelable) e.preventDefault();

		var i = $(this).index();
		var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
		
		$doc.animate({scrollTop:$contWrap_top - $fix_h}, 800);
	});

	//1번만 실행 변수
	let gStart = true

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
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$target.addClass('active').siblings().removeClass('active');
			}
		});
		// fix-menu 탭 영역 진입 시 fix-button 클래스 on 추가
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);
			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		var gtop = $('.cont01 .graph-wrap').offset().top - 150;
		var graph = $('cont01 .graph');

		//화살표 애니메이션 실행
		if(scroll >= gtop && gStart == true) {
			$('.cont01 .graph').addClass('on')
			gStart = false
		}
		if($('.cont02').hasClass('active')) {
			$('.cont01 .graph').removeClass('on')
			gStart = true
		}

	});
}

//데이터 산출 기준
$(function(){
    $('.gr-data').on('click',function(){
        $(this).parent().next('.layer-wrap').addClass('on');
    });
    $('.js-close-mask a').on('click',function(){
        $('.layer-wrap').removeClass('on');
    });
})

// visual animation
const images = $(".bg-fade");
let currentImageIndex = 0;

function showNextImage() {
	$(images[currentImageIndex]).fadeOut(1000);
	currentImageIndex = (currentImageIndex + 1) % images.length;
	$(images[currentImageIndex]).fadeIn(1000);
}

$(images[currentImageIndex]).fadeIn(1000);
setInterval(showNextImage, 3000); 


//시스템
function system(){
	var idx = 1;
	setInterval(sysSlide, 2000);
	function sysSlide(){
		var sys_img = $('.sys-img li')
		var sys_Onimg = $('.sys-img li.on')

		sys_Onimg.removeClass('on')
		sys_img.eq(idx).addClass('on')
		if(sys_img.hasClass('on') == true){
			sys_img.children().attr("src",function(idx, j){ return j.replace("_on.png",".png"); });
			sys_Onimg.children().attr("src", function(idx, j){ return j.replace(".png","_on.png"); });
		}else{

		}

		idx++;
		
		if(idx >= sys_img.length){
			idx = 0
		return idx;
		}
	}

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){
		var i = 0;
		var scroll = $(window).scrollTop();
		let con06 = $(".cont06")
		let conTop06 = con06.offset().top-150;
		let conTop07 = $(".cont07").offset().top-150;

		if (scroll >= conTop06 && scroll <= conTop07) {
			con06.addClass('on')
			sysSlide.autoplay.start();
		} else {
			con06.removeClass('on')
			sysSlide.autoplay.stop();
		}

	})
}

//스크롤바 
$(function(){
	$(".js-rolling").each(function(index){
		var $this = $(this);
		var rolling = $this.addClass("rolling-" + Number(index+1));
		var page = $this.find('.swiper-pagination').addClass("page-" + Number(index+1));

		var rSlide = new Swiper(rolling, {
			loop: true,
			slidesPerView: 1,
			autoHeight: true,
			speed : 500,
			allowTouchMove: true,
			autoplay:{
				delay: 4000,
				disableOnInteraction: false,
			},
			observer: true,
			observeParents: true,	
			pagination: {
				el: page,
				clickable: true
			}
		});

		//  스크롤 떨림 현상 방지
		$(window).scroll(function(){
			var i = 0;
			var scroll = $(window).scrollTop();
			let con01 = $(".cont01")
			let conTop01 = con01.offset().top-150;
			let con02 = $(".cont02")
			let conTop02 = con02.offset().top-150;
			let conTop03 = $(".cont03").offset().top-150;
			let con06 = $(".cont06")
			let conTop06 = con06.offset().top-150;
			let con07 = $(".cont07")
			let conTop07 = con07.offset().top-150;
			let btTop = $(".bt-banner").offset().top-150;
			
			if (scroll >= conTop01 && scroll <= conTop02) {
				con01.addClass('on')
				rSlide.autoplay.start();
			} else if (scroll >= conTop02 && scroll <= conTop03) {
				con01.removeClass('on')
				con02.addClass('on')
				rSlide.autoplay.start();
			} else if (scroll >= conTop06 && scroll <= conTop07) {
				con02.removeClass('on')
				con06.addClass('on')
				rSlide.autoplay.start();
			} else if (scroll >= conTop07 && scroll <= btTop) {
				con06.removeClass('on')
				con07.addClass('on')
				rSlide.autoplay.start();
			} else {
				con07.removeClass('on')
				rSlide.autoplay.stop();
			}
		})
	});
})

//공통 슬라이드
$(function(){
	$('.s-slide').each(function(index){
		var $this = $(this);
		var slideNum = $this.addClass("s-" + Number(index+1));
		var slidenation = $this.find('.swiper-pagination').addClass("page-" + Number(index+1));
		
		var comSlide = new Swiper(slideNum, {
			loop: true,
			centeredSlides: true,
			slidesPerView: "auto",
			//autoHeight: true,
			speed : 500,
			allowTouchMove: true,
			autoplay:{
				delay: 4000,
				disableOnInteraction: false,
			},
			pagination: {
				el: slidenation,
			},
		});

		//  스크롤 떨림 현상 방지
		$(window).scroll(function(){
			var i = 0;
			var scroll = $(window).scrollTop();
			let con05 = $(".cont05")
			let conTop05 = con05.offset().top-150;
			let conTop06 = $(".cont06").offset().top-150;

			if (scroll >= conTop05 && scroll <= conTop06) {
				con05.addClass('on')
				comSlide.autoplay.start();
			} else {
				con05.removeClass('on')
				comSlide.autoplay.stop();
			}

		})
	});
})


//바자관 슬라이드
function bajaSlide(){
	var bajaSlideNav = new Swiper('.baja-slide-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	})

	var bajaCont = new Swiper('.baja-slide', {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: bajaSlideNav
		},
	})

	//스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con03 = $(".cont03")
		let con03Top = con03.offset().top-150;
		let con04Top = $(".cont04").offset().top-150;
		
		if (scroll >= con03Top && scroll <= con04Top) {
			con03.addClass('on')
			bajaCont.autoplay.start();
		} else {
			con03.removeClass('on')
			bajaCont.autoplay.stop();

		}
	})

	//section3 바자관 롤링 내 이미지 클릭 시 딤드처리
	$('.bt-tt').on('click',function(){
		bajaCont.autoplay.stop()
		$('.layer-tt').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.bt-close-tt').on('click',function(){
		bajaCont.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}
	

//관리 탭슬라이드
function manageSlide(){
	var manageSlideNav = new Swiper('.manage-slide-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	})

	var manageCont = new Swiper('.manage-slide', {
		centeredSlides: true,
		slidesPerView: "auto",
		spaceBetween: 20, 
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		thumbs: {
			swiper: manageSlideNav
		}
	})

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con05 = $(".cont05")
		let con05Top = con05.offset().top-150;
		let con06Top = $(".cont06").offset().top-150;
		
		if (scroll >= con05Top && scroll <= con06Top) {
			con05.addClass('on')
		} else {
			con05.removeClass('on')
		}
	})
}

// 선생님 롤링
function teacherSwiper() {
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
}

//cont06
function contScroll(){
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		let cont06 = $(".cont06")
		var contgtop = cont06.offset().top-150;
		var btTop = $('.bt-banner').offset().top-150;

		//화살표 애니메이션 실행
		if (scroll >= contgtop && scroll <= btTop) {
			cont06.addClass('on')
		} else {
			cont06.removeClass('on')
		}
	});
}

//전용 학습 콘텐츠 슬라이드
function programSlide(){
	var programSlideNav = new Swiper('.program-slide-navi', {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	})

	var programCont = new Swiper('.program-slide', {
		centeredSlides: true,
		autoHeight: true,
		speed : 500,
		autoplay:{
			delay: 4000,
			disableOnInteraction: false,
		},
		allowTouchMove: true,
		thumbs: {
			swiper: programSlideNav
		},
	})

	//  스크롤 떨림 현상 방지
	$(window).scroll(function(){

		var scroll = $(window).scrollTop();
		let con07 = $(".cont07")
		let con07Top = con07.offset().top-150;
		let btmTop = $(".bt-banner").offset().top-150;
		
		if (scroll >= con07Top && scroll <= btmTop) {
			con07.addClass('on')
			programCont.autoplay.start();
		} else {
			con07.removeClass('on')
			programCont.autoplay.stop();
		}
	})
}
