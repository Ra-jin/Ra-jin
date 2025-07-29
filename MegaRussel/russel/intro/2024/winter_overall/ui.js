$(function() {

	//gnb틀고정용
	$(window).load(function(){
		//페이지 로드 시 스크롤 visual로 이동
		$('html, body').animate({
			scrollTop : $('.visual-wrap').offset().top + 1			
		});
	});	

	//페이지 로드 후 1초 동안 스크롤 중지 후 1초 지나면 스크롤 가능하도록
	function delay(){
		setTimeout(enableScroll ,1000);
	}

	//스크롤 시 스크롤 안 되게 하는 이벤트 제거
	function enableScroll(){
		$(window).off("scroll", disableScroll);
	}

	//스크롤 안 되게 하는 이벤트
	function disableScroll(){
		//페이지 상단 위치값 찾기
		var target = document.querySelector('.visual-wrap');
		var endY = target.getBoundingClientRect().top + window.pageYOffset;

		////스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);

	//탭1의 padding-top설정
	$(".js-cont").eq(0).children().eq(0).css({"padding-top":"210px"})

	fixmenu();


	// cont06 선생님 슬라이드
	if($('.cont06 div').hasClass('teacher-swiper')){
		tSlide();
	}
	if($('.cont06 div').hasClass('teacher-sub-list')){
		teacherSlide();
	}

	// cont08 바자관 슬라이드
	studyHallSlide()

	// cont09 이미지 롤링
	imgSlide()

	// cont10 탭메뉴
	tabMenu('.tab-btn', '.tab-cont')
	
	// cont10 포트폴리오 슬라이드
	pfSlide()

	// cont11 탭메뉴
	tabMenu('.w-tab-btn', '.w-tab-con')
	
	// cont11 윈터스쿨 슬라이드
	winterSlide()

})

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 80;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top - 102;

		// 헤더가 pos-sticky 없을때 첫번째 탭 타겟위치
		if (i == 0) {
			if($('.headerWrap').hasClass('pos-sticky') === false){
				$('html, body').animate({scrollTop:$cont_top + 20}, 800);
			}
			else{
				// 첫번째 탭 클릭시 컨텐츠 위에서 아래로 스크롤이동
				if($cont_top > preScrollTop ){
					$('html, body').animate({scrollTop:$cont_top + $fix_h + 30 }, 800);				
				}
				// 첫번째 탭 컨텐츠 아래에서 위로 스크롤이동
				else{
					$('html, body').animate({scrollTop:$cont_top }, 800);
				}
			}
		}
		// 헤더가 pos-sticky 없을때 타겟위치
		else if($('.headerWrap').hasClass('pos-sticky') === false){
			$('html, body').animate({scrollTop:$cont_top - $fix_h + 15}, 800);
		}
		else {			
			// 클릭시 컨텐츠 위에서 아래로 스크롤이동
			if($cont_top > preScrollTop ){
				$('html, body').animate({scrollTop:$cont_top + $fix_h/2 }, 800);				
			}
			else{
				// 클릭시 컨텐츠 아래에서 위로 스크롤이동
				$('html, body').animate({scrollTop:$cont_top - $fix_h + 3}, 800);
			}
		}
	});

	//count 한번만 실행
	let countStart = true
	let isScroll = true
	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		// 스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}else{
			$('.fix-menu').removeClass('fix')
		}

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 102);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});
		
		//.cont02에 스크롤시 count 스타트
		if($(".cont02 *").hasClass("counter")) {
			var gTop = $(".cont02");
			var $gtopScroll  = gTop.offset().top-300;
			if(scroll >= $gtopScroll && countStart == true){
				gTop.addClass("on");
				countNum()
				//count 한번만 실행
				countStart = false
			} else {
				//$('.counter').text(0);
			}
		}

		// 스크롤 잠시 멈추기
		// 특정 위치에 도달했을 때
		// if (scrollTop + windowHeight >= targetOffset && !isScrolling) {
		// 	// 0.5초 동안 스크롤을 멈추기
		// 	isScrolling = true;
		// 	$('html, body').css('overflow', 'hidden');
		// 	setTimeout(function() {
		// 	$('html, body').css('overflow', 'auto');
		// 	isScrolling = false;
		// 	}, 5000);
		// }

		// var targetTop = $('.cont04').offset().top - 100;
		// if(scroll >= targetTop && isScroll == true) {
		// 	console.log('start')
		// 	$('html, body').css('overflow', 'hidden');
		// 	isScroll = false
		// } else {
		// 	setTimeout(function() {
		// 		$('html, body').css('overflow', 'initial');
		// 	}, 3000)
		// 	console.log('end')
		// }

	});
}

/* cont02 카운트 */
function countNum() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		$({ countNum: $this.text()}).animate({
			countNum: countTo
		},
		{
			duration: 1500,
			easing:'linear',
			//4자리 수일때 콤마사용
			step: function() {
			$this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			},
			complete: function() {
			$this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			}
		});
	});
};

// cont05 바자관 슬라이드
function studyHallSlide(){
	var stuSlideNav = new Swiper('.studyHall-navi', {
		slidesPerView: 3,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	});	
	
	// 코어 일때
	var slideSetting = {
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		allowTouchMove:false,
	}
	
	if ($('.studyHall-navi').hasClass('core')) {
		var stuSlideNav = new Swiper('.studyHall-navi', slideSetting)
	}

	var slideCont = new Swiper('.studyHall-slide', {
		loop: true,
		autoHeight: true,
		speed : 500,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		thumbs: {
			swiper: stuSlideNav
		},
		observer: true,
		observeParents: true
	});

	// 바자관 롤링 내 바자관시설보기 팝업
	$('.bt-tt').on('click',function(){
		slideCont.autoplay.stop()
		$('.layer-pop').addClass('on')
		$('.mask-bg').css('display','block')
	})
	$('.layer-pop .bt-close').on('click',function(){
		slideCont.autoplay.start()
		$('.layer-pop').removeClass('on')
		$('.mask-bg').css('display','none')
	})
}

// cont06 이미지 롤링
function imgSlide(){

	var rollingSwiper = new Swiper('.img-rolling',{
		autoplay: {
			delay: 0,
		},
		loop:true,
		centeredSlides: true,
		centeredSlidesBounds: true,
		allowTouchMove: false,
		speed: 5000,
		slidesPerView: 'auto',
		spaceBetween: 24,
		observer: true,
		observeParents: true,
	});
}

// cont06 선생님 슬라이드
function tSlide(){
	var slideIndex01 = $(".teacher-swiper .swiper-slide").index()
	
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
        initialSlide : randomIdx(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
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

//슬라이드 랜덤
function randomIdx()  {
	var slideTotal01 = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide01 = Math.floor(Math.random() * slideTotal01);
	return parseInt(r_slide01);
}

function teacherSlide(){
	var slideIndex02 = $(".teacher-sub-list .swiper-slide").index()
	
	var tSwiper = new Swiper('.teacher-sub-list',{
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
        initialSlide : randomIdx02(),//슬라이드 시작 랜덤
		slidesPerView: 'auto',
		spaceBetween: 40,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.teacher-sub-list').hover(
		function(){
			tSwiper.autoplay.stop();
    },
		function(){
			tSwiper.autoplay.start();
		}
	);
}

//슬라이드 랜덤
function randomIdx02()  {
	var slideTotal02 = $('.teacher-sub-list .swiper-slide:not(.swiper-slide-duplicate)').length;
	var r_slide02 = Math.floor(Math.random() * slideTotal02);
	return parseInt(r_slide02);
}


// cont08 바자관시간표 팝업
$('.bt-tt02').on('click',function(){
    $('.layer-pop01').addClass('on')
    $('.mask-bg').css('display','block')
})
$('.layer-pop01 .bt-close').on('click',function(){
    $('.layer-pop01').removeClass('on')
    $('.mask-bg').css('display','none')
})

// cont08 포트폴리오 슬라이드
function pfSlide(){

	if ($(".pf-slide .swiper-slide").length == 1) {
		var pfSwiper = new Swiper('.pf-slide',{
			observer: true,
			observeParents: true,
		});
	} else {
		var pfSwiper = new Swiper('.pf-slide',{
			loop:true,
			speed: 500,
			spaceBetween: 24,
			observer: true,
			observeParents: true,
			pagination: {
				el: ".swiper-pagination.type01",
				clickable: true
			},
		});
	}
}

// cont09 윈터스쿨 슬라이드
function winterSlide(){
	var winterSwiper = new Swiper('.winter-slide',{
		loop:true,
		speed: 500,
		spaceBetween: 24,
		observer: true,
		observeParents: true,
		pagination: {
			el: ".swiper-pagination.type02",
			clickable: true
		},
	});
}


/* ========== SNOW effect ========== */
var c = document.getElementById('canv'), 
    $w = c.getContext("2d");
var w = c.width = window.innerWidth, 
    h = c.height = 970; // 세로 길이

Snowy();
function Snowy() {
  var snow, arr = [];
  var num = 100, tsc = 1, sp = 0.1;
  var sc = 2, t = 0, mv = 20, min = 1;
    for (var i = 0; i < num; ++i) {
      snow = new Flake();
      snow.y = Math.random() * (h + 50);
      snow.x = Math.random() * w;
      snow.t = Math.random() * (Math.PI * 2);
      snow.sz = (100 / (10 + (Math.random() * 100))) * sc;
      snow.sp = (Math.pow(snow.sz * .8, 2) * .15) * sp;
      snow.sp = snow.sp < min ? min : snow.sp;
      arr.push(snow);
    }
  go();
  function go(){
    window.requestAnimationFrame(go);
      $w.clearRect(0, 0, w, h);
      $w.fillStyle = 'transparent';
      $w.fillRect(0, 0, w, h);
      $w.fill();
        for (var i = 0; i < arr.length; ++i) {
          f = arr[i];
          f.t += .05;
          f.t = f.t >= Math.PI * 2 ? 0 : f.t;
          f.y += f.sp;
          f.x += Math.sin(f.t * tsc) * (f.sz * .1);
          if (f.y > h + 50) f.y = -10 - Math.random() * mv;
          if (f.x > w + mv) f.x = - mv;
          if (f.x < - mv) f.x = w + mv;
          f.draw();}
 }
 function Flake() {
   this.draw = function() {
      this.g = $w.createRadialGradient(this.x, this.y, 0, this.x, this.y, this.sz);
      this.g.addColorStop(0, 'hsla(255,255%,255%,1)');
      this.g.addColorStop(1, 'hsla(255,255%,255%,0)');
      $w.moveTo(this.x, this.y);
      $w.fillStyle = this.g;
      $w.beginPath();
      $w.arc(this.x, this.y, this.sz, 0, Math.PI * 2, true);
      $w.fill();}
  }
}
/*________________________________________*/
window.addEventListener('resize', function(){
  c.width = w = window.innerWidth;
  c.height = h = 970;
}, true);
/* ========== //SNOW effect ========== */