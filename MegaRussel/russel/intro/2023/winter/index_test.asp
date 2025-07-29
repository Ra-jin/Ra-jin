<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
txtCampus = "러셀"
campusName = "intro"
campusName02 = "russel"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel_dc"
                    campusName02 = "t_dc"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
End Select
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2024 러셀 윈터스쿨" />
    <meta name="keywords" content="2024 러셀 윈터스쿨, 러셀 윈터스쿨, 2024 러셀윈터스쿨, 러셀윈터스쿨" />
	<meta name="description" content="바른공부 자습전용관 2024 러셀 윈터스쿨" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2024 러셀 윈터스쿨">
	<meta property="og:description" content="2024 러셀 윈터스쿨, 러셀 윈터스쿨" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./ui.css? version1.2 " />
    <link rel="stylesheet" href="/common/css/full_danka.css">
    <link rel="stylesheet" href="/common/css/table.css">
    <style>
        .winter-wrap{margin-top: 191px;}
        .winter-wrap .fix-menu.fix{top:102px}

    </style>
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- winter-wrap -->
<div class="winter-wrap <%=campusName%>">
	<!-- visual -->
	<!--#include virtual="/intro/2023/winter/visual.asp"-->
	<!-- visual -->

    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" Then '인트로제외 %>
    <div class="final-cont">

        <!-- 학원별 컨텐츠 -->
        <%
            dirFile = "/intro/2023/winter/"&campusName02&".asp"
            Server.Execute(dirFile)
        %>
        <!-- //학원별 컨텐츠 -->
    </div>
    <% End If %>

	<!-- 최상위권 집결, 러셀 -->
	<!--#include virtual="/intro/2023/winter/contents01.asp"-->
	<!-- //contents -->

    <!-- 최상위권 맞춤 러셀 윈터스쿨 프로그램 -->
	<!--#include virtual="/intro/2023/winter/contents02.asp"-->

    <% If sCampusCode = "INTRO" Then '인트로 %>
    <!-- 윈터스쿨 프로그램 -->
    <div class="cont js-cont">
        <div class="cont08 campus-wrap">
            <div class="inner">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont08_tit.png" alt="2024 러셀 윈터스쿨 모집안내" /></p>
                <p class="txt"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/cont08_txt.png" alt="학원별 모집요강, 장학혜택 및 상세 등록 방법은 각 학원으로 문의 바랍니다." /></p>
                <a href="/event/2023/campus_open/index.asp"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/banner_us.jpg" alt="울산배너" /></a>
                <!--#include virtual="/common/inc/campus_list_basic.asp" -->
            </div>
        </div>
    </div>
    <!-- //윈터스쿨 프로그램 -->
    <% end if %> 

</div>
<!-- winter-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="./ui.js"></script>
<script>
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
		var $cont_top = $cont_i.offset().top - 102;

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
			
			/* 2월 시작반 모집중 flag */
			if($('.fix-menu > div').hasClass('mozip')) {
				$('.mozip img').attr("src", function(idx, j){ return j.replace("_off.png","_on.png")});
			}

		}else{
			$fix_menu.css({
				'position':'absolute',
			});
			$('.fix-menu-wrap').removeClass('fix');

			/* 2월 시작반 모집중 flag */
			if($('.fix-menu > div').hasClass('mozip')) {
				$('.mozip img').attr("src", function(idx, j){ return j.replace("_on.png","_off.png")});
			}
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h - 180);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

		// 그래프
		var gTop2 = $(".cont07");
		var graphScroll = $(window).scrollTop();
		var $graphTopScroll  = gTop2.offset().top-150;

		if(graphScroll >= $graphTopScroll){
			gTop2.addClass("on");
		} else {
			gTop2.removeClass("on");
		}
	});
}
	//영상캐스트 영상 팝업
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
	        var em_num = "112";
        <% Else	                    '개발서버 %>
	        var em_num = "9082";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}




</script>
</body>
</html>
