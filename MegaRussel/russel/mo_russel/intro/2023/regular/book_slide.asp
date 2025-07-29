<% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" Then '코어광주/대전/원주/전주/창원/청주 %>
<div class="book-wrap">
    <div class="swiper mySwiper book">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book03.jpg" alt="weekly 모의고사">
                <div class="btn detail-btn"><a href="<%=book_weekly_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book01.jpg" alt="quel 모의고사">
                <div class="btn detail-btn"><a href="<%=book_quel_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book02.jpg" alt="메가대성 프리미엄 모의고사">
                <div class="btn detail-btn"><a href="<%=book_premium_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book04.jpg" alt="장영진 월간학습지">
                <div class="btn detail-btn"><a href="<%=book_monthly_url%>">자세히 보기</a></div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination book page"></div>
</div>
<% ElseIf campus_code = "INTRO" Then '인트로 %>
<div class="book-wrap">
    <div class="swiper mySwiper book">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book01.jpg" alt="quel 모의고사">
                <div class="btn detail-btn"><a href="<%=book_quel_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book02.jpg" alt="메가대성 프리미엄 모의고사">
                <div class="btn detail-btn"><a href="<%=book_premium_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book03.jpg" alt="weekly 모의고사">
                <div class="btn detail-btn"><a href="<%=book_weekly_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book04.jpg" alt="장영진 월간학습지">
                <div class="btn detail-btn"><a href="<%=book_monthly_url%>">자세히 보기</a></div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination book page"></div>
</div>
<% ElseIf campus_code = "CD0342" Then '러셀대구 %>
<div class="book-wrap">
    <div class="swiper mySwiper book">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book01.jpg" alt="quel 모의고사">
                <div class="btn detail-btn"><a href="<%=book_quel_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book02.jpg" alt="메가대성 프리미엄 모의고사">
                <div class="btn detail-btn"><a href="<%=book_premium_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/dg_cont07_book03.jpg" alt="weekly 모의고사">
                <div class="btn detail-btn"><a href="<%=book_weekly_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book04.jpg" alt="장영진 월간학습지">
                <div class="btn detail-btn"><a href="<%=book_monthly_url%>">자세히 보기</a></div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination book page"></div>
</div>
<% Else %>
<div class="book-wrap">
    <div class="swiper mySwiper book">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book01.jpg" alt="quel 모의고사">
                <div class="btn detail-btn"><a href="<%=book_quel_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book02.jpg" alt="메가대성 프리미엄 모의고사">
                <div class="btn detail-btn"><a href="<%=book_premium_url%>">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/cont07_book04.jpg" alt="장영진 월간학습지">
                <div class="btn detail-btn"><a href="<%=book_monthly_url%>">자세히 보기</a></div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination book page"></div>
</div>
<% End If %>