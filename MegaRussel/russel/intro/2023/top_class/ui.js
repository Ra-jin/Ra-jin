
$(document).ready(function(){
	// 로딩 후 포커스
	var bodytop	= $(".topclass-wrap").offset().top;
	$("html,body").animate({scrollTop:bodytop},700)

});


// 브라우저에 보이는 cont02 클래스 on추가
$(window).scroll(function(){		
	var scroll = $(window).scrollTop(); 

	if (scroll >= $(".cont02").offset().top && scroll < $(".cont04").offset().top){
		$(".cont02").addClass("on");
	}else {
		$(".cont02").removeClass("on");

	}

});

