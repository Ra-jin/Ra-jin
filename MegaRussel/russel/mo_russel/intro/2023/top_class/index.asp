<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="최상위권 이과 전문관N" />
    <meta name="keywords" content="최상위권, 최상위권 이과 전문관N, 이과 전문관" />
	<meta name="description" content="러셀이 만든 신개념 융합형 종합반 최상위권 이과 전문관N" />
    <link rel="stylesheet" type="text/css" href="./topclass.css" media="all" />
</head>
<%
	if IsDevSvr() = false then '사용안하는 페이지로 메인 페이지로 이동
		response.redirect "https://mrussel.megastudy.net/intro/intro.asp"
	end if
%>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">러셀 재수종합반</strong>
</h2>
<section class="sub-wrap">
	<!-- topclass-wrap -->
    <div class="topclass-wrap">
        <div class="visual">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/visual_01.jpg" alt=""></p>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/visual_tit.png" alt=""></p>
            <p class="tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/visual_n.png" alt=""></p>
        </div>
        <div class="fixed-bar">
            <a href="#">모집안내 바로가기</a>
        </div>

        <div class="cont01">
            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/cont01_img01.jpg" alt="최상위권 대입성공으로 증명된 러셀이 만든 새로운 수능 종합반을 시작합니다."></div>
            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/cont01_img02.jpg" alt=""></div>
            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/cont01_img03.jpg" alt=""></div>
        </div>
        <div class="cont03">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/jg_tit.png" alt="러셀 중계 신개념 융합형 종합반 최상위권 이과 전문관N"></p>
            <div class="inner">
                <!-- merit-slide -->
                <div class="swiper-container merit-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/jg_img01.png" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/jg_img02.png" alt="" /></div>
                    </div>
                    <div class="swiper-pagination page-01"></div>
                </div>
                <!-- //merit-slide -->
            </div>
            <!-- 강사진 -->
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/jg_stit.jpg" alt="러셀 대치, 강남 및 메가스터디 인강 출강하는 메가스터디 온,오프 넘버원 강사진"></p>
            <!-- #include virtual = "/inc/t_list/t_list_fullCom_jg.asp" -->
        </div>
        <div class="cont04">
            <div class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/cont04_tit.jpg" alt="재원생 전용 프리미엄 시설 업그레이드"></div>
            <div class="inner">
                <!-- merit-slide -->
                <div class="swiper-container merit-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/cont04_img01.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/cont04_img02.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/cont04_img03.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/cont04_img04.jpg" alt="" /></div>
                    </div>
                    <div class="swiper-pagination page-01"></div>
                </div>
                <!-- //merit-slide -->
            </div>
        </div>
        <div class="cont05">
            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/dg_tit.png" alt="러셀 대구, 대구/경북 최대규모 재수종합반 최상위권 이과 전문관N"></p>
            <!-- 강사진 -->
            <!-- #include virtual = "/inc/t_list/t_list_fullCom_dg.asp" -->
            <div class="inner">
                <!-- merit-slide -->
                <div class="swiper-container merit-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/dg_img01.jpg" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/top_class/dg_img02.jpg" alt="" /></div>
                    </div>
                    <div class="swiper-pagination page-01"></div>
                </div>
                <!-- //merit-slide -->
            </div>
        </div>
        <div class="cont06" id="cont">
            <div class="inner">
                <p class="recruit-tit">러셀 <span>최상위권 이과 전문관N</span><br>모집 안내</p>
            </div>
            <!--학원별 모집안내-->
            <!-- #include virtual = "/inc/campus_list_link.asp" -->
            <!--//학원별 모집안내-->
        </div>
        <div class="bottom-banner">
            <p>러셀 <strong>최상위권 이과 전문관N</strong>은<br><strong>서연고&middot;의치한약수 대입 성공의 기준</strong>이 됩니다.</p>
        </div>
		<p><a href="https://russel.megastudy.net/intro/2023/top_class/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>

    </div>
	<!-- //topclass-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script src="./ui.js"></script>
</body>
</html>