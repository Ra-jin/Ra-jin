<div class="cont js-cont <%=campusName%>">
    <div class="cont03">
        <div class="inner">
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/first/cont03_tit.png" alt="" /></p>
            <!-- 바자관 슬라이드 -->
            <div class="d-wrap">
                <div class="tit_num" data-aos="flip-left"><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_num01.png" alt="01" /></div>
                <p data-aos="fade-down" style="position: relative;">
                    <img src="<%=Application("img_path_russel")%>/intro/2025/first/cont03_stit.png" alt="" />
                    <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어/대구/울산 %>
                    <a class="ico-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2025/first/quick_bus.png" alt="셔틀버스" /></a>
                    <% End If %>
                </p>
                <div class="studyHall-slide-wrap">
                    <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0248" Then '코어/대구/울산/평촌 %>
                    <div class="studyHall-navi core">
                    <% Else %>
                    <div class="studyHall-navi">
                    <% End If %>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">집단적인 면학분위기</div>
                            <div class="swiper-slide">충분한 자습시간</div>
                            <div class="swiper-slide">학습 동선 최소화</div>
                            <div class="swiper-slide">최적화된 학습환경</div>
                            <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0248" Then '코어/대구/울산/평촌 %>
                            <div class="swiper-slide">자체 식당 운영</div>
                            <% End If %>
                        </div>
                    </div>
    
                    <div class="swiper-container studyHall-slide">
                        <div class="swiper-wrapper">
                            <!-- 집단적인 면학분위기 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0341" Then '코어대전 %>
                                <div class="swiper-container tab-slide">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide01.jpg" alt="" /></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide01_2.jpg" alt="" /></div>
                                        </div>
                                    </div>
                                </div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide01.jpg" alt="" /></div>
                                <% End If %>
                                <div class="info-detail">
                                    <dl>
                                        <% If sCampusCode = "CD0257" Then '중계 %>
                                        <dt>
                                            고득점 학생들이 모여 경쟁하는<br>
                                            <strong>집단적인 면학분위기</strong>
                                        </dt>
                                        <% Else %>
                                        <dt>
                                            최상위권이 모여 경쟁하는<br>
                                            <strong>집단적인 면학분위기</strong>
                                        </dt>
                                        <% End If %>
                                        <dd>
                                            <ul>
                                                <li>
                                                    <% If sCampusCode = "CD0257" Then '중계 %>
                                                    고득점 학생들의 학구열을 직접 체감할 수 있는<br>
                                                    <strong>개방형 구조</strong>로 
                                                    <strong>지속적인 학습동기를 부여하며 <br> 긴장감을 유지</strong>하게 합니다.
                                                    <% Else %>
                                                    최상위권의 학구열을 직접 체감할 수 있는 <strong>개방형 구조</strong>로 <br>   
                                                    <strong>지속적인 학습동기를 부여하며 긴장감을 유지</strong>하게 합니다.
                                                    <% End If %>
                                                </li>
                                                <li>
                                                    <strong>입시 담임선생님의 관리</strong>하에 자율과 통제의 <br>
                                                    균형적인 운영으로 <strong>강력한 면학분위기를 형성</strong>합니다.
                                                </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <!-- 충분한 자습시간 -->
                            <div class="swiper-slide">
                                <div style="position: relative;">
                                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide02.jpg" alt="" />
                                    <a href="javascript:void(0)" class="bt-tt01 js-mask"></a>
                                </div>
                                <div class="info-detail">
                                    <dl>
                                        <% If sCampusCode = "CD0244" Then '분당 %>
                                        <dt>
                                            실제 수능 시간표를 기반으로 한<br>
                                            <strong>표준 시간표 운영</strong>
                                        </dt>
                                        <% Else %>
                                        <dt>
                                            실제 수능 시간표와 동일한<br>
                                            <strong>표준 시간표 운영</strong>
                                        </dt>
                                        <% End If %>
                                        <dd>
                                            <ul> 
                                                <li>
                                                    <strong>수능 시험 기준의 표준 시간표로 생활</strong>하여 <br>
                                                    학습&middot;생활 리듬이 수능에 최적화되도록 합니다.                                          
                                                </li>
                                                <li>
                                                    개인의 학습 상황에 맞는 스케줄 운영과 <br>
                                                    충분한 의무자습으로 <strong>매일 최대 자습시간을 확보</strong>하게 합니다.                                          
                                                </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <!-- 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide03.jpg" alt="" /></div>
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            이동에 낭비하는 시간<% If sCampusCode = "CD0244" Then '분당 %>이<% End If %> 없도록<br>
                                            <strong>학습 동선 최소화</strong>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li>
                                                    한 건물 내에서 강의실-바자관-<%=food_txt%> <br>
                                                    한 번에 해결하여 <strong>이동에 낭비하는 시간을 최소화</strong>합니다.
                                                </li>
                                                <li>
                                                    학습 동선을 최소화하여 <strong>효율적인 시간 활용</strong>이 가능하며 <br>
                                                    <strong>수업 및 자습시간에 높은 집중력을 발휘</strong>할 수 있습니다.                                          
                                                </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <!-- 최적화된 학습환경 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0341" Then '코어대전 %>
                                <div class="swiper-container tab-slide02">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div style="position:relative;height: fit-content;">
                                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide04.jpg" alt="" />
                                                <a href="javascript:void(0)" class="bt-tt02 js-mask" style="position:absolute;bottom:0;right:0;width:80px;height:80px;"></a>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div style="position:relative;height: fit-content;">
                                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide04_2.jpg" alt="" />
                                                <a href="javascript:void(0)" class="bt-tt03 js-mask" style="position:absolute;bottom:0;right:0;width:80px;height:80px;"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <% Else %>
                                <div style="position: relative;height: fit-content;">
                                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide04.jpg" alt="" />
                                    <a href="javascript:void(0)" class="bt-tt02 js-mask" style="position:absolute;bottom:0;right:0;width:80px;height:80px;"></a>
                                </div>
                                <% End If %>
                                <div class="info-detail">
                                    <dl>
                                        <% If sCampusCode = "CD0244" Then '분당 %>
                                        <dt>
                                            학습에만 전념할 수 있도록<br>
                                            <strong>최적화된 환경</strong>
                                        </dt>
                                        <% Else %>
                                        <dt>
                                            학습에만 전념할 수 있도록<br>
                                            <strong>학습에 최적화된 환경</strong>
                                        </dt>
                                        <% End If %>
                                        <dd>
                                            <ul>
                                                <li>
                                                    <strong>학습 효율성을 높이기 위해 설계된 시설과 환경</strong>에서 <br>
                                                    온전히 학습에만 집중할 수 있습니다.                                          
                                                </li>
                                                <li>
                                                    바자관은 <strong>개뱡형 구조와 벽면이 통유리</strong>로 되어 있어 <br>
                                                    건강한 긴장감과 개방감을 느낄 수 있습니다.                                                                                   
                                                </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0248" Then '코어/대구/울산/평촌 %>
                            <!-- 자체 식당 운영 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide05.jpg" alt="" /></div>

                                <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어전체/대구/울산 %>
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            양질의 급식이 제공되는<br>
                                            <strong>자체 식당 운영</strong>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li>
                                                    자체 식단 운영으로 <strong>균형 잡힌 식단을 유지</strong>합니다.
                                                </li>
                                                <li>
                                                    맛과 영양을 고려한 건강하고 든든한 한 끼를 <br>
                                                    재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong>합니다.
                                                </li>
                                                <li>
                                                    외부와의 접촉 최소화 및 <strong>이동시간을 줄여 <br> 
                                                    학습에 몰입</strong>할 수 있습니다.                                              
                                                </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                                <% Else %>
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            양질의 급식이 제공되는<br>
                                            <strong>자체 식당 운영</strong>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li>
                                                    <strong>학원에 등원 후 학원 내에서 식사부터 학습까지 <br>
                                                    해결</strong>할 수 있도록 자체 식당을 운영합니다.                                              
                                                </li>
                                                <li>
                                                    수험생활을 하는 학생들을 위해 <strong>영양소를 고려한 반찬으로 <br>
                                                    구성하여 중식과 석식을 제공</strong>합니다.
                                                </li>
                                                <li>
                                                    <strong>상주 영양사와 조리실장이 직접 조리 후  <br>
                                                    현장 배식</strong>을 진행합니다.
                                                </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                                <% End If %>
                            </div>
                            <% End If %>
                        </div>
                    </div>

                    <!-- 바자관 시간표 -->
                    <!-- #include virtual = "/intro/2025/first/baja_time_table.asp" -->
                    <!-- //바자관 시간표 -->

                    <!-- 바자관 시설보기 팝업02 -->
                    <div class="layer-pop02 layer">
                        <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/first/bt_close.png" alt="닫기"></a>
                        <div class="layer-wrap">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide_pop.jpg" alt="" />
                        </div>
                    </div>

                    <!-- 바자관 시설보기 팝업03 -->
                    <div class="layer-pop03 layer">
                        <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/first/bt_close.png" alt="닫기"></a>
                        <div class="layer-wrap">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/sh_slide_pop_2.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <!--// 바자관 슬라이드 -->
                <% If sCampusCode = "INTRO" Then '인트로 %>
                <p class="r-txt">* 학원별 운영 방법 및 시설은 상이하며, 자세한 내용은 학원별 페이지에서 확인할 수 있습니다.</p>
                <% End If %>
            </div>
        </div>
    </div>
    
    
    <div class="cont04">
        <div class="tit_num" data-aos="flip-left"><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_num02.png" alt="02" /></div>
        <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/first/cont04_tit.png" alt="메가스터디 온오프 전문 강사진의 최상위권 수준별 맞춤 단과" /></p>
        
        <ul class="danka-list">
            <% If sCampusCode = "CD0340" Then '코어광주 %>
            <li>
                <p>
                    메가스터디 온&middot;오프 강사진의<br>
                    <strong>몰입감 높은 현장강의/ <br>
                    대치동 LIVE강의</strong>
                </p>
            </li>
            <% Else %>
            <li>
                <p>
                    수능까지 탄탄한 커리큘럼<br>
                    <strong>메가스터디 전문 강사진</strong>
                </p>
            </li>
            <% End If %>
            
            <li>
                <p>
                    과목별/수준별/진도별<br>
                    <strong>꼭 필요한 수업만 선택</strong>
                </p>
            </li>
            
            <% If sCampusCode = "CD0343" Then '코어원주 %>
            <li>
                <p>
                    내게 필요한 수업만 선택<br>
                    <strong>충분한 자습시간 확보</strong>
                </p>
            </li>
            <% Else %>
            <li>
                <p>
                    수능 고득점을 위한<br>
                    <strong>기본기 완성 및 취약점 보완</strong>
                </p>
            </li>
            <% End If %>

            <% If sCampusCode = "CD0340" Then '코어광주 %>
            <li>
                <p>
                    수업 전후 <strong>철저한 관리와 <br>
                    선생님 전용 학습 콘텐츠</strong>
                </p>
            </li>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <li>
                <p>
                    선생님 전용 학습 콘텐츠,<br>
                    <strong>수업 전후 학습관리</strong>
                </p>
            </li>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <li>
                <p>
                    수업 전후 <strong>철저한 관리와</strong><br>
                    수강생 전용 <strong>수업 콘텐츠</strong>
                </p>
            </li>
            <% Else %>
            <li>
                <p>
                    수업 전후 <strong>철저한 관리와</strong><br>
                    현강생 전용 <strong>수업 콘텐츠</strong>
                </p>
            </li>
            <% End If %>
        </ul>

        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/first/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        
        <div class="inner">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">* 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있으며, 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <p class="r-txt mt0">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.<br>
                ※ 2024년 출강 강사진 기준</p>
            <% Else %>
            <p class="r-txt mt0">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% End If %>

            <% If sCampusCode = "CD0247" Then '강남 %>
            <div class="btn-wrap <%=campusName%>">
                <a class="btn-view" href="<%=go3_url02%>">
                    <span><%=go3_stxt02%></span>
                    <%=go3_txt02%>
                </a>
                <a class="btn-view" href="<%=go3_url%>">
                    <span><%=go3_stxt%></span>
                    <%=go3_txt%>
                </a>
            </div>
            <% Else %>
            <a class="btn-view" style="margin-bottom: 130px;" href="<%=go3_url%>">정규&middot;특강 단과 시간표 바로가기</a>
            <% End If %>
        </div>
    </div>


    <div class="cont05">
        <div class="inner">
            <div class="tit_num" data-aos="flip-left"><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_num03.png" alt="03" /></div>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont05_tit.png" alt="" /></p>
            <% Else %>
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/first/cont05_tit.png" alt="" /></p>
            <% End If %>
            
            <div class="mng-wrap">
                <div class="m-box">
                    <div>
                        <p>목표 대학 합격을 위한 개인 맞춤 <br> <strong>입시관리</strong></p>
                        <ul>
                            <li>
                                입시 결과 및 수능 성적을 기반으로 <br>
                                체계적인 1:1 상담
                            </li>
                            <li>
                                재원생 입시 결과를 활용하여 개인 목표에 <br>
                                맞춘 시기별 입시(수시/정시) 방향 제시
                            </li>
                            <li>
                                입시특강, 전형별 설명회 등 <br>
                                최신 입시 정보 제공
                            </li>
                        </ul>
                    </div>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/mng_img01.png" alt="" /></p>
                </div>
                <div class="m-box">
                    <div>
                        <p>체계적인 분석을 통한 전략 수립 <br> <strong>학습관리</strong></p>
                        <ul>
                            <li>
                                성적 데이터와 학습 현황 기반으로 <br>
                                과목별 보완점과 학습 방향 1:1 상담
                            </li>
                            <li>
                                목표 성적 맞춤 시기별 학습 전략 제시
                            </li>
                            <li>
                                과목별 학습법 특강 및 설명회 제공으로 <br>
                                시기별 맞춤 학습 전략 제안
                            </li>
                        </ul>
                    </div>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/mng_img02.png" alt="" /></p>
                </div>
                <div class="m-box">
                    <div>
                        <p>학습에만 전념할 수 있도록 <br> <strong>생활관리</strong></p>
                        <ul>
                            <li>
                                면학분위기가 유지될 수 있도록 <br>
                                강력한 관리 및 태도 점수 운영
                            </li>
                            <li>
                                학습 플래너 점검 및 피드백으로 <br>
                                학습 습관 및 방법 개선
                            </li>
                            <li>
                                학습 고충 및 슬럼프를 극복할 수 있도록 <br>
                                지속적인 상담으로 학습동기 부여
                            </li>
                        </ul>
                    </div>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/mng_img03.png" alt="" /></p>
                </div>
            </div>
        </div>
    </div>

    <% If sCampusCode = "CD0245" Then '목동 %>
    <div class="cont05-1">
        <div class="inner">
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont05-1_tit.png" alt="" /></p>
            <p class="mt80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont05-1_img.png" alt="" /></p>
        </div>
    </div>
    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
    <div class="cont06-1">
        <div class="inner">
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont06-1_tit.png" alt="" /></p>
            <div class="d-wrap">
                <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont06-1_stit01.png" alt="" /></p>
                <p class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont06-1_img01.png" alt="" /></p>
            </div>
            <div class="d-wrap">
                <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont06-1_stit02.png" alt="" /></p>
                <p class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont06-1_img02.png" alt="" /></p>
            </div>
        </div>
    </div>
    <% End If %>

    <div class="cont06">
        <div class="inner">
            <p class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/first/cont06_tit.png" alt="수능까지 이어지는 시기별 맞춤 학습 콘텐츠" /></p>
            <div class="program-wrap">
                <div class="program-navi swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집체 모의고사 시리즈</div>
                        <div class="swiper-slide">OMEGA 시리즈</div>
                        <div class="swiper-slide">수학 전용 실전 콘텐츠</div>
                        <% If sCampusCode <> "CD0244" Then '분당 제외 %>
                        <div class="swiper-slide">학습계획 콘텐츠</div>
                        <% End If %>
                    </div>
                </div>
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/intro/2025/first/program_slide01.png" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정">
                            <a href="/intro/2022/premium/index.asp" style="z-index:2;position:absolute;left:469px;bottom:118px;width:121px;height:35px;"></a>
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/first/program_slide02.png" alt=""></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/first/program_slide03.png" alt=""></div>
                        <% If sCampusCode <> "CD0244" Then '분당 제외 %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/first/program_slide04.png" alt=""></div>
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cont07">
        <div class="inner">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont07_tit.png" alt="재학생 맞춤 실전 콘텐츠 과목별 시행 일정" /></p>
            <% Else %>
            <p class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/first/cont07_tit.png" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정" /></p>
            <% End If %>
            <div class="tbl-box">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:10%">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>과목</th>
                            <th>총 회차</th>
                            <th>3월</th>
                            <th>4월</th>
                            <th>5월</th>
                            <th>6월</th>
                            <th>7월</th>
                            <th>8월</th>
                            <th>9월</th>
                            <th>10월</th>
                            <th>11월</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-th">전국 대단위<br>실전 모의고사</th>
                            <td>전 과목</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <th class="bg-th">메가X대성<br>더 프리미엄<br>모의고사</th>
                            <td>전 과목</td>
                            <td>6회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                        </tr>
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <th class="bg-th" rowspan="7">OMEGA<br>LINK</th>
                            <td>국어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>19회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>5회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>3회</td>
                            <td>2회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>한국사</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <th class="bg-th" rowspan="3">OMEGA<br>BLACK</th>
                            <td>수학</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>15회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>3회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr> 
                            <th class="bg-th" rowspan="2">OMEGA<br>BLUE</th>
                            <td>수학</td>
                            <td>10회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>3회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>10회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>3회</td>
                            <td>3회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <th class="bg-th" rowspan="6">OMEGA<br>WEEKLY</th>
                            <td>국어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td>16회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td>4회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>사탐</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅰ</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <td>과탐Ⅱ</td>
                            <td>4권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td>1권</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                        <tr>
                            <th class="bg-th">알파 모의고사</th>
                            <td>수학</td>
                            <td>7회</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>2회</td>
                            <td>1회</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                            <td class="bg-empty">-</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
        </div>
    </div>

    <div class="bottom-bar">
        <% If sCampusCode = "CD0257" Then '중계 %>
        <p>
            재도전을 결심했다면 지금이 바로 앞서나갈 수 있는 기회! <br>
            <strong><%=txtCampus%>에서 목표 성적과 대학 합격을 위한 성공을 선점하세요.</strong>
        </p>
        <% Else %>
        <p>
            재도전을 결심했다면 지금이 바로 앞서나갈 수 있는 기회! <br>
            <strong>러셀 재수생 우선선발반에서 최상위권 대입성공을 선점하세요.</strong>
        </p>
        <% End If %>
    </div>
</div>