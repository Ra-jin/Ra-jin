<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
</head>
<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">학원시설</strong>
</h2>

<section class="sub-wrap">
    <!-- 01 -->
    <div class="facility-info">
        <div class="txt f-box mt0">
            최상위권 전문관 러셀 기숙학원은 서울에서 약 1시간 거리인 경기도 용인(원삼면)에 위치하고 있으며, 2023년 신축 설계하여 만든 1천명 수용 가능한 최신 프리미엄 기숙학원입니다.
        </div>
        <div class="txt f-box">
            <strong>교육환경</strong>
        </div>
        <div class="swiper-container js-fac-slide f-box">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_1_1.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_1_2.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_1_18.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_1_3.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_6.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_7.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_8.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_9.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_10.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_11.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_12.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_13.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_14.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_15.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_1_16.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_1_17.jpg" alt="" /></div>
            </div>
            <!-- bt navi -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>

        <div class="txt f-box">
            <strong>생활환경</strong>
        </div>
        <div class="swiper-container js-fac-slide f-box">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_1.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_7.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_2_8.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_9.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_20.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_21.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_10.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_11.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_12.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_13.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_2_14.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_2_15.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_2_16.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_sm/info/fac_2_18.jpg" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/fac_2_19.jpg" alt="" /></div>
            </div>
            <!-- bt navi -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </div>
    <!-- //01 -->
</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script>

    $(function(){
        $('.f-box').addClass("active")
    })

    $(function(){
        $(".js-fac-slide").each(function(index){
            var $this = $(this);
            var slide = $this.addClass("js-slide-" + index+1);

            var swiper = new Swiper(slide, {
                loop: true,
                observer: true,
                observeParents: true,
                slidesPerView : 1,
                slidesPerGroup :1,
                speed : 500,
                autoplay: {
                    delay: 3000,
                    disableOnInteraction: false,
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                }
            });
        });
    });
</script>
</body>
</html>