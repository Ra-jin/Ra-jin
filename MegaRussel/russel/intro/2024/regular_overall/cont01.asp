
<div class="cont js-cont <%=campusName%>">
    <!-- cont01 -->
    <div class="cont01">
        <% If sCampusCode = "CD0257" Then '중계 %>
        <p data-aos="fade-up" class="mb80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont01_tit01.png" alt="최상위권 대입성공으로 증명된 러셀이 다양한 수험생의 고민을 담아 새로운 수능 종합반을 시작합니다." /></p>
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont01_img01.png" alt="" /></div>
            <p data-aos="fade-up" class="mb60 mt90"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont01_tit02.png" alt="새로운 수능 종합반의 기준 최상위권 이과전문관N 러셀 재수종합반" /></p>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont01_img02.png" alt="" /></div>
        </div>
        <% Else %>
        <p data-aos="fade-up" class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont01_tit01.png" alt="최상위권 대입성공으로 증명된 러셀이 다양한 수험생의 고민을 담아 새로운 수능 종합반을 시작합니다." /></p>
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont01_img01.png" alt="" /></div>
            <p data-aos="fade-up" class="mb60 mt90"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont01_tit02.png" alt="새로운 수능 종합반의 기준 최상위권 이과전문관N 러셀 재수종합반" /></p>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont01_img02.png" alt="" /></div>
        </div>
        <% end if %>
    </div>
    <!-- //cont01 -->
    
    <!-- cont02 -->
    <div class="cont02">
        <p data-aos="fade-up">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont02_tit.png" alt="최상위권 이과전문관N 러셀 재수종합반 기존 종합반과 어떻게 다를까요?" />
            <% Else %>
            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont02_tit.png" alt="최상위권 이과전문관N 러셀 재수종합반 기존 종합반과 어떻게 다를까요?" />
            <% end if %>
        </p>
        <% If sCampusCode = "CD0342" OR sCampusCode = "CD0249" OR sCampusCode = "CD0349" OR sCampusCode = "CD0257" Then '대구/영통/울산/중계 %>
        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont02_img.jpg" alt="" /></div>
        <% Else %>
        <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont02_img.jpg" alt="" /></div>
        <% End If %>
    </div>
    <!-- //cont02 -->
</div>