
$(function() {
	fixmenu();
	dDay();

	gotoCampus();
	dankaAlert();



	picSwiper();
	// finalSwiper();
	strategySlide();
	bajaSlide();
	mngSlide();

	teacherSwiper();
	

	tabMenu('.tab-wrap','.tab-cont')

	$('.btn-pc').on('click',function(){
		alert('¿ø¼­Á¢¼ö´Â PCÆäÀÌÁö¿¡¼­ ÀÌ¿ë °¡´ÉÇÕ´Ï´Ù.')
	})
});

/* °íÁ¤¸Þ´º, ½ºÅ©·Ñ ÀÌº¥Æ® */
function fixmenu(){
	var $doc = $('html, body')
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	var $fix_top = $('.js-fix-menu').offset().top - 100;
	var $bt_fix = $('.js-fix-menu li');
	var $fix_h = $('.js-fix-menu').height() + 100;

	// fixmenu Å¬¸¯ ½Ã ÀÌµ¿
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
		
		$doc.animate({scrollTop:$contWrap_top - $fix_h}, 800);
	});

	//½ºÅ©·Ñ ÀÌº¥Æ®
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//½ºÅ©·Ñ½Ã fixmenu È°¼ºÈ­
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		// °¢ contÁøÀÔ ½Ã Å¬·¡½º active Ãß°¡
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$target.addClass('active').siblings().removeClass('active');
			}
		});
		// fix-menu ÅÇ ¿µ¿ª ÁøÀÔ ½Ã fix-button Å¬·¡½º on Ãß°¡
		$contWrap.each(function(i){
			var $target02 = $contWrap.eq(i);
			var $target_top02  = Math.floor($target02.offset().top - $fix_h);
			if(scroll >= $target_top02){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

	});
}


// D-Day
function dDay(){
    var dday = new Date("Nov 17,2023,00:00:00").getTime(); //µðµ¥ÀÌ
	setInterval(function(){
		var now = new Date(); //ÇöÀç ³¯Â¥ °¡Á®¿À±â
		var distance = dday - now;
		var d = Math.floor(distance / (1000 * 60 * 60 * 24));
		$('.dday').html('D-'+d)
	}, 1000);
}

// ¸ðÁý¾È³» ¹Ù·Î°¡±â ¹öÆ°
function gotoCampus(){
	$('.fixed-bar a').on('click',function(e){
		e.preventDefault();
		var $cont_top = $('#recruit-cont').offset().top;

		$('html, body').animate({scrollTop:$cont_top - 100}, 700);
	});
};

// ¹öÆ°¿¡ ¸µÅ© ¾øÀ» °æ¿ì alert
function dankaAlert(){
    var $bt_danka = $('a').not('.campus-tab-wrap a');
    var pattern = /[¤¡-¤¾|¤¿-¤Ó|°¡-ÆR]/;

    $bt_danka.on('click',function(e){
        var a_txt = $(this).attr('href');

        if(pattern.test(a_txt)){
            e.preventDefault()
            alert(a_txt)
        }
    })
}

//ÁýÃ¼¸ðÀÇ°í»ç ½½¶óÀÌµå
function picSwiper(){
	var picSwiper = new Swiper('.pic-slide', {
		autoHeight: true,
		loop:true,
		slidesPerView: 1.3,
		spaceBetween: 20,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
	});
}


// //½½¶óÀÌµå
// function finalSwiper(){
// 	$('.final-slide').each(function(index){
// 		var $this = $(this)
// 		var slide = $(this).addClass('final-slide-' + parseInt(index+1))

// 		var finalSwiper = new Swiper(slide, {
// 			autoHeight: true,
// 			loop:true,
// 			slidesPerView: 1,
// 			spaceBetween: 15,
// 			autoplay: {
// 				delay: 5000,
// 				disableOnInteraction: false,
// 			},
// 			pagination: {
// 				el: ".swiper-pagination",
// 			},
// 			observer: true,
// 			observeParents: true,
// 		});

// 		// $(window).scroll(function(){
// 		// 	var winScl = $(window).scrollTop();
// 		// 	var startSlide = $('.final-slide-start').offset().top;
// 		// 	var EndSlide = $(".final-slide-end").offset().top -300;

// 		// 	if(winScl >= startSlide && winScl < EndSlide){
// 		// 		finalSwiper.autoplay.start()
// 		// 	} else {
// 		// 		finalSwiper.autoplay.stop()
// 		// 	}
// 		// });
// 	})
// }


//Àü·« ½½¶óÀÌµå
function strategySlide(){
	var resultSwiper = new Swiper('.strategy-slide', {
		autoHeight: true,
		loop:true,
		slidesPerView: 1,
		spaceBetween: 15,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},
	});

	$(window).scroll(function(){
		var winScl = $(window).scrollTop();
		var startSlide = $('.strategy-slide-start').offset().top;
		var EndSlide = $(".strategy-slide-end").offset().top -300;

		if(winScl >= startSlide && winScl < EndSlide){
			resultSwiper.autoplay.start()
		} else {
			resultSwiper.autoplay.stop()
		}
	});

	
}

//¹ÙÀÚ°ü ½½¶óÀÌµå
function bajaSlide(){
	var resultSwiper = new Swiper('.baja-slide', {
		loop:true,
		slidesPerView: 1,
		spaceBetween: 15,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},
	});
}


//°ü¸® ½½¶óÀÌµå
function mngSlide(){
	var resultSwiper = new Swiper('.mng-slide', {
		autoHeight: true,
		loop:true,
		slidesPerView: 1,
		spaceBetween: 15,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
		},
	});

	$(window).scroll(function(){
		var winScl = $(window).scrollTop();
		var startSlide = $('.final-slide-start').offset().top;
		var EndSlide = $(".final-slide-end").offset().top -300;

		if(winScl >= startSlide && winScl < EndSlide){
			resultSwiper.autoplay.start()
		} else {
			resultSwiper.autoplay.stop()
		}
	});
}










//¼±»ý´Ô ·Ñ¸µ
function teacherSwiper(){
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
