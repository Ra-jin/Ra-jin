
$(function() {
	var $top = $('.gate-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

});

$(window).scroll(function(){
    
	var scroll = $(window).scrollTop();
    
    var cont01 		= $('.cont01');
    var $cont01_top = cont01.offset().top - 700
    if(scroll >= $cont01_top){
        // cont01일때 animation 시작
        cont01.addClass('on')
    } 

})