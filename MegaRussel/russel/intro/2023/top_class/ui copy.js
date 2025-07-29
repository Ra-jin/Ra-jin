
$(document).ready(function(){
	// 로딩 후 포커스
	var bodytop	= $(".topclass-wrap").offset().top;
	$("html,body").animate({scrollTop:bodytop},700)

	// sclChange()
});

// $(window).resize(function(){
// 	sclChange()
// })

// const cont03Client = document.querySelector('.cont03').clientHeight
// const cont03Height = document.querySelector('.cont03').scrollHeight
// const cont04Client = document.querySelector('.cont04').clientHeight
// const cont04Height = document.querySelector('.cont04').scrollHeight
// const cont06Client = document.querySelector('.cont06').clientHeight
// const cont06Height = document.querySelector('.cont06').scrollHeight
// let sectionScroll01 = cont03Height-cont03Client
// let sectionScroll02 = cont04Height-cont04Client
// let sectionScroll03 = cont06Height-cont06Client

// 브라우저에 보이는 section에 클래스 on추가
$(window).scroll(function(){
	var cont_len = $(".section").length;			
	var scroll = $(window).scrollTop(); 

	for(i=0;i<cont_len;i++){
		if (scroll >= $(".section").eq(i).offset().top){
			$(".section").removeClass("on");
			$(".section").eq(i).addClass("on");
		}
		
	}

	// inner 스크롤 시작, 끝 도달시 window스크롤 활성화

	// $(".cont03").scroll(function(){		
	// 	var contScroll01 = $(".cont03").scrollTop(); 
	// 	if(contScroll01 == sectionScroll01) {
	// 		$(".cont03").removeClass('on')
	// 	}
	// 	if(contScroll01 == 0) {
	// 		$(".cont03").removeClass('on')
	// 	}
	// })
	// $(".cont04").scroll(function(){		
	// 	var contScroll02 = $(".cont04").scrollTop(); 
	// 	if(contScroll02 == sectionScroll02) {
	// 		$(".cont04").removeClass('on')
	// 	}
	// 	if(contScroll02 == 0) {
	// 		$(".cont04").removeClass('on')
	// 	}
	// })

	// $(".cont06").scroll(function(){		
	// 	var contScroll03 = $(".cont06").scrollTop(); 
	// 	if(contScroll03 == sectionScroll03) {
	// 		$(".cont06").removeClass('on')
	// 	}
	// 	if(contScroll03 == 0) {
	// 		$(".cont06").removeClass('on')
	// 	}

	// })




});


//휠 액션
function sclChange(){

	var win_h = $(window).height();
	var $body = $("body, html");
	var head_h = $(".headerWrap").height();

	$(window).scroll(function(){

		
		$(".section").each(function(i){
			$(this).attr("data-top",win_h*i + head_h);
			var sectionPos = parseInt($(this).attr("data-top"));

			

			$(this).on("mousewheel DOMMouseScroll", function(e){
				
				// wheeled up
				if(e.originalEvent.wheelDelta >= 0 || 0 > e.originalEvent.detail) {   
					

					// cont03,4,6에서 풀페이지 스크롤 기능 멈춤
					if($(".cont03").hasClass("on")) {
						$body.stop()
						
					} else if ($(".cont04").hasClass("on")){
						$body.stop()
					} else if ($(".cont06").hasClass("on")){
						$body.stop()
					} else {
						e.preventDefault();
						$body.stop().animate({scrollTop:sectionPos-win_h});
					}
				}
				// wheeled down
				else{ 
					//cont03,4,6에서 풀페이지 스크롤 기능 멈춤
					if($(".cont03").hasClass("on")) {
						$body.stop()
					} else if ($(".cont04").hasClass("on")){
						$body.stop()
					} else if ($(".cont06").hasClass("on")){
						$body.stop()
					} else {
						e.preventDefault();
						$body.stop().animate({scrollTop:sectionPos+win_h});
					}


					if($(window).scrollTop() == 0){
						var first_box = $(".section:first-child").offset().top;
						$body.stop().animate({scrollTop:first_box});
					}
				}
			});
		});		
	})
}
