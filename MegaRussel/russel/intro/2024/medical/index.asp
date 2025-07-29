<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
apply_url = "javascript:alert('추후 오픈 예정입니다.');"
medical_txt = "종합반"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
					category = "overall"
					camUrl = "corejj"
					apply_url = "https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169"
					dataView = "2024학년도 러셀CORE 전주 바른공부 자습전용관 재원생 중<br> 수시 및 정시 합격자 기준 (복수 대학 합격자 포함/단과 수강생 미포함)<br>※ 2024-02-26 기준이며, 지속적으로 업데이트 될 예정입니다."
					open_date = "4월 순차적 개강"
	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
					category = "special"
					camUrl = "corecw"
					am_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1658"
					medical_txt = "전문반"
					open_date = "매월 초 개강"
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
					category = "overall"
					camUrl = "corecj"
					dataView = "2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수대학 합격자 포함, 단과 수강생 제외), 2024.02.23 기준"
					apply_url = "https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169"
					open_date = "4월 순차적 개강"

End Select
%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2025 메디컬 종합반" />
    <meta name="keywords" content="2025 메디컬 종합반, 러셀CORE, 러셀코어, 메디컬 종합반" />
	<meta name="description" content="2025 메디컬 종합반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 메디컬 종합반">
	<meta property="og:description" content="2025 메디컬 종합반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" type="text/css" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/table.css">
	<link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
	<link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<% If sCampusCode = "CD0346" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" Then '코어청주/코어전주/코어창원 %>
<!-- medical-wrap -->
<div class="<%=campusName%> medical-wrap <%=category%>">

	<!-- Visual -->
	<% If sCampusCode = "CD0345" Then '코어창원 %>
	<!-- 전문반 -->
	<div class="visual-area">
		<p class="v-txt01"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-txt01_1.png" alt="2025 입시 성공을 위한 완벽한 루트" /></p>
		<div class="v-tit-wrap">
			<p class="v-txt02"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-txt02_1.png" alt="2025 N수" /></p>
			<h1 class="v-txt03"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-txt03_1.png" alt="메디컬 전문반" /></h1>
			<div class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-obj02.png" alt="" /></div>
			<div class="v-obj03"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-obj03.png" alt="" /></div>
		</div>
		<p class="sub-txt">메디컬 합격 결과가 증명하는 러셀CORE 창원 메디컬 전문 시스템!<br>
			<%=txtCampus%> 메디컬 전문반에서 경쟁하는 것이 메디컬 입시 성공의 경쟁력입니다.
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
		<!-- quick 배너 -->
		<!-- <div class="quick">
			<p class="b-tit">2025 수능 대비 단과</p>
			<a href="<%=am_url%>" class="q-ban">
				<span>
					최상위권 N수생을 위한<br>
					평일 오전&middot;오후 단과
				</span>
				<strong>AM단과</strong>
			</a>
		</div> -->
	</div>
	<% Else %>
	<!-- 종합반 -->
	<div class="visual-area">
		<p><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-bubble.png" alt="목표는 오직 메디컬!" /></p>
		<p class="v-txt01"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-txt01.png" alt="2025 입시 성공을 위한 완벽한 루트" /></p>
		<div class="v-tit-wrap">
			<p class="v-txt02"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-txt02.png" alt="2025" /></p>
			<h1 class="v-txt03"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-txt03.png" alt="메디컬 종합반" /></h1>
			<p class="v-obj01">
				<img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-obj01.png" alt="" />
				<strong>N수, 반수</strong>
			</p>
			<div class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-obj02.png" alt="" /></div>
			<div class="v-obj03"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-obj03.png" alt="" /></div>
		</div>
		<p class="sub-txt">최상위권 단과 수업과 메디컬 입시 전문 담임선생님의 관리<br>
		최상위권 N수, 반수생을 위한 맞춤 프로그램
		</p>
		<div class="v-list">
			<div><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-list.png" alt="" /></div>
			<div class="v-list-obj01"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-list-obj01.png" alt="" /></div>
			<div class="v-list-obj02"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-list-obj02.png" alt="" /></div>
			<div class="v-list-obj03"><img src="<%=Application("img_path_russel")%>/intro/2024/medical/v-list-obj03.png" alt="" /></div>
		</div>
	</div>
	<% End If %>
	<!-- Visual -->

	<!-- Contents -->
	
    <% If sCampusCode = "CD0345" Then '코어창원 %>

    <!-- 전문반 -->
	<!--#include virtual="/intro/2024/medical/special.asp"-->

    <% Else %>

    <!-- 종합반 -->
	<!--#include virtual="/intro/2024/medical/overall.asp"-->

    <% End If %>

	<div class="bottom-txt">
		<h2>
			2025 메디컬 입시 성공<br>
			<strong><%=txtCampus%> 메디컬 <%=medical_txt%>이 정답입니다.</strong>
		</h2>
	</div>
	<!-- //Contents -->
</div>
<!-- medical-wrap -->

<% End If %>
<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->


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
    //aos fadeup 효과
    AOS.init({
                
		offset: 300,
		duration: 2000,
		easing: 'ease-out-cubic',
		delay: 0
	});

</script>
</body>
</html>
