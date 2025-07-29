<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<%
og_url = "https://mrussel.megastudy.net/intro/2025/half/index.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
	Case "INTRO": txtCampus = "러셀"  '인트로
		campusName = "intro"

	Case "CD0247": txtCampus = "러셀 강남"  '강남
		campusName = "russel_gn"
		og_url = "https://mrusselgn.megastudy.net/intro/2025/half/index.asp"

	Case "CD0001": txtCampus = "러셀 대치"  '대치
		campusName = "russel"
		og_url = "https://mrusseldc.megastudy.net/intro/2025/half/index.asp"

	Case "CD0245": txtCampus = "러셀 목동"  '목동
		campusName = "russel_mokdong"
		og_url = "https://mrusselmd.megastudy.net/intro/2025/half/index.asp"

		Case "CD0250": txtCampus = "러셀 부천"  '부천
		campusName = "russel_bc"
		og_url = "https://mrusselbc.megastudy.net/intro/2025/half/index.asp"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
		campusName = "russel_bundang"
		og_url = "https://mrusselbd.megastudy.net/intro/2025/half/index.asp"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
		campusName = "russel_ct"
		og_url = "https://mrusselct.megastudy.net/intro/2025/half/index.asp"

	Case "CD0249": txtCampus = "러셀 영통"  '영통
		campusName = "russel_yt"
		og_url = "https://mrusselyt.megastudy.net/intro/2025/half/index.asp"

	Case "CD0257": txtCampus = "러셀 중계"  '중계
		campusName = "russel_jg"
		og_url = "https://mrusseljg.megastudy.net/intro/2025/half/index.asp"

	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
		campusName = "russel_pc"
		og_url = "https://mrusselpc.megastudy.net/intro/2025/half/index.asp"

	Case "CD0342": txtCampus = "러셀 대구" '대구
		campusName = "russel_dg"
		og_url = "https://mrusseldg.megastudy.net/intro/2025/half/index.asp"

	Case "CD0349": txtCampus = "러셀 울산" '울산
		campusName = "russel_us"
		og_url = "https://mrussel_us.megastudy.net/intro/2025/half/index.asp"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
		campusName = "core_gj"
		og_url = "https://mcoregj.megastudy.net/intro/2025/half/index.asp"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
		campusName = "core_dj"
		og_url = "https://mcoredj.megastudy.net/intro/2025/half/index.asp"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
		campusName = "core_wj"
		og_url = "https://mcorewj.megastudy.net/intro/2025/half/index.asp"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
		campusName = "core_jj"
		og_url = "https://mcorejj.megastudy.net/intro/2025/half/index.asp"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
		campusName = "core_cw"
		og_url = "https://mcorecw.megastudy.net/intro/2025/half/index.asp"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
		campusName = "core_cj"
		og_url = "https://mcorecj.megastudy.net/intro/2025/half/index.asp"

End Select
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta name="author" content="2026 반수반" />
    <meta name="keywords" content="러셀학원, 재수학원, 입시, 재수기숙학원, 메가스터디러셀, 메가스터디, N수, 반수, 대입, 대학생, 의대, 약대, 한의대" />
    <meta name="description" content="빠르게, 더 높은 목표에 도달하는 반수 성공 공식 러셀 반수반!" />
    
    <meta property="og:type" content="website" />
    <meta property="og:title" content="2026 반수반" />
    <meta property="og:description" content="빠르게, 더 높은 목표에 도달하는 반수 성공 공식 러셀 반수반!" />
    <meta property="og:site_name" content="메가스터디 러셀" />
    <meta property="og:url" content="<%=og_url%>" />
	<meta property="og:locale" content="ko_KR" />

    <!-- #include virtual = "/inc/head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2026 반수반</strong>
</h2>
<section class="sub-wrap">

	<!-- half-wrap -->
    <div class="half-wrap">
		<!--visual-->
		<!-- #include virtual = "/intro/2025/half/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <% If campus_code = "INTRO" Then '인트로 %>
            <ul class="fix-menu js-fix-menu">
                <li>러셀 반수반 학습 시스템</li>
                <li>학원별 모집안내</li>
            </ul>
            <% Else %>
            <ul class="fix-menu js-fix-menu">
                <li class="on">모집안내</li>
                <li>학습 시스템</li>
            </ul>
            <% End If %>
            <!--// fix-menu -->

			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <p class="recruit-tit"><strong>모집안내</strong></p>
                <div class="tbl-box type01">

                    <table class="tbl-type01">
                        <colgroup>
                            <col style="width: 20%">
                            <col style="width: auto">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th class="bg-sky"><%=tit01%></th>
                                <td class="text-align-left">
                                    <%=txt01%>
                                    <% If campus_code = "CD0244" Then '분당 %>
                                    <p class="l-txt">
                                        ※ 신규생 등원 : 매주 월요일/목요일 中 택 1
                                    </p>
                                    <% End If %>
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit02%></th>
                                <td class="text-align-left">
                                    <%=txt02%>
                                    <p class="l-txt">
                                        ※ 모집요강 지원자격 해당자 순 접수
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

                <% If campus_code = "CD0245" Then '목동 %>
                <div class="ico-end" style="top: 18vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                <% End If %>

                <!-- 원서접수 버튼 -->
                <% If campus_code = "CD0247" or campus_code = "CD0246" or campus_code = "CD0245" or campus_code = "CD0244" or campus_code = "CD0343" or campus_code = "CD0346" or campus_code = "CD0001" or campus_code = "CD0342" or campus_code = "CD0341" or campus_code = "CD0345" or campus_code = "CD0349" or campus_code = "CD0344" Then '강남/센텀/목동/분당/코어원주/코어청주/대치/대구/대전/코어창원/울산/코어전주 %>
                    <div class="inner">
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    </div>
                <% End If %>
                <!-- //원서접수 버튼 -->

                <!--학원별 컨텐츠 -->
                <%
                    ' if campusName02 = "" then
                    '     Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                    '     Response.End
                    ' end if

                    ' dirFile = "/intro/2025/half/"&campusName02&".asp"
                    ' Server.Execute(dirFile)

                    IF campusName02 <> "" THEN
                        dirFile = "/intro/2025/half/"&campusName02&".asp"
                        Server.Execute(dirFile)
                    ELSE
                        Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                        Response.End
                    END IF
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->
            <% End If %>
		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2025/half/tab01.asp" -->
		<!-- //tab01 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap type02">
            <div class="recruit-tit"><strong>2026 러셀 반수반</strong> <br> 모집안내</div>
            <p class="recruit-txt">학원별 모집요강, 장학 혜택 밎 상세 등록 방법은<br>각 학원으로 문의바랍니다.</p>
        </div>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% End If %>
        <div class="mask-bg" style="display: none;"></div>

        <% If campus_code <> "INTRO" Then '인트로 제외 %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <% End If %>
        <p><a href="<%=pc_url%>intro/2025/half/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!--//half-wrap -->
</section>

<!--  공통 하단 -->
<!-- #include virtual = "/inc/footer.asp" -->
<!--  // 공통 하단-->

<script src="/js/chart.min.js"></script>
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
	var popupWidth = '100%';
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

    //학원 문자수신 알리미 신청 바로가기
    function fncAlarmPop(){
        <% If IsRealSvr = true Then  '실서버 %>
          var em_num = "1278&stype=f";
        <% Else                      '개발서버 %>
          var em_num = "10094&stype=f";
        <% End If %>

        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
        window.open(url,'popup_smsalarm','scrollbars=yes, top=0,left='+ popupX);
    }
</script>
</body>
</html>


