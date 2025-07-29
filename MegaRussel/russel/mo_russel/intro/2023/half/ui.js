
$(function() {
	gotoCampus()
	dankaAlert();
	resultSlide();
	dataView()
	uniSlide()
	systemSwiper01()
	systemSwiper02()
	tabMenu('.tab-wrap','.tab-cont')
	teacherSwiper()
	systemSwiper04()
	picSwiper()

	$('.btn-pc').on('click',function(){
		alert('¿ø¼­Á¢¼ö´Â PCÆäÀÌÁö¿¡¼­ ÀÌ¿ë °¡´ÉÇÕ´Ï´Ù.')
	})
});


//±×·¡ÇÁ ¾Ö´Ï¸ÞÀÌ¼Ç
// $(window).scroll(function(){
//     var winScl = $(window).scrollTop();
// 	var $contGr = $(".bar-graph")
	
// 	$contGr.each(function(idx){
// 		var target    	= $contGr.eq(idx);
// 		var target_top  = Math.floor(target.offset().top - 300);

// 		if(winScl >= target_top){
// 			$contGr.eq(idx).addClass("on")
// 		}else{
// 			$contGr.eq(idx).removeClass("on")
// 		}
// 	})
// });

    

// ¸ðÁý¾È³» ¹Ù·Î°¡±â ¹öÆ°
function gotoCampus(){
	$('.fixed-bar a').on('click',function(e){
		e.preventDefault();
		var $cont_top = $('#cont').offset().top;

		$('html, body').animate({scrollTop:$cont_top - 100}, 700);
	});
};
//ºÎÃµ Áö¿øÇýÅÃ ¹Ù·Î°¡±â ½ºÅ©·Ñ
function moveBenefit() {
	var benefitCon = $('#benefit').offset().top;
	
	$('html, body').animate({scrollTop:benefitCon - 100}, 700);
}

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

// ¼ºÀû»ó½Â ½½¶óÀÌµå
function resultSlide(){
	var resultSwiper = new Swiper('.result-slide', {
		loop:true,
		slidesPerView: 1.7,
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

// ¼ºÀû»ó½Â ½½¶óÀÌµå
function uniSlide(){
	var uniSwiper = new Swiper('.uni-list', {
		loop:true,
		slidesPerView: 2.3,
		autoHeight: true,
		spaceBetween: 10,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		}
	});
}

// ½Ã½ºÅÛ01 ½½¶óÀÌµå
function systemSwiper01(){
	var systemSwiper01 = new Swiper('.system-slide-01', {
		autoHeight: true,
		loop:true,
		slidesPerView: 1,
		spaceBetween: 10,
		pagination: {
			el: ".swiper-pagination",
		},
	});

	//cont3 ¹ÙÀÚ°ü ·Ñ¸µ ³» ÀÌ¹ÌÁö Å¬¸¯ ½Ã µõµåÃ³¸®
	$('.bt-tt').on('click',function(){
		systemSwiper01.autoplay.stop()
		$('.layer-tt').addClass('on')
	})
	$('.bt-close-tt').on('click',function(){
		systemSwiper01.autoplay.start()
		$('.layer-tt').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}

// µ¥ÀÌÅ¸ º¸±â
function dataView(){
	$('.data-txt').on('click',function(){
		$(this).next('.data-detail').toggleClass('on')
	})
}

// ½Ã½ºÅÛ02 ½½¶óÀÌµå
function systemSwiper02(){
	$('.system-slide-02').each(function(index){
		var $this = $(this)
		var slide = $(this).addClass('system-slide-02-' + parseInt(index+1))

		var systemSwiper02 = new Swiper(slide, {
			autoHeight: true,
			loop:true,
			slidesPerView: 1,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			pagination: {
				el: ".swiper-pagination",
			},
			observer: true,
			observeParents: true,
		});

		$(window).scroll(function(){		
			var winScl = $(window).scrollTop();
			var startSlide = $('.half-system-02').offset().top;
			var gEnd = $(".half-system-03").offset().top -300;
	
			if(winScl >= startSlide && winScl < gEnd){
				systemSwiper02.autoplay.start()
			} else {
				systemSwiper02.autoplay.stop()
			}
		});
	})
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

// ½Ã½ºÅÛ04 ½½¶óÀÌµå
function systemSwiper04(){
	var systemSwiper04 = new Swiper('.system-slide-04', {
		autoHeight: true,
		loop:true,
		slidesPerView: 1,
		spaceBetween: 10,
		pagination: {
			el: ".swiper-pagination",
		},
	});

}


// ½Ã½ºÅÛ04 ½½¶óÀÌµå
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


// system04 ½½¶óÀÌµå
// function systemSlide04(){
// 	var swiperSystem04 = new Swiper('.system04-slide', {
// 		autoHeight: true,
// 		loop:true,
// 		slidesPerView: 1,
// 		autoplay: {
// 			delay: 5000,
// 			disableOnInteraction: false,
// 		},
// 		pagination: {
// 			el: ".swiper-pagination",
// 		},
// 	});

// 	$(window).scroll(function(){		
// 		var winScl = $(window).scrollTop();
// 		var startSlide = $('.system04').offset().top;
// 		var gEnd = $(".bottom").offset().top -300;

// 		if(winScl >= startSlide && winScl < gEnd){
// 			swiperSystem04.autoplay.start()
// 		} else {
// 			swiperSystem04.autoplay.stop()
// 		}
// 	});
// }


// µ¿¿µ»ó ·¹ÀÌ¾îÆË¾÷
// function openVideo() {
// 	$('.senior-story ul li a').on('click', function() {
// 		$(this).parent().children('.v-layer-wrap').show()
	
	
// 		$('.v-layer-wrap .btn-x').on('click', function() {
// 			$('.v-layer-wrap').hide()
// 			let src = $(this).parent().children('iframe').attr('src')
// 			$(this).parent().children('iframe').attr('src',src)
// 		})
// 	})
	
// }



// µ¿¿µ»ó ·¹ÀÌ¾îÆË¾÷
function openVideo(url) {
	$('.v-layer-wrap').show()

	$('.play-video iframe').attr('src', 'https://tv.naver.com/embed/'+ url + '?autoPlay=true')

	$('.v-layer-wrap .btn-x').on('click', function() {
		$('.v-layer-wrap').hide()
		$('.play-video iframe').attr('src','')
	})
	
}


