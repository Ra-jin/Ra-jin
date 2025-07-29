<!-- wrap-top-gr -->
<div class="container wrap-top-gr">
    <p class="img">
    <% If isCore = 1 Then ' 코어 %>
    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/tit01_01_core.jpg" alt="" />
    <% Else %>
    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/tit01_01.jpg" alt="" />
    <% End If %>
    </p>
    <!-- bar-graph -->
    <div class="bar-graph">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/gr_01_01.jpg" alt="" /></p>
        <p class="img-arr"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/img_arr.png" alt="" /></p>
        <div class="txt-per"><p><strong>194.7%</strong>증가</p></div>
    </div>
    <div class="bar-graph">
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/gr_01_02.jpg" alt="" /></p>
        <p class="img-arr"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/img_arr.png" alt="" /></p>
        <div class="txt-per"><p><strong>181.1%</strong>증가</p></div>
    </div>
    <!-- //bar-graph -->
    <ul class="list-bullet">
        <li>바른공부 자습전용관 2022학년도  재학생 정규반 재원생 중 2022 평가원 모의평가 및 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과</li>
    </ul>

    <!-- slide-student -->
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/tit01_02.jpg" alt="" /></p>
    <div class="swiper-container slide-student regularGo-slide">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_student_01.jpg" alt="" /></div>
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_student_02.jpg" alt="" /></div>
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_student_03.jpg" alt="" /></div>
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_student_04.jpg" alt="" /></div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <ul class="list-bullet">
        <li>바른공부 자습전용관 2022학년도  재학생 정규반 재원생 중 2022 평가원 모의평가 및 수능 성적/등급(국수탐(2)) 확인이 가능한 자연계 재원생 분석 결과 </li>
    </ul>
    <!-- //slide-student -->
</div>
<!-- //wrap-top-gr -->

<!-- slide-system -->
<div class="container slide-system">
    <p class="img">
        <% If isCore = 1 Then ' 코어 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/tit02_core.jpg" alt="" />
        <% Else %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/tit02.jpg" alt="" />
        <% End If %>
    </p>

    <div class="swiper-container slideSystem regularGo-slide">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system_01.jpg" alt="" /></div>
            <% If isCore = 1 Then ' 코어 %>
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_dj/2023/regular_go/slide_system_02.jpg" alt="" /></div>
            <% Else %>
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system_02.jpg" alt="" /></div>
            <% End If %>
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system_03.jpg" alt="" /></div>
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system_04.jpg" alt="" /></div>
            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system_05.jpg" alt="" /></div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>
<!-- //slide-system -->

<!-- 시스템 01 -->
<p class="img slide-system-end"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/system01_tit.jpg" alt="" /></p>
<% If isCore = 1 Then ' 코어 %>
<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/core_dj/2023/regular_go/system01_img.jpg" alt="" /></p>
<% Else %>
<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/system01_img.jpg" alt="" /></p>
<% End If %>
<!-- //시스템 01 -->

<!-- 시스템 02 -->
<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/system02_tit.jpg" alt="" /></p>
<!-- 선생님 슬라이드 -->
<!-- #include virtual = "/intro/2023/regular_go/teacher_slide.asp" -->
<!-- 단과 링크 영역 -->
<!-- #include virtual = "/intro/2023/regular_go/danka.asp" -->
<!-- //시스템 02 -->


<!-- 시스템 03 -->
<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/system03_tit.jpg" alt="" /></p>
<!-- 연간 일정 -->
<!-- #include virtual = "/intro/2023/regular_go/schedule.asp" -->
<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/system03_img.jpg" alt="" /></p>
<!-- //시스템 03 -->

<!-- 시스템 04 -->
<p class="img system04">
    <% If isCore = 1 Then ' 코어 %>
    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/system04_tit_core.jpg" alt="" />
    <% Else %>
    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/system04_tit.jpg" alt="" />
    <% End If %>
</p>
<div class="system04-slide-wrap">
    <div class="swiper-container system04-slide">
        <div class="swiper-wrapper">            
            <% If isCore = 1 OR campus_code = "CD0342" Then '코어/대구 %>
            <div class="swiper-slide">                
                <p class="img">
                    <% If isCore = 1 Then '코어 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system04_weekly.jpg" alt="" />
                    <% else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system04_weekly_dg.jpg" alt="" />
                    <% End If %>
                </p>
                <ul class="list-dot">
                    <li>단원별 필수 문항과 기출 변형+킬러문항으로 구성</li>
                    <li>러셀학원/메가스터디인강 선생님들이 직접 출제</li>
                    <li>1월~수능까지 매주 시행</li>
                    <li>실전같은 긴장감 유지</li>
                </ul>
                <div class="btn goto-btn"><a href="/intro/2022/weekly/index.asp">자세히 보기</a></div>
            </div>
            <% End If %>
            <div class="swiper-slide">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system04_quel.jpg" alt="" /></p>
                <ul class="list-dot">
                    <li>평가원 최신 경향 반영</li>
                    <li>과목별 전문 출제진 개발, 메가스터디 강사진 검토</li>
                    <li>메가스터디 온/오프 선생님 해설강의</li>
                    <li>평가원 형식/내용 복제</li>
                    <li>온라인 풀서비스 제공, 성적표 및 해설지 제공</li>
                    <li>국수영탐ⅠⅡ구성</li>
                    <li>최상위권과의 경쟁(러셀학원, 메가스터디학원 재원생 응시)</li>
                </ul>
                <div class="btn goto-btn"><a href="/event/2021/quel/default.asp">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system04_premium.jpg" alt="" /></p>
                <ul class="list-dot">
                    <li>평가원/교육청 모의고사 출제 경험이 있는 집필진</li>
                    <li>국어, 수학, 영어, 한국사, 탐구 영역까지 전과목 구성</li>
                    <li>전국 최다 인원 응시로 정확한 객관적인 위치 확인</li>
                    <li>연간 총 7회 구성으로 실전 훈련 및 감각 유지</li>
                </ul>
                <div class="btn goto-btn"><a href="/intro/2022/premium/index.asp">자세히 보기</a></div>
            </div>
            <div class="swiper-slide">
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/slide_system04_monthly.jpg" alt="" /></p>
                <ul class="list-dot">
                    <li>100% 자작 문항 모의고사+상세한 해설</li>
                    <li>매월 집체 모의고사, 월별 누적 개인 성적표 제공</li>
                    <li>장영진&amp;연구소의 수학 칼럼, 러셀 입시담임팀의 입시칼럼</li>
                    <li>최상위권 합격 선배 메시지</li>
                </ul>
                <div class="btn goto-btn"><a href="/intro/info/2022/monthly/index.asp">자세히 보기</a></div>
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>
<!-- //시스템 04 -->

