<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<%
apply_url = "alert('추후 오픈 예정입니다.')"
medical_txt = "종합반"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
					category = "overall"
					camUrl = "mcorejj"
					apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169'"
					dataView = "2024학년도 러셀CORE 전주 바른공부 자습전용관 재원생 중<br> 수시 및 정시 합격자 기준 (복수 대학 합격자 포함/단과 수강생 미포함)<br>※ 2024-02-26 기준이며, 지속적으로 업데이트 될 예정입니다."
					open_date = "4월 순차적 개강"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
					category = "special"
					camUrl = "mcorecw"
					am_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1658"
					medical_txt = "전문반"
					open_date = "매월 초 개강"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
					category = "overall"
					camUrl = "mcorecj"
					dataView = "2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수대학 합격자 포함, 단과 수강생 제외), 2024.02.23 기준"
					apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169'"
					open_date = "4월 순차적 개강"

End Select
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 메디컬 종합반" />
    <meta name="keywords" content="2025 메디컬 종합반, 러셀CORE, 러셀코어, 메디컬 종합반" />
	<meta name="description" content="2025 메디컬 종합반" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css?ver=240412" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 메디컬 <%=medical_txt%></strong>
</h2>
<% If campus_code = "CD0346" OR campus_code = "CD0344" OR campus_code = "CD0345" Then '코어청주/코어전주/코어창원 %>
<section class="sub-wrap">
	<!-- medical-wrap -->
    <div class="<%=campusName%> medical-wrap <%=category%>">

        <!-- Visual -->
        <% If campus_code = "CD0345" Then '코어창원 %>
        <!-- 전문반 -->
        <div class="visual-area">
            <div class="v-tit-wrap">
                <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/v-obj02.png" alt="" /></div>
                <div class="v-obj03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/v-obj03.png" alt="" /></div>
            </div>
            <p class="sub-txt">메디컬 합격 결과가 증명하는<br>
                <%=txtCampus%> 메디컬 전문 시스템!<br>
                <%=txtCampus%> 메디컬 전문반에서 경쟁하는 것이<br>
                메디컬 입시 성공의 경쟁력입니다.
            </p>
            <div class="v-info">
                <div>
                    <dl>
                        <dt>개강일</dt>
                        <dd>
                            <%=open_date%>
                        </dd>
                    </dl>
                    <dl>
                        <dt>접수 방법</dt>
                        <dd>
                            현장 접수(문의 : 055-605-1010)<br>
                            <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
        <% Else %>
        <!-- 종합반 -->
        <div class="visual-area">
            <p class="v-obj01">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/v-obj01.png" alt="" />
                <strong>N수, 반수</strong>
            </p>
            <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/v-obj02.png" alt="" /></div>
            <div class="v-obj03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/v-obj03.png" alt="" /></div>
        </div>
        <% End If %>
        <!-- Visual -->
        
        <% If campus_code = "CD0345" Then '코어창원 %>
        <!-- 전문반 -->
		<!-- #include virtual = "/intro/2024/medical/special.asp" -->
        <% Else %>
        <!-- 종합반 -->
		<!-- #include virtual = "/intro/2024/medical/overall.asp" -->
        <% End If %>

        <div class="bottom-txt">
            <h2>
                2025 메디컬 입시 성공<br>
                <strong><%=txtCampus%><br>
                메디컬 <%=medical_txt%>이 정답입니다.</strong>
            </h2>
        </div>

        <p><a href="<%=pc_url%>intro/2024/medical/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!-- //medical-wrap -->

</section>
<% End If %>
<!-- #include virtual = "/inc/footer.asp" -->
<script type="text/javascript" src="./ui.js"></script>
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
</script>
</body>
</html>