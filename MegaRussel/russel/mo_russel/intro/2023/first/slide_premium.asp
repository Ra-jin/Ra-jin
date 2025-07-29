<% If campus_code = "INTRO" or campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" or campus_code = "CD0342" Then '인트로/CORE광주/대전/원주/전주/창원/청주/대구 %>
<div class="premium-rolling-inner">
    <div class="swiper mySwiper premium-rolling">
        <div class="swiper-wrapper">
            <div class="swiper-slide premium-rolling"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_01.png" alt="실전모의고사"></div>
            <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '러셀대구 %>
            <div class="swiper-slide premium-rolling"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_pm_02.png" alt="Weekly모의고사"></div>
            <% Else %>
            <div class="swiper-slide premium-rolling"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_02.png" alt="Weekly모의고사"></div>
            <% End If %>
            <div class="swiper-slide premium-rolling"><img style="width: 80%;" class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_03.png" alt="장영진월간학습지"></div>
            <div class="swiper-slide premium-rolling"><img style="width: 80%;" class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_04.png" alt="러셀학습플래너"></div>
            <div class="swiper-slide premium-rolling"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_05.png" alt="매일영단어&영어듣기"></div>
            <div class="swiper-slide premium-rolling"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_06.png" alt="일일수학30제"></div>
        </div>
    </div>
</div>
<% Else %>
<div class="premium-rolling-inner">
    <div class="swiper mySwiper premium-rolling">
        <div class="swiper-wrapper">
            <div class="swiper-slide premium-rolling"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_01.png" alt="실전모의고사"></div>
            <div class="swiper-slide premium-rolling"><img style="width: 80%;" class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_03.png" alt="장영진월간학습지"></div>
            <div class="swiper-slide premium-rolling"><img style="width: 80%;" class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_04.png" alt="러셀학습플래너"></div>
            <div class="swiper-slide premium-rolling"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_05.png" alt="매일영단어&영어듣기"></div>
            <div class="swiper-slide premium-rolling"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/pm_06.png" alt="일일수학30제"></div>
        </div>
    </div>
</div>
<% End If %>