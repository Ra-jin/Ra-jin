<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2025 러셀 정규반" />
    <meta name="keywords" content="2025 러셀 정규반, 러셀 정규반, 2025 러셀정규반, 러셀정규반" />
	<meta name="description" content="바른공부 자습전용관 2025 러셀 정규반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 재수종합반 정규반">
	<meta property="og:description" content="2025 정규반, 러셀 정규반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css?ver=231011 " />
    <link rel="stylesheet" href="/common/css/full_danka.css">
    <link rel="stylesheet" href="/common/css/table.css">
	<link rel="stylesheet" href="/common/css/aos.css">
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<% If sCampusCode = "CD0340" OR sCampusCode = "CD0249" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0257" Then '코어광주/영통/대구/울산/중계 %>
<!-- regular-wrap -->
<div class="regular-wrap">

	<!-- Visual -->
    <!--#include virtual="/intro/2024/regular_overall/visual.asp" -->
	<!-- Visual -->

	<!-- Contents -->

    <!-- 최상위권 의대전문관 -->
    <!--#include virtual="/intro/2024/regular_overall/cont01.asp" -->

    <!-- 재수생 우선선발반 시스템 -->
    <!--#include virtual="/intro/2024/regular_overall/cont02.asp" -->

    <!-- 입학 안내 -->
    <!--#include virtual="/intro/2024/regular_overall/cont03.asp" -->

    <!-- 학습계획표, 일과표 -->
    <!--#include virtual="/intro/2024/regular_overall/cont04.asp" -->
	
    <!-- 학습계획표, 일과표 -->
    <!--#include virtual="/intro/2024/regular_overall/cont05.asp" -->

	<!-- //Contents -->
</div>
<!-- first-wrap -->
<% End If %>

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="/common/js/chart.min.js"></script>
<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>
<script>
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
	
	// 개방형 구조 팝업
	function layerPop() {
		$(".zoom-pop").addClass("on")
	}
	$(document).mouseup(function (e){
		var LayerPopup = $(".zoom-pop");
		if(LayerPopup.has(e.target).length === 0){
			LayerPopup.removeClass("on");
		}
	});


    // #tab01, #tab02 url 이동
    
    $(document).ready(function(){

		//대구학원일경우
		
			// if($('.regular-wrap .visual-wrap').hasClass('russel_dg')){
	     	// 	load_hash();
			// }

    });
      
		function load_hash(){
			var lo_h = window.location.hash;
			var $top = $('.regular-wrap').offset().top;
			var $contTop = $('#tabScroll').offset().top - 200;
			var $planTop = $('#plan').offset().top - 200;


			if(lo_h == "#tab02"){
				$("html, body").animate({scrollTop:$contTop}, 500)
				
				$(".tab-cont-wrap .bt-tab a:nth-child(1)").removeClass("on");
				$(".tab-cont-wrap .bt-tab a:nth-child(2)").addClass("on");
				$(".tab-cont-wrap .cont-box").eq(0).removeClass("on");
				$(".tab-cont-wrap .cont-box").eq(1).addClass("on");
			} else if (lo_h == "#tab01"){
				$("html, body").animate({scrollTop:$contTop}, 500)
			} else if (lo_h == "#plan"){
				$("html, body").animate({scrollTop:$planTop}, 500)
			} 
			else {		
				// var $top2 = $(".regular-wrap").position().top
				// var headerH = $('.headerWrap').outerHeight();
				// var headerfix = $('.headerWrap').hasClass('pos-sticky');
				// setTimeout(function(){        
				// 	if(headerfix == true){
				// 		// $("html,body").animate({scrollTop: $top}, 600);
				// 	}
				// 	else{                    
				// 		$('body, html').animate({scrollTop : $top2 - headerH/10 }, 500)
				// 	}              
				// }, 200);
			  
				// $('html, body').animate({scrollTop:$top},500); //tab영역 앵커이동 아닐 시 기존 비주얼영역으로 스크롤
			}
		}
	

</script>
</body>
</html>
