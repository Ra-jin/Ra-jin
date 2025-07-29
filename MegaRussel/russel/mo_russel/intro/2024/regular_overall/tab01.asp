
<div class="cont js-cont-wrap <%=campusName%>">
    <!-- cont01 -->
    <div class="cont01">
        <div class="inner">
            <% If campus_code = "CD0257" Then '중계 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont01_tit01.jpg" alt="목표 대학 합격을 증명한 러셀이 다양한 수험생의 고민을 담아 새로운 수능 종합반을 시작합니다." /></p>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont01_img01.jpg" alt="" /></div>
            <p class="mb60 mt90"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_tit02.jpg" alt="새로운 수능 종합반의 기준 최상위권 이과전문관N 러셀 재수종합반" /></p>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont01_img02.jpg" alt="" /></div>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_tit01.jpg" alt="최상위권 대입성공으로 증명된 러셀이 다양한 수험생의 고민을 담아 새로운 수능 종합반을 시작합니다." /></p>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_img01.jpg" alt="" /></div>
            <p class="mb60 mt90"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_tit02.jpg" alt="새로운 수능 종합반의 기준 최상위권 이과전문관N 러셀 재수종합반" /></p>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_img02.jpg" alt="" /></div>
            <% End If %>
        </div>
    </div>
    <!-- //cont01 -->
    
    <!-- cont02 -->
    <div class="cont02">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont02_tit.jpg" alt="최상위권 이과전문관N 러셀 재수종합반 기존 종합반과 어떻게 다를까요?" /></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont02_tit.jpg" alt="최상위권 이과전문관N 러셀 재수종합반 기존 종합반과 어떻게 다를까요?" /></p>
        <% End If %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont02_img.jpg" alt="" /></div>
    </div>
    <!-- //cont02 -->
</div>
