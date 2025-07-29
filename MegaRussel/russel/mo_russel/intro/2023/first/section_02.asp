<div class="section sec2">
    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec2_tit.png" alt="최상위권 대입 성공의 목표를 이루었습니다"></p>
    <div class="inner">
        <div class="review-box">
            <div class="review-rolling-inner">
                <div class="swiper mySwiper review-rolling">
                    <div class="swiper-wrapper">
                        <% If campus_code = "CD0342" Then '러셀대구%>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_sec2_review01.png" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_sec2_review02.png" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_sec2_review03.png" alt=""></div>
                        <% Else %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec2_review01.png" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec2_review02.png" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec2_review03.png" alt=""></div>
                        <% End If %>
                    </div>
                    <div class="swiper-pagination review-rolling page"></div>
                </div>
            </div>
        </div>
    </div>

    <!--slide_goal-->
    <!-- #include virtual = "/intro/2023/first/slide_goal.asp" -->
    <!--//slide_goal-->

    <div class="btm-con">
        <p class="stxt">* 국수탐(2) 백분위 합 기준</p>
        <% If campus_code = "CD0342" Then '러셀대구%>
        <p class="btxt">재도전을 결심했다면<br>
            <strong>경쟁자보다 앞설 수 있는 골든타임</strong>을 놓치지 마세요!<br>
            러셀 대구에서 여러분의 <br><strong>최상위권 대입 성공이 더 확실</strong>해 집니다.
        </p>
        <% Else %>
        <p class="btxt">재도전을 결심했다면<br>
            <strong>경쟁자보다 앞설 수 있는 골든타임</strong>을 놓치지 마세요!<br>
            여러분의 <strong>최상위권 대입 성공이 더 확실</strong>해 집니다.
        </p>
        <% End If %>
    </div>
</div>