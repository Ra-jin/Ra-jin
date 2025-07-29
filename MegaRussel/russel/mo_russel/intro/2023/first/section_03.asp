<div class="section sec3">
    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec3_tit.png" alt="재수생 맞춤 시스템"></p>
    <div class="inner">
        <!--바른공부 자습전용관-->
        <div class="system-box system1">
            <p class="tit"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/systemBox_tit01.png" alt=""></p>
            <div class="system-con">
                <div class="swiper-pagination baja-rolling page"></div>
                <div class="baja-rolling-inner">
                    <div class="swiper baja-rolling">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec3_baga_01.png" alt="집단적인 면학분위기">
                            </div>
                            <div class="swiper-slide">
                                <% If isCore = 1 Then '코어 %>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/core_sec3_baga_02.png" alt="학습 동선 최소화">
                                <% ElseIf campus_code = "CD0342" Then '러셀대구 %>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_sec3_baga_02.jpg" alt="학습 동선 최소화">
                                <% Else %>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec3_baga_02.png" alt="학습 동선 최소화">
                                <% End If %>
                            </div>
                            <div class="swiper-slide">
                                <img class="time-btn" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec3_baga_03.png" alt="최대 자습 시간 확보">
                                <span class="bt-tt js-mask">바른공부 자습전용관 표준시간표</span>
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/sec3_baga_04.png" alt="개방형 구조">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 바자관 시간표 레이어 -->
            <div class="layer-tt">
                <p class="mb20">바른공부 자습전용관 표준시간표</p>

                <!--time_tbl-->
                <!-- #include virtual="/intro/2023/first/time_tbl.asp" -->
                <!--//time_tbl-->

                <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
            </div>
            <!-- //바자관 시간표 레이어 -->
        </div>
        <!--//바른공부 자습전용관-->

        <!--최상위권 수준별 맞춤 단과-->
        <div class="system-box system2">
            <p class="tit"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/systemBox_tit02.png" alt=""></p>

            <!--slide_teacher-->
            <!-- #include virtual = "/intro/2023/first/slide_teacher.asp" -->
            <!--//slide_teacher-->

            <!--danka-->
            <!-- #include virtual = "/intro/2023/first/danka.asp" -->
            <!--//danka-->

        </div>
        <!--//최상위권 수준별 맞춤 단과-->

        <!--입시 담임선생님의 철저한 관리-->
        <div class="system-box system3">
            <p class="tit"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/systemBox_tit03.png" alt=""></p>
            <div class="system-tab-wrap">
                <div class="system-tab">
                    <a href="" class="on">학습관리</a>
                    <a href="">입시관리</a>
                    <a href="">생활관리</a>
                </div>
                <div class="system-cont on">
                    <div class="rolling-inner">
                        <div class="swiper rolling-slide">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_study01.png" alt=""></div>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_study02.png" alt=""></div>
                                <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" Then 'CORE광주/대전/원주/전주/창원/청주 %>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/core_tab_study03.png" alt=""></div>
                                <% Else %>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_study03.png" alt=""></div>
                                <% End If %>
                            </div>
                            <div class="swiper-pagination page"></div>
                        </div>
                    </div>
                    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '러셀대구 %>
                    <p class="reviewImg"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_tab_study_review.png" alt=""></p>
                    <% Else %>
                    <p class="reviewImg"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_study_review.png" alt=""></p>
                    <% End If %>
                </div>
                <div class="system-cont">
                    <div class="rolling-inner">
                        <div class="swiper rolling-slide">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_exam01.png" alt=""></div>
                                <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" Then 'CORE광주/대전/원주/전주/창원/청주 %>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/core_tab_exam02.png" alt=""></div>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/core_tab_exam03.png" alt=""></div>
                                <% Else %>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_exam02.png" alt=""></div>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_exam03.png" alt=""></div>
                                <% End If %>
                            </div>
                            <div class="swiper-pagination page"></div>
                        </div>
                    </div>
                    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '러셀대구 %>
                    <p class="reviewImg"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_tab_exam_review.png" alt=""></p>
                    <% Else %>
                    <p class="reviewImg"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_exam_review.png" alt=""></p>
                    <% End If %>
                </div>
                <div class="system-cont">
                    <div class="rolling-inner">
                        <div class="swiper rolling-slide">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_life01.png" alt=""></div>
                                <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" Then 'CORE광주/대전/원주/전주/창원/청주 %>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/core_tab_life02.png" alt=""></div>
                                <% Else %>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_life02.png" alt=""></div>
                                <% End If %>
                                <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '러셀대구 %>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_tab_life03.png" alt=""></div>
                                <% Else %>
                                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_life03.png" alt=""></div>
                                <% End If %>
                            </div>
                            <div class="swiper-pagination page"></div>
                        </div>
                    </div>
                    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '러셀대구 %>
                    <p class="reviewImg"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/dg_tab_life_review.png" alt=""></p>
                    <% Else %>
                    <p class="reviewImg"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/tab_life_review.png" alt=""></p>
                    <% End If %>
                </div>
            </div>
        </div>
        <!--//입시 담임선생님의 철저한 관리-->

        <!--프리미엄 콘텐츠-->
        <div class="system-box system4">
            <p class="tit"><img class="img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/first/systemBox_tit04.png" alt=""></p>

            <!--slide_premium-->
            <!-- #include virtual = "/intro/2023/first/slide_premium.asp" -->
            <!--//slide_premium-->

            <% If campus_code = "INTRO" Then '인트로 %>
            <div class="btm-con content">
                <p>* 각 학원에서 제공되는 콘텐츠는 상이할 수 있습니다.</p>
            </div>
            <% End If %>
        </div>
        <!--//프리미엄 콘텐츠-->
    </div>
</div>