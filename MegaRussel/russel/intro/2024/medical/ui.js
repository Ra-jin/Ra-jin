
$(document).ready(function(){
	// 로딩 후 포커스
	// var bodytop	= $(".h-quality-wrap").offset().top;
	// $("html,body").animate({scrollTop:bodytop},700)
	//gnb틀고정용
	var $top2 = $(".medical-wrap").position().top
	var headerH = $('.headerWrap').outerHeight();
	var headerfix = $('.headerWrap').hasClass('pos-sticky');
	window.onload = function() {
		setTimeout(function(){        
			if(headerfix == true){		
				$("html,body").animate({scrollTop: 0}, 0);	
				$('body, html').animate({scrollTop : 183 }, 500)
			}
			else{                    
				$('body, html').animate({scrollTop : 183 }, 500)
			}              
		}, 200);
	}

	tabMenu('.bt-tab','.cont-box') 
	tabMenu('.bt-wrap','.t-cont-box') 
});
