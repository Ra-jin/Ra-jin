<div class="cont js-cont-wrap <%=campusName%>">

    <div class="cont04 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/cont04_tit.jpg" alt=""></p>

        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
        <a class="i-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/ico_bus.png" alt=""></a>
        <% End If %>

        <div class="inner">
            <div class="studyHall-wrap">
                <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0248" or campus_code = "CD0244" Then '코어/대구/울산/평촌/분당 %>
                <div class="studyHall-navi core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">바자관 <br> 표준 시간표</div>
                        <div class="swiper-slide">학습에 <br> 최적화된 환경</div>
                        <div class="swiper-slide">자체 식당<br>운영</div>
                    </div>
                </div>
                <% Else %>
                <div class="studyHall-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">바자관<br>표준 시간표</div>
                        <div class="swiper-slide">학습에 <br> 최적화된 환경</div>
                    </div>
                </div>
                <% End If %>
                <div class="studyHall-slide swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                건강한 경쟁을 통한  <br>
                                <strong>집단적인 면학분위기</strong>                               
                            </p>
                            <p class="stit">
                                <strong><% If campus_code <> "CD0257" Then '중계 제외 %>최상위권<% End If %> 학생들의 학구열</strong>을 체감할 수 있는 <br>
                                <strong>개방형 구조</strong>로 학습 동기 부여 및 긴장감 유지
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/studyHall_img01.jpg" alt=""></p>
                        </div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                이동에 낭비하는 시간 없이  <br>
                                <strong>학습 동선 최소화 </strong>                               
                            </p>
                            <p class="stit">
                                한 건물 내에서 <strong>수업-자습-식사를  <br>
                                해결</strong>하는 효율적인 동선 <br>
                                <strong>충분한 자습시간 확보, 학습 집중력 향상</strong>
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/studyHall_img02.jpg" alt=""></p>
                        </div>
                        <!-- 바자관 표준 시간표 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                충분한 자습시간 확보  <br>
                                <strong>표준 시간표</strong>                                
                            </p>
                            <p class="stit">
                                <strong><% If campus_code = "CD0244" Then '분당 %>재학생(고3)<% Else %>재학생<% End If %>의 일정을 고려한 학습 스케줄 운영,</strong> <br>
                                수능과 유사한 시간표로 <strong> <br>
                                학습 리듬을 수능에 최적화</strong>
                            </p>
                            <p class="schedule_img">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/studyHall_img03.jpg" alt="">
                                <a href="javascript:void(0)" class="schedule_link"></a>
                            </p>
                        </div>
                        <!-- 학습에 최적화된 환경 -->
                        <div class="swiper-slide <%=last%>">
                            <p class="tit">
                                학습에만 집중할 수 있는 <br>
                                <strong>최적화된 공간</strong>                                
                            </p>
                            <p class="stit">
                                개방형 구조, 벽면 통유리, 쾌적한 공간,  <br>
                                수업/자습 공간 분리 등 <br>
                                <strong>학습 효율성을 높이기 위해 설계된 학습시설</strong>
                            </p>
                            <% If campus_code = "CD0341" Then '코어대전 %>
                            <div class="s-slide swiper-container type01">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/studyHall_img04_1.jpg" alt=""></p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/studyHall_img04_2.jpg" alt=""></p>
                                    </div>
                                </div>
                                <div class="swiper-pagination p-type01"></div>
                            </div>
                            <% Else %>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/studyHall_img04.jpg" alt=""></p>
                            <% End If %>
                        </div>

                        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0248" or campus_code = "CD0244" Then '코어/대구/울산/평촌/분당 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide <%=last%>">
                            <% If campus_code = "CD0248" Then '평촌 %>
                            <p class="tit">
                                건강과 조화를 이루는 균형잡힌 식단, <br>
                                <strong>자체 식당 운영</strong>
                            </p>
                            <% Else %>
                            <p class="tit">
                                건강하고 슬기로운 식생활 <br>
                                <strong>자체 식당 운영</strong>
                            </p>
                            <% End If %>
                            <p class="stit">
                                자체 식당 운영으로 <strong>건강하고 <br>
                                균형 잡힌 식단 제공, <br>
                                식사를 위한 이동 시간을 줄여  <br>
                                학습에 더욱 몰입 가능</strong>
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/studyHall_img05.jpg" alt=""></p>
                        </div>
                        <% End If %>
                    </div>
                </div>

                <!-- 바자관 표준 시간표 -->
                <!-- #include virtual = "/intro/2025/regular_go/baja_time_table.asp" -->
                <!-- //바자관 표준 시간표 -->
            </div>
            <% If campus_code = "INTRO" Then '인트로 %>
            <p class="r-txt">※ 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</p>
            <% End If %>
            
            <a class="btn-common" href="<%=studyHall_btn_url%>"><%=studyHall_btn%></a>
        </div>

    </div>
    <div class="cont05 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/cont05_tit.jpg" alt=""></p>
        <div class="danka-list">
            <ul>
                <li>
                    <p>
                        <%=danka_list01%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list02%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list03%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list04%>
                    </p>
                </li>
            </ul>
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/regular_go/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->

        <div class="danka-wrap">
            <div class="box">
                <p>
                    1년 커리큘럼으로 수능까지 체계적인 학습 <br>
                    <strong>정규&middot;특강 단과</strong>
                </p>
                <a onclick="<%=regular_url%>">바로가기</a>
            </div>
            <% If campus_code <> "CD0001" and campus_code <> "CD0245" and campus_code <> "CD0341" and campus_code <> "CD0244" and campus_code <> "CD0340" and campus_code <> "CD0249" Then '대치/목동/코어대전/분당/코어광주/영통 제외 %>
            <div class="box">
                <% If campus_code = "CD0246" Then '센텀 %>
                <p>
                    1등급 실력을 위한 내신/수능 기본기 완성 <br>
                    <strong>내신&middot;수능 대비 강좌</strong>
                </p>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <p>
                    내신 1등급을 위한 학교별/수준별 내신 대비<br>
                    <strong>내신 대비 강좌</strong>
                </p>
                <% Else %>
                <p>
                    내신 1등급을 위한 학교별/수준별 내신 대비<br>
                    <strong>내신 대비 강좌</strong>
                </p>
                <% End If %>
                <a onclick="<%=naesin_url%>">바로가기</a>
            </div>
            <% End If %>

            <% If campus_code = "CD0249" Then '영통 %>
            <!-- <div class="box">
                <p>
                    내신 1등급을 위한 학교별/수준별 내신 대비<br>
                    <strong>내신 대비 강좌</strong>
                </p>
                <div class="a-wrap">
                    <a onclick="<%=naesin_url%>">[중3&middot;고1&middot;고2]</a>
                    <a onclick="<%=naesin_url02%>">[고3]</a>
                </div>
            </div> -->

            <div class="box">
                <p>
                    내신 1등급을 위한 학교별/수준별 내신 대비<br>
                    <strong>[고1&middot;고2] 내신 대비 강좌</strong>
                </p>
                <a onclick="<%=naesin_url%>">바로가기</a>
            </div>
            <div class="box">
                <p>
                    최상위권 달성을 위한 수준별 고등&middot;내신 대비<br>
                    <strong>[중3] 고등&middot;내신 대비 강좌</strong>
                </p>
                <a onclick="<%=naesin_url02%>">바로가기</a>
            </div>

            <% End If %>

        </div>
    </div>
    <div class="cont06 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/cont06_tit.jpg" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/cont06_tit.jpg" alt=""></p>
        <% End If %>

        <div class="inner">
            <div class="main-tit">
                학교와 병행해야 하는 <%=v_txt_grade%>을 위한 <br>
                <strong><%=v_txt_grade%> 전문 담임선생님의 <br>
                방과 후/주말 집중 관리</strong>
            </div>

            <div class="manage-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">입시관리</div>
                    <div class="swiper-slide">학습관리</div>
                    <div class="swiper-slide">생활관리</div>
                </div>
            </div>
    
            <div class="manage-slide swiper-container">
                <div class="swiper-wrapper">
                    <!-- 입시관리 -->
                    <div class="swiper-slide">
                        <p class="stit">입시관리</p>
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/s_slide01_img01.jpg" alt=""></p>
                        <% If campus_code = "CD0247" Then '강남 %>
                        <ul class="list-dot">
                            <li>입시 결과 및 수능 성적을 기반으로 <br> <strong>체계적인 1:1 상담</strong></li>
                            <li>재원생 입시 결과를 활용하여 <strong>개인 목표에<br> 맞춘 시기별 입시(수시/정시) 방향 제시</strong></li>
                            <li>입시특강, 전형별 설명회 등 <br><strong>최신 입시 정보 제공</strong></li>
                        </ul>
                        <% ElseIf campus_code = "CD0250" Then '부천 %>
                        <ul class="list-dot">
                            <li>개별 성적 포트폴리오 기반의 <strong>체계적, <br> 전문적 개인 맞춤 상담 진행</strong></li>
                            <li>합격생 데이터 기반으로 <strong>학생 목표에 맞춘 <br>입시 방향(수시/정시) 제시</strong></li>
                        </ul>
                        <% ElseIf campus_code = "CD0257" Then '중계 %>
                        <ul class="list-dot">
                            <li>입시 결과 및 수능 성적을 기반으로 <br> 체계적인 1:1 상담</li>
                            <li>재원생 입시 결과를 활용하여 개인 목표에<br> 맞춘 시기별 입시(수시/정시) 방향 제시</li>
                            <li>입시 특강, 전형별 설명회 등 최신 입시 정보<br> 제공</li>
                        </ul>
                        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                        <ul class="list-dot">
                            <li>수시 지원을 위한 <strong>내신 집중 관리, 학생부 설계</strong></li>
                            <li>합격생 데이터 기반으로 <strong>학생 목표에 맞춘 <br> 입시 방향(수시/정시) 제시</strong></li>
                        </ul>
                        <% ElseIf campus_code = "CD0244" Then '분당 %>
                        <ul class="list-dot">
                            <li>
                                수시 지원을 위한 <strong>학생부 설계</strong>
                            </li>
                            <li>
                                합격생 데이터 기반으로 <strong>학생 목표에 맞춘 <br>
                                입시 방향(수시/정시) 제시</strong>
                            </li>
                        </ul>
                        <% Else %>
                        <ul class="list-dot">
                            <li>
                                수시 지원을 위한 <strong>내신 집중 관리, 학생부 설계</strong>
                            </li>
                            <li>
                                합격생 데이터 기반으로 <strong>학생 목표에 맞춘 <br>
                                입시 방향(수시/정시) 제시</strong>
                            </li>
                        </ul>
                        <% End If %>
                    </div>
                    <!-- 학습관리 -->
                    <div class="swiper-slide">
                        <p class="stit">학습관리</p>
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/s_slide01_img02.jpg" alt=""></p>
                        <% If campus_code = "CD0247" Then '강남 %>
                        <ul class="list-dot">
                            <li>성적 데이터와 학습 현황 기반으로 <br><strong>과목별 보완점과 학습 방향 1:1 상담</strong></li>
                            <li><strong>목표 성적 맞춤</strong> 시기별 학습전략 제시</li>
                            <li>과목별 학습법 특강 및 설명회 제공으로<br> <strong>시기별 맞춤 학습전략 제안</strong></li>
                        </ul>
                        <% ElseIf campus_code = "CD0250" Then '부천 %>
                        <ul class="list-dot">
                            <li>학습 스케줄 및 습관을 점검하여 <strong>효율적인 <br>자습시간 관리</strong></li>
                            <li>내신/모의고사 성적 누적 관리로 <br><strong>취약점 확인 및 보완법 제안</strong></li>
                        </ul>
                        <% ElseIf campus_code = "CD0257" Then '중계 %>
                        <ul class="list-dot">
                            <li>성적 데이터와 학습 현황 기반으로 과목별<br> 보완점과 학습 방향 1:1 상담</li>
                            <li>
                                목표 성적 맞춤 시기별 학습 전략 제시 과목별 <br>학습법 특강 및 
                                설명회 제공으로 시기별 맞춤 <br>학습 전략 제안
                            </li>
                        </ul>
                        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                        <ul class="list-dot">
                            <li>학습 스케줄 및 습관을 점검하여 <strong>효율적인<br> 자습시간 관리</strong></li>
                            <li>내신/모의고사 성적 누적 관리로<br> <strong>취약점 확인 및 보완법 제안</strong></li>
                        </ul>
                        <% ElseIf campus_code = "CD0244" Then '분당 %>
                        <ul class="list-dot">
                            <li>
                                학습 스케줄 및 습관을 점검하여 <strong>효율적인 <br>
                                자습시간 관리</strong>
                            </li>
                            <li>
                                모의고사 성적 누적 관리로 <br>
                                <strong>취약점 확인 및 보완법 제안</strong>
                            </li>
                        </ul>
                        <% Else %>
                        <ul class="list-dot">
                            <li>
                                학습 스케줄 및 습관을 점검하여 <strong>효율적인 <br>
                                자습시간 관리</strong>
                            </li>
                            <li>
                                내신/모의고사 성적 누적 관리로 <br>
                                <strong>취약점 확인 및 보완법 제안</strong>
                            </li>
                        </ul>
                        <% End If %>
                    </div>
                    <!-- 생활관리 -->
                    <div class="swiper-slide">
                        <p class="stit">생활관리</p>
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/s_slide01_img03.jpg" alt=""></p>
                        <% If campus_code = "CD0247" Then '강남 %>
                        <ul class="list-dot">
                            <li>면학분위기가 유지될 수 있도록<br> <strong>강력한 관리 및 태도 점수 운영</strong></li>
                            <li>러셀 학습 플래너 점검 및 피드백으로<br> <strong>학습 습관 및 방법 개선</strong></li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록<br> <strong>지속적인 상담으로 학습동기 부여</strong></li>
                        </ul>
                        <% ElseIf campus_code = "CD0250" Then '부천 %>
                        <ul class="list-dot">
                            <li>학교와 병행하는 재학생에 맞춰 <strong>방과 후,<br> 주말 집중 관리 진행</strong></li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록<br> <strong>1:1 정신적 멘토링 진행</strong></li>
                        </ul>
                        <% ElseIf campus_code = "CD0257" Then '중계 %>
                        <ul class="list-dot">
                            <li>면학분위기가 유지될 수 있도록 강력한 관리<br> 및 태도 점수 운영</li>
                            <li>러셀 학습 플래너 점검 및 피드백으로 학습 습관 및<br> 방법 개선</li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록<br> 지속적인 상담으로 학습동기 부여</li>
                        </ul>
                        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                        <ul class="list-dot">
                            <li>학교와 병행하는 재학생에 맞춰 <strong>방과 후,<br> 주말 집중 관리 진행</strong></li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록<br> <strong>1:1 정신적 멘토링 진행</strong></li>
                        </ul>
                        <% Else %>
                        <ul class="list-dot">
                            <li>
                                학교와 병행하는 재학생에 맞춰 <strong>방과 후, <br>
                                주말 집중 관리 진행</strong>
                            </li>
                            <li>
                                학습 고충 및 슬럼프를 극복할 수 있도록 <br>
                                <strong>1:1 정신적 멘토링 진행</strong>
                            </li>
                        </ul>
                        <% End If %>
                    </div>
                </div>
            </div>

            <div class="main-tit">
                학습부터 합격까지 <br>
                <strong>학년에 맞춘 시기별 전략 제시</strong>
            </div>

            <!-- 연간 일정 -->
            <!-- #include virtual = "/intro/2025/regular_go/schedule.asp" -->

        </div>
    </div>
</div>