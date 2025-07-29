<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" --> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="최상위권 이과 전문관N" />
    <meta name="keywords" content="최상위권, 최상위권 이과 전문관N, 이과 전문관" />
	<meta name="description" content="러셀이 만든 신개념 융합형 종합반 최상위권 이과 전문관N" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="최상위권 이과 전문관N">
	<meta property="og:description" content="최상위권, 최상위권 이과 전문관N, 이과 전문관" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="style.css" />
	<link rel="stylesheet" type="text/css" href="/common/css/2022/table.css" />
</head>
<%
	if IsDevSvr() = false then '사용안하는 페이지로 메인 페이지로 이동
		response.redirect "http://russel.megastudy.net/intro/gateway.asp"
	end if
%>
<body>
	<!-- 공통 최상단 // -->
	<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
	<!-- // 공통 최상단 -->

	<!-- topclass-wrap -->
	<div class="topclass-wrap">

		<!-- section-1-1 : visual -->
		<div class="visual section">
			<div class="v-bg">
				<div><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/visual_bg01.jpg" alt="" /></div>
				<div><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/visual_bg02.jpg" alt="" /></div>
				<div><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/visual_bg03.jpg" alt="" /></div>
			</div>
            <div class="inner">
                <div class="v-tit">
                    <p class="stxt"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/visual_stit.png" alt="" /></p>
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/visual_tit.png" alt="" /></p>
                    <p class="ico-n"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/img_n.png" alt="" /></p>
                </div>
            </div>
		</div>
		<!-- //section-1-1 : visual -->

		<!-- section-1-2 : 새로운 수능 종합반 -->
		<div class="section cont02">
			<div class="cont-img"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/sec02_img.jpg" alt="" /></div>
			<div class="cont-one"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/sec02_img02.png" alt="" /></div>
			<div class="cont-txt"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/sec02_img03.png" alt="" /></div>
		</div>
		<!-- //section-1-2 : 새로운 수능 종합반 -->

		<!-- //부천 최상위권 이과 전문관N -->
		<!-- 중계 최상위권 이과 전문관N -->
		<div class="section cont04">
			<div class="inner">
				<div class="flag"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/jg_flag.jpg" alt="" /></div>
				<p class="sec-tit"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/jg_tit.png" alt="" /></p>
				<div class="sec-con"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/jg_con.png" alt="" /></div>
				<p class="sec-stit"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/jg_teacher_tit.png" alt="" /></p>
			</div>
        	<!--#include virtual="/common/inc/t_list/t_list_fullCom_jg.asp" -->
			
		</div>
		<!-- // 중계 최상위권 이과 전문관N -->
		<div class="section cont05">
			<div class="inner02 txt_center">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/cont02_jg_img.jpg" alt="" /></p>
			</div>
		</div>
		<!-- 대구 최상위권 이과 전문관N -->
		<div class="section cont06">
			<div class="inner">
				<div class="flag"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/dg_flag.jpg" alt="" /></div>
				<p class="sec-tit"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/dg_tit.png" alt="" /></p>
				<p class="sec-stit"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/dg_teacher_tit.png" alt="" /></p>
			</div>
        	<!--#include virtual="/common/inc/t_list/t_list_fullCom_dg.asp" -->
			<div class="inner pt0">
				<div class="sec-con pt0"><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/dg_con.png" alt="" /></div>
			</div>
		</div>
		<!-- // 대구 최상위권 이과 전문관N -->
	
		<!-- 모집안내 -->
		<div class="section cont07">
			<div class="inner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/cont07_tit.png" alt="" /></p>
				<ul class="n-campus-list">
					<li>
						<p>4년 연속 강북 지역<br>
							최상위권 입결 성장률 1위
						</p>
						<div>
							<dl>
								<dt>러셀 <strong>중계</strong> <span class="icon-new"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" /></span></dt>
								<dd>02)6316-1010</dd>
							</dl>
							<a href="https://russeljg.megastudy.net/russel_jg/2023/top_class/index.asp" target="_blank">바로가기 &gt;</a>
						</div>
					</li>
					<li>
						<p>재수종합반(우선선발)<br>
							사전예약 마감
						</p>
						<div>
							<dl>
								<dt>러셀 <strong>대구</strong> <span class="icon-new"><img src="<%=Application("img_path_russel")%>/intro/2023/first/ic_new.gif" alt="new" /></span></dt>
								<dd>053)291-1010</dd>
							</dl>
							<a href="https://russeldg.megastudy.net/russel_dg/2023/regular_overall/index.asp" target="_blank">재수종합반 &gt;</a>
							<a href="https://russeldg.megastudy.net/russel_dg/2023/half_overall/index.asp" target="_blank">반수종합반 &gt;</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- banner -->
			<div class="bottom-banner">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/top_class/btm_banner.png" alt="" /></p>
			</div>
			<!-- //banner -->
		</div>
		<!-- //모집안내 -->
		
	</div>
	<!-- //topclass-wrap -->
	
	<!--  공통 하단 //-->
	<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
	<!--  // 공통 하단-->

	<script src="./ui.js"></script>
</body>
</html>
