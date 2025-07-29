$(function(){
	var $top = $('#visual').offset().top;
	$('html, body').animate({scrollTop:$top},500);

   	urlAlert()	//´Ü°ú ¹öÆ°¿¡ ¸µÅ© ¾øÀ» °æ¿ì alert
	tabMenu('.final-tab', '.final-cont')	//ÃÖ»ó´Ü ÅÇ
	tabMenu('.final02-tab', '.final02-cont')	//ÆÄÀÌ³ÎÀü·«02 ÅÇ
	tabMenu('.full-tab-bt', '.full-tab-cont')	//¸ðÁý¿ä°­ ÇÐ³â ÅÇ
	tSlide()	//¼±»ý´Ô ½½¶óÀÌµå
	reviewSlide()	//ÇÕ°Ý»ý ÈÄ±â ·Ñ¸µ
	fianl04Slilde()
});

// ÅÇ¸Þ´º
function tabMenu(selector, cont){
    // ¼±ÅÃ ÇÑ ÅÇ¸Þ´º/ÅÇÄÁÅÙÃ÷¸¦ ÀúÀåÇÒ º¯¼ö
    var $tabMenu = null;
    var $tabItems = null;
    var $selTab =null;
    var $cont = null;

    // ¿ä¼Ò ÃÊ±âÈ­
    $tabMenu = $(selector);
    $tabItems = $tabMenu.find("a");
    $cont = $(cont);

	$tabItems.eq(0).addClass('on')
	$cont.eq(0).addClass('on')

    $tabItems.click(function(e){
        e.preventDefault()
        $tabItems.removeClass("on");
        $cont.css("display","none").removeClass("on");
        
        $selTab = $(this);
        var num = $selTab.index();

        $selTab.addClass("on");
        $cont.eq(num).css("display","block").addClass("on");
    });
} 

// ¹öÆ°¿¡ ¸µÅ© ¾øÀ» °æ¿ì alert
function urlAlert(){
    var $bt_online = $('.visual .btn-online');
    var $bt_danka = $('.q-list a');
    var pattern = /[¤¡-¤¾|¤¿-¤Ó|°¡-ÆR]/;

	$bt_online.add($bt_danka).on('click',function(e){
        var a_txt = $(this).attr('href');

        if(pattern.test(a_txt)){
            e.preventDefault()
            alert(a_txt)
        }
    })  
}

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
		slidesPerView: 'auto',
		grabCursor: true,
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
		observer : true,
		observeParents : true
	});

    $('.teacher-swiper').hover(
		function(){
			tSwiper.autoplay.stop();
    	},
		function(){
			tSwiper.autoplay.start();
		}
	);
}

// ÇÕ°Ý»ý ÈÄ±â ·Ñ¸µ
function reviewSlide(){
	var reviewSwiper = new Swiper(".review-txt", {
		loop:true,
        autoplay: {
          delay: 6000,
          disableOnInteraction: false,
        },
        autoplayTimeout:6000,
		pagination: {
			el: ".swiper-pagination",
		},
		observer : true,
		observeParents : true
	});
	
    $('.review-txt').hover(
		function(){
			reviewSwiper.autoplay.stop();
    	},
		function(){
			reviewSwiper.autoplay.start();
		}
	);
}

function fianl04Slilde(){
	var final04Swiper = new Swiper(".final04-slide", {
		loop:true,
        autoplay: {
          delay: 6000,
          disableOnInteraction: false,
        },
        autoplayTimeout:6000,
        centeredSlides: true,
		slidesPerView: 'auto',
        spaceBetween: 80,
		observer : true,
		observeParents : true
	});
	
    $('.final04-slide').hover(
		function(){
			final04Swiper.autoplay.stop();
    	},
		function(){
			final04Swiper.autoplay.start();
		}
	);
}