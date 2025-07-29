<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2025 러셀 재수생 우선선발반" />
    <meta name="keywords" content="2025 러셀 재수생 우선선발반, 러셀 재수생 우선선발반, 2025 러셀재수생 우선선발반, 러셀재수생 우선선발반" />
	<meta name="description" content="바른공부 자습전용관 2025 러셀 재수생 우선선발반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 러셀 재수생 우선선발반">
	<meta property="og:description" content="2025 러셀 재수생 우선선발반, 러셀 재수생 우선선발반" />
	<!--#include virtual="/russel/library/include/common/russel_yj/head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css?ver=231104 " />
    <link rel="stylesheet" href="/common/css/full_danka.css">
    <link rel="stylesheet" href="/common/css/table.css">
	<link rel="stylesheet" href="/common/css/aos.css">
	<link rel="stylesheet" href="/common/css/common.css">
	<style>

	</style>
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<% If sCampusCode = "CD0258" OR sCampusCode = "CD0348" OR sCampusCode = "CD0347" Then '남기숙/여기숙/서의치 %>
<!-- first-wrap -->
<div class="first-wrap">

	<!-- Visual -->
    <!--#include virtual="/russel_yj/2024/first/visual.asp" -->
	<!-- Visual -->

	<!-- Contents -->

    <!-- 최상위권 의대전문관 -->
    <!--#include virtual="/russel_yj/2024/first/cont01.asp" -->

    <!-- 재수생 우선선발반 시스템 -->
    <!--#include virtual="/russel_yj/2024/first/cont02.asp" -->

    <!-- 입학 안내 -->
    <!--#include virtual="/russel_yj/2024/first/cont03.asp" -->

    <!-- 학습계획표, 일과표 -->
    <!--#include virtual="/russel_yj/2024/first/cont04.asp" -->

	<!-- //Contents -->
</div>
<!-- first-wrap -->

<% End If %>
<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>

<style>
	.first-wrap .fix-menu.fix {position:fixed;top:102px;left:0;z-index:11;}
	
	</style>
<script>
	
/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $cont = $('.js-cont');
	var $fix_top = $('.fix-menu').offset().top + 170;
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $cont.eq(i);
		var $cont_top = $cont_i.offset().top;

		if (i == 0) {
			$('html, body').animate({scrollTop:$cont_top}, 800);
		}else {
			$('html, body').animate({scrollTop:$cont_top - $fix_h - 80}, 800);
		}
	});

	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();

		// 스크롤시 fixmenu 활성화
		if(scroll >= $fix_top){
			$('.fix-menu').addClass('fix');
		}else{
			$('.fix-menu').removeClass('fix')
		}

		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 80);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		// 퀵 fixed 메뉴
		var $contFirstTop  = $cont.eq(0).offset().top;

		if(scroll >= $contFirstTop) {
			$('.f-quick').addClass('fixed')
		} else {
			$('.f-quick').removeClass('fixed')
		}


		//여기숙 우측 배너 css 속성 변경
		if($('.visual-wrap').hasClass('.f-quick')){

			var eventHeight = $(".quick.russel_w").height();
			var winSclInner	= $(window).scrollTop() + $(window).innerHeight() - eventHeight;
	
			var $quickCon = $('.quick.russel_w');
			var $quickCon_top  = Math.floor($quickCon.offset().top);
	
			var midCont      = $(".first-wrap");
			var midCont_top  = Math.floor(midCont.offset().top);
	
			if(winSclInner >= $quickCon_top){
				$quickCon.addClass("on");
			}
		}

		//프로그램 컨텐츠 영역에서만 이벤트 띠배너가 보이게 하기
		// if(winSclInner > midCont_top && winSclInner02 < $btmCon_top ) {
		// 	$quickCon.css('visibility','visible');
		// }

		// if(winSclInner < midCont_top){
		// 	$quickCon.css('visibility','visible');
		// }else if(winSclInner02 > $btmCon_top){
		// 	$quickCon.css('visibility','hidden');
		// }

		if(winSclInner < midCont_top + 500 && $quickCon.hasClass("on")){
			$quickCon.removeClass("on");
		}
	});

}



	// 영상캐스트 영상 팝업
	function CastPopup(url){
		var sUrl = url.toLowerCase();
		var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");
		
		// 네이버tv
		if (sUrl.indexOf('naver.com') > -1) {
			sUrl = sUrl.replace("/v/", "/embed/");
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
		// 유튜브
		} else {
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"' frameborder='no' scrolling='no' allowfullscreen></iframe>");
		}
	}
    
	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//학원 문자수신 알리미 신청 바로가기
	function fncAlarmPop(){        
        <% If IsRealSvr = true Then	'실서버 %>
	        var em_num = "118";
        <% Else	                    '개발서버 %>
	        var em_num = "9087";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

    //aos fadeup 효과
    AOS.init({
                
		offset: 300,
		duration: 500,
		easing: 'ease-in-sine',
		delay: 0,
		once: true
	});

</script>
</body>
</html>
