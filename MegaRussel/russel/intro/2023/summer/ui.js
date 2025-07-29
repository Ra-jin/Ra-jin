$(function() {
	var $top = $('.summer-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);
	//탭1의 padding-top설정
	$(".cont.js-cont").eq(0).children().eq(0).css({"padding-top":"195px"})


	// fixmenu();
	// reviewSlide()
	// bajaSlide()
	// manageSlide()
	// tSlide()
});


/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $doc = $('html, body')
	var $cont = $('.js-cont');
	var $fix_menu   = $('.js-fix-menu');
	var $fix_top = $('.js-fix-menu').offset().top;
	var $bt_fix = $('.js-fix-menu a');
	var $fix_h = $('.js-fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;

		if (i == 0) {
			$doc.animate({scrollTop:$cont_top}, 800);
		}else {
			$doc.animate({scrollTop:$cont_top - $fix_h + 3}, 800);
		}
	});

	//count 한번만 실행
	let countStart = true
	//스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		//스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		};

		if(scroll >= $fix_top){
			$fix_menu.css({
				'position':'fixed',
			});
			$('.fix-menu-wrap').addClass('fix');
		}else{
			$fix_menu.css({
				'position':'absolute',
			});
			$('.fix-menu-wrap').removeClass('fix');
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});


		//.cont01에 스크롤시 count 스타트
		var gTop = $(".cont01");
		var $gtopScroll  = gTop.offset().top-300;
		if(scroll >= $gtopScroll && countStart == true){
			gTop.addClass("on");
			countNum()
			//count 한번만 실행
			countStart = false
		} else {
			//$('.counter').text(0);
		}

	});
}

//count
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

//review slide
function reviewSlide(){

	var reSlide = new Swiper('.review-slide', {
		slidesPerView: 1,
		loop: true,
		autoHeight: true,
		allowTouchMove: true,
		autoplay:{
			delay: 10000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
			type: "bullets",
			clickable: true, 
		},
	});

}
// 바자관 슬라이드
function bajaSlide(){

	var bSlide = new Swiper('.baja-slide', {
		slidesPerView: 1,
		loop: true,
		loopAdditionalSlides: 1,
		allowTouchMove: true,
		autoplay:{
			delay: 7000,
			disableOnInteraction: false,
		},
		spaceBetween: 50,
		autoHeight: true,
	});

}
// 생활관리 슬라이드
function manageSlide(){

	var mSlide = new Swiper('.manage-slide', {
		slidesPerView: 1,
		loop: true,
		allowTouchMove: true,
		autoplay:{
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
		  el: ".swiper-pagination",
		  type: "bullets",
		  clickable: true, 
		},
	});

}

//강사진
function tSlide(){
	var slideIndex = $(".teacher-swiper .swiper-slide").index()
	
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
function randomIdx(){
    var slideTotal = $('.teacher-swiper .swiper-slide:not(.swiper-slide-duplicate)').length;
    var r_slide = Math.floor(Math.random() * slideTotal);
    return parseInt(r_slide);
}


/*--------- visual 물방울 ----------*/
window.onload = function() {

	var c = document.getElementById('bubble'),
	  $ = c.getContext('2d'),
	  w = c.width = window.innerWidth,
	  h = c.height = window.innerHeight;
  
	var i, bubblesNumber = w * h > 750000 ? 50 : 80,
	  objects = [],
	  maxRadius = w * h > 500000 ? 10 : 1,
	  maxYVelocity = 2;
  
	function randomInRange(min, max) {
	  return Math.random() * (max - min) + min;
	}
  
	function Vector(x, y) {
	  this.x = x || 0;
	  this.y = y || 0;
	}
  
	Vector.prototype.add = function(v) {
	  this.x += v.x;
	  this.y += v.y;
	  return this;
	};
  
	Vector.prototype.multiply = function(value) {
	  this.x *= value;
	  this.y *= value;
	  return this;
	};
  
	Vector.prototype.getMagnitude = function() {
	  return Math.sqrt(this.x * this.x + this.y * this.y);
	};
  
	function Fragment(position, velocity, radius, hue) {
	  this.position = position;
	  this.velocity = velocity;
	  this.startSpeed = this.velocity.getMagnitude();
	  this.radius = radius;
	  this.hue = hue;
	}
  
	Fragment.prototype.update = function(world) {
	  this.velocity.multiply(world.physicalProperties.friction);
	  this.position.add(this.velocity);
	  this.radius *= this.velocity.getMagnitude() / this.startSpeed;
	  if (this.radius < 0.1) {
		world.objects.splice(world.objects.indexOf(this), 1);
	  }
	}
  
	Fragment.prototype.render = function($) {
	  $.beginPath();
	  $.fillStyle = 'rgba(255, 255, 255, 0.2)';
	  $.arc(this.position.x, this.position.y, this.radius, 0, Math.PI * 2);
	  $.fill();
	};
  
	function Bubble(x, y, speed, radius, fragments, swing, hue) {
	  this.x = x;
	  this.y = y;
	  this.startX = this.x;
	  this.speed = speed;
	  this.radius = radius;
	  this.fragments = fragments;
	  this.swing = swing;
	  this.hue = hue;
	}
  
	Bubble.prototype.update = function(world) {
	  this.x = this.startX + Math.cos(this.y / 80) * this.swing;
	  this.y += this.speed;
	  if (this.y + this.radius < 0) {
		this.y = world.physicalProperties.height + this.radius;
	  }
	}
  
	Bubble.prototype.render = function($) {
	  $.beginPath();
	  $.fillStyle = 'rgba(255, 255, 255, 0.2)';
	  $.arc(this.x, this.y, this.radius, 0, 2 * Math.PI);
	  $.fill();
	};
  
	Bubble.prototype.pop = function(world) {
	  world.objects.splice(world.objects.indexOf(this), 1);
	  for (var i = 0; i < this.fragments; i++) {
		world.objects.push(new Fragment(new Vector(this.x, this.y), new Vector(randomInRange(-2, 2), randomInRange(-2, 2)), randomInRange(2, this.radius / 4), this.hue));
	  }
	};
  
	function World(physicalProperties, objects, ctx, background) {
	  this.physicalProperties = physicalProperties;
	  this.objects = objects;
	  this.ctx = ctx;
	  this.background = background;
	  this.frameID = 0;
	}
  
	World.prototype.update = function() {
	  for (var i = 0; i < this.objects.length; i++) {
		this.objects[i].update(this);
	  }
	};
  
	World.prototype.render = function() {
	  this.ctx.clearRect(0, 0, this.physicalProperties.width, this.physicalProperties.height);
	  if (this.background) {
		this.ctx.fillStyle = this.background;
		this.ctx.fillRect(0, 0, this.physicalProperties.width, this.physicalProperties.height);
	  }
	  for (var i = 0; i < this.objects.length; i++) {
		this.objects[i].render(this.ctx);
	  }
	};
  
	World.prototype.animate = function() {
	  this.update();
	  this.render();
	  this.frameID = requestAnimationFrame(this.animate.bind(this));
	};
  
	for (i = 0; i < bubblesNumber; i++) {
	  objects.push(new Bubble(Math.random() * w, Math.random() * h, -randomInRange(0.5, maxYVelocity), randomInRange(5, maxRadius), randomInRange(7, 10), randomInRange(-40, 40), randomInRange(0, 360)));
	}
  
	var world = new World({
	  width: c.width,
	  height: c.height,
	  friction: 0.997
	}, objects, $, 'transparent');
  
	$.globalCompositeOperation = 'lighter';
  
	world.animate();
  
	window.addEventListener('resize', function() {
	  w = world.physicalProperties.width = c.width = window.innerWidth;
	  h = world.physicalProperties.height = c.height = window.innerHeight;
	  $.globalCompositeOperation = 'lighter';
	});
  
	window.addEventListener('mousemove', function(e) {
	  for (var i = 0; i < world.objects.length; i++) {
		if ((world.objects[i] instanceof Bubble) && (e.clientX > world.objects[i].x - world.objects[i].radius && e.clientX < world.objects[i].x + world.objects[i].radius && e.clientY < world.objects[i].y + world.objects[i].radius && e.clientY > world.objects[i].y - world.objects[i].radius)) {
		  world.objects[i].pop(world);
		}
	  }
	});
  
	window.addEventListener('touchmove', function(e) {
	  for (var i = 0; i < world.objects.length; i++) {
		if ((world.objects[i] instanceof Bubble) && (e.touches[0].clientX > world.objects[i].x - world.objects[i].radius && e.touches[0].clientX < world.objects[i].x + world.objects[i].radius && e.touches[0].clientY < world.objects[i].y + world.objects[i].radius && e.touches[0].clientY > world.objects[i].y - world.objects[i].radius)) {
		  world.objects[i].pop(world);
		}
	  }
	});
  
  };
  
/*--------- //visual 물방울 ----------*/