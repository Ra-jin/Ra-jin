$(function() {
	var $top = $('.pre-winter-wrap').offset().top;
	$('html, body').animate({scrollTop:$top},500);

	tabMenu('.btn-wrap','.cont-box');
	
	/* cont02 카운트 */
	scrollEvent();
});

// 스크롤 이벤트
function scrollEvent() {
	//count 한번만 실행
	let countStart = true
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		
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
