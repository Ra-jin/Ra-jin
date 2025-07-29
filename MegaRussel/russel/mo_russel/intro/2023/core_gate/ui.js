

$(window).scroll(function(){
	var scroll = $(window).scrollTop();
    
    var $cont02_top = $('.cont02').offset().top - 102
    var $cont03_top = $('.cont03').offset().top - 200
    if(scroll >= $cont02_top && scroll < $cont03_top){
        // cont02일때 timeline fix 시작
        $('.cont02').addClass('fix on')
    } else {
        $('.cont02').removeClass('fix')
	}

    var $cont05_top = $('.cont05').offset().top - 102
    if(scroll >= $cont05_top){
        // cont05일때 on
        $('.cont05').addClass('on')
    } 

})
// 하단 배너 클릭시 학원리스트로 이동
$('.fixed-bar a').click(function(){
    
    var $mozip_top = $('#mozip').offset().top - 102
    
	$('html, body').animate({scrollTop:$mozip_top},500);
})