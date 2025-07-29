$(function() {
	var $top = $('.final-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	dDay();
	urlAlert();
	tSlide();
	tabMenu('.final-bt-tab','.final-cont-box') 	
	chgBc()

	setInterval(function(){
		$('.quick').addClass('on')
	},2000)
	
	tabMenu('.tab-month','.cont-month') 
});


//½ºÅ©·Ñ ¾×¼Ç
$(window).scroll(function(){
	sclOn()
});

// D-Day
function dDay(){
    var dday = new Date("Nov 17,2023,00:00:00").getTime(); //µğµ¥ÀÌ
	setInterval(function(){
		var now = new Date(); //ÇöÀç ³¯Â¥ °¡Á®¿À±â
		var distance = dday - now;
		var d = Math.floor(distance / (1000 * 60 * 60 * 24));
		$('.dday').html('D-'+d)
	}, 1000);
}


// ¹öÆ°¿¡ ¸µÅ© ¾øÀ» °æ¿ì alert
function urlAlert(){
    var $bt_link = $('.final-wrap a');
    // var $bt_danka = $('.q-list a');
    var pattern = /[¤¡-¤¾|¤¿-¤Ó|°¡-ÆR]/;

	$bt_link.on('click',function(e){
        var a_txt = $(this).attr('href');

        if(pattern.test(a_txt)){
            e.preventDefault()
            alert(a_txt)
        }
    })  
}


// ½ºÅ©·Ñ ½Ã ÇØ´ç ÄÁÅÙÃ÷ on
function sclOn(){
	var $cont	= $(".cont-container");
	var winScl	= $(window).scrollTop();

	$cont.each(function(idx){
		var target      = $cont.eq(idx);
		var target_top  = Math.floor(target.offset().top) - 250;

		if(winScl >= target_top){
			$cont.eq(idx).addClass("on");
		}
	})
}


/* °­»çÁø */
function tSlide(){
	var tSwiper = new Swiper('.teacher-swiper',{
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		loop:true,
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 2500,
		grabCursor: true,
        initialSlide : randomIdx(),//½½¶óÀÌµå ½ÃÀÛ ·£´ı
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});
}

//½½¶óÀÌµå ·£´ı
function randomIdx()  {
    var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}

// ÅÇ¸Ş´º
function finalTab(){	
	var $fix_top = $('.js-final-tab').offset().top;
	var $bt_fix =$('.fix-menu > a')
	var $cont = $('.final-cont-wrap')
	// fixmenu Å¬¸¯ ½Ã ÀÌµ¿

	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;

		$('html, body').animate({scrollTop:$cont_top - 90}, 800);
	});


	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		//½ºÅ©·Ñ½Ã nav È°¼ºÈ­
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};
		
		$bt_fix.each(function(i){
			var $cont_top  = $cont.eq(i).offset().top - 91;
			// var $cont_top  = $cont.eq(i).offset().top
			if(scroll > $cont_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
	});
}

// ºÎÃµ °í3 ÄÁÅÙÃ÷ º¯°æ
function chgBc(){
	if(window.location.href.indexOf('/russel_bc/2023/final_go3/') > -1){
		$('.v-img02 span:nth-child(1) img').attr('src','https://russeldata.megastudy.net/campus/images/russel/russel_bc/2023/final_go3/v_txt02.png')
		$('.v-img02 span:nth-child(2) img').attr('src','https://russeldata.megastudy.net/campus/images/russel/russel_bc/2023/final_go3/v_txt03.png')
		$('.v-img02 span:nth-child(3) img').attr('src','https://russeldata.megastudy.net/campus/images/russel/russel_bc/2023/final_go3/v_txt04.png')
		$('.banner-bc a:nth-child(1) img').attr('src','https://russeldata.megastudy.net/campus/images/russel/russel_bc/2023/final_go3/banner_sms.png')
		$('.img-stit01 img').attr('src','https://russeldata.megastudy.net/campus/images/russel/russel_bc/2023/final_go3/tit01_02.png')
		$('.bc-go3-off').remove();
	}
}


