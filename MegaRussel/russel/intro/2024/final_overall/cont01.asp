<div class="cont <%=campusName%> js-cont">
    <div class="cont01">
        <div class="inner">
            <div class="ico-dday">
                <p>2025 수능까지 <strong class="dday"></strong></p>
            </div>
            <h3>
                실전에서 <br>
                더 높은 목표 달성을 위한 <br>
                <strong>가장 확실한 방법</strong>
            </h3>
            <p class="s-txt">
                <strong>정확한 9월 모의평가 분석</strong>을 통해 <br>
                <% If sCampusCode = "CD0257" Then '중계 %>   
                <strong>파이널 합격 전략을 세우고 <br> 러셀 중계 재원생들과 경쟁</strong>하는 것입니다.
                <% Else %>
                <strong>파이널 합격 전략을 세우고 <br> <%=txtCampus%> 최상위권 재원생들과 경쟁</strong>하는 것입니다.
                <% End If %>  
            </p>

            <div class="final-info-list">
                <div class="final-info-box">
                    <div class="box">
                        <div class="month">9~10월</div>
                        <div class="plan-txt">
                            <p>수능 대비 파이널 학습 및 실전력 향상 <br>
                                수시 지원 전략 수립
                            </p>
                            <ul>
                                <li><strong>9/4(수) 9월 모의평가 응시</strong> 및 1:1 상담</li>
                                <li>9월 모의평가 분석 설명회</li>
                                <li>수시 지원 컨설팅 및 <strong>수시모집 원서접수</strong></li>
                                <li><strong>QUEL 모의고사/메대프 모의고사 응시</strong> 및 1:1 상담</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <p class="ptb25"><img src="<%=Application("img_path_russel")%>/intro/2024/final/ico_down_arrow.png" alt="" /></p>
                <div class="final-info-box">
                    <div class="box">
                        <div class="month">11~12월</div>
                        <div class="plan-txt">
                            <p>수능 대비 최종 실력 완성 및 수능 응시 <br>
                                정시 지원 전략 수립
                            </p>
                            <ul>
                                <li><strong>E-QUEL 모의고사 응시</strong> 및 1:1 상담</li>
                                <li><strong>11/14(목) 대학수학능력시험 응시</strong></li>
                                <li>수능 가채점/실채점 설명회</li>
                                <li>정시 지원 컨설팅 및 <strong>정시모집 원서접수</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="cont-box">  
                <!-- 분석,전략 슬라이드-->
                <div class="analyze-slide-wrap">
                    <div class="analyze-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">모의평가 점검 및 분석</div>
                            <div class="swiper-slide">파이널 맞춤 학습 전략</div>
                            <div class="swiper-slide">개인 맞춤 입시 전략</div>
                        </div>
                    </div>

                    <div class="swiper-container analyze-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0249" Then '영통 %>   
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/anal_slide01.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/anal_slide01.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            정확한 9월 모의평가 <br> 점검 및 분석
                                        </dt>
                                        <dd>
                                            예비 수능 성격인 <strong>9월 모의평가의 난이도 및 <br>출제 경향 분석</strong>으로 2025 수능 출제 방향 등 예측
                                        </dd>
                                        <dd>
                                            정확한 9월 모의평가 성적 분석을 통해 <br>
                                            <strong>
                                                객관적인 자신의 위치 및 본인의 강점/약점 파악 등 <br>
                                                수능 경쟁력 점검
                                            </strong>
                                        </dd>
                                    </dl> 
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0349" or sCampusCode = "CD0340" Then '울산/코어광주 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/anal_slide02.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/anal_slide02.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            수능 대비 파이널 맞춤 <br> 학습 전략 수립
                                        </dt>
                                        <dd>
                                            정확한 9월 모의평가 성적 분석을 통한 <br>
                                            <strong>자신의 취약 과목/영역 파악 및 집중 보완책 마련</strong>
                                        </dd>
                                        <dd>
                                            9월 모의평가 등 <strong>최신 출제 경향이 반영된 <br>
                                            학습 방향 제시</strong> 및 자신의 상황에 맞는 학습 전략 수립
                                        </dd>
                                        <dd>
                                            수능 대비 실전 감각을 향상시키는 <br>
                                            <strong>파이널 모의고사로 실전력 강화 훈련</strong>
                                        </dd>
                                    </dl> 
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0349" Then '울산 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/anal_slide03.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/anal_slide03.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            개인별 맞춤 입시 전략 수립
                                        </dt>
                                        <dd>
                                            입시 담임선생님과 6월/9월 모의평가 등 <br>누적된 모의고사 성적을 통한 <br>
                                            <strong>수시/정시 경쟁력 검토 및 지원 전략 수립</strong>
                                        </dd>
                                        <dd>
                                            수시모집 원서접수 대비 <strong>수시 컨설팅</strong> 및 <br>수능 이후
                                            개인별 맞춤 <strong>정시 컨설팅 진행</strong>
                                        </dd>
                                        <dd>
                                            수시 논술전형 대비 학교별 맞춤 논술 프로그램 진행
                                        </dd>
                                    </dl> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //분석,전략 슬라이드-->
            </div>           
        </div>
    </div>
    <!-- cont02 -->
    <div class="cont02">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/cont02_tit.png" alt="러셀 파이널 종합반 프로그램" /></h3>
        </div>
        <div class="inner04">            
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/txt_num01.png" alt="01" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/cont_stit01.png" alt="최상위권 수준별 맞춤 단과" />
            </h3>
        </div>
        <div class="inner">
            <ul class="class-list">
                <li>
                    <p><strong>러셀 강남&middot;대치&middot;기숙</strong> 및<br>
                        <strong>메가스터디 인강 </strong>출강
                    </p>                        
                </li>
                <li>
                    <p>종합반 전 과목<br> <strong>현장강의 진행</strong></p>
                </li>
                <li>
                    <p>과목별 성취도에 맞춘<br>
                        <strong>수준별 맞춤 수업</strong>
                    </p>
                </li>
                <li>
                    <p><strong>1:1 맞춤 관리</strong> 및<br>
                        <strong>질의응답 직접 진행</strong>
                    </p>
                </li>
            </ul>
            <% If sCampusCode = "CD0342" Then '대구 %>
            <p class="pos-info-txt">* 사회탐구 및 인문논술은 대치동 LIVE 수업으로 진행</p>
            <% End If %> 
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/final_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->       
    </div>
    <!-- //cont02 -->
    <!-- cont03 -->
    <div class="cont03">
        <div class="inner">
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/txt_num02.png" alt="02" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/cont_stit02.png" alt="면학분위기로 소문난 바른공부 자습전용관" />
            </h3>

            <% If sCampusCode = "CD0342" Then '대구 %>
            <div class="cont-wrap" data-aos="fade-up">
                <div class="cont">
                    <p class="tit">
                        <strong>주 17.5T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 재수종합반 의무수업 30~42T 대비 최대 58%
                            <sup>1)</sup> 축소 
                        </span>
                    </p>
                    <div class="tbl-box no-border mt30">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01 bt-0">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">선택 수업</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어특강</th>
                                    <th>영어</th>
                                    <th>논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt30">
                            1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 17.5T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 <br> 충분한 자습시간 (주 70.5T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 53% <sup>2)</sup> 증가</span>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/cont03_img.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 70.5T 비교 <br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
            <div class="cont-wrap" data-aos="fade-up">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 재수종합반 의무수업 30~42T 대비 최대 50%
                            <sup>1)</sup> 축소 
                        </span>
                    </p>
                    <div class="tbl-box no-border mt30">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01 bt-0">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">선택 수업(택1)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어특강</th>
                                    <th>영어</th>
                                    <th>논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt30">
                            1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 21T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 <br> 충분한 자습시간 (주 67T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 40% <sup>2)</sup> 증가</span>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/cont03_img.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교 <br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="cont-wrap" data-aos="fade-up">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 재수종합반 의무수업 30~42T 대비 최대 50%
                            <sup>1)</sup> 축소 
                        </span>
                    </p>
                    <div class="tbl-box no-border mt30">
                        <p class="stit">정규 수업(현장강의)</p>
                        <table class="tbl-01 bt-0">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt10">정규 수업(TEST)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어특강</th>
                                    <th>영어</th>
                                    <th>논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="stit mt10">선택 수업</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                 </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt30">
                            1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 21T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 <br> 충분한 자습시간 (주 67T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 40% <sup>2)</sup> 증가</span>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/cont03_img.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교 <br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% Else %>
            <div class="cont-wrap" data-aos="fade-up">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 재수종합반 의무수업 30~42T 대비 최대 50%
                            <sup>1)</sup> 축소 
                        </span>
                    </p>
                    <div class="tbl-box no-border mt30">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01 bt-0">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                    <th>탐구</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">선택 수업(택1)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어 선택과목</th>
                                    <th>수학 선택과목</th>
                                    <th>탐구</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt30">
                            1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 21T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 <br> 충분한 자습시간 (주 67T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 40% <sup>2)</sup> 증가</span>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/cont03_img.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교 <br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% End If %> 
        </div>
    </div>
     <!-- //cont03 -->

    <!-- cont04 -->
    <div class="cont04">
        <div class="inner">    
            <% If isCore OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/울산/대구 %>
            <a class="banner-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/ico_bus.png" alt="" /></a>
            <% end if %>       
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/txt_num03.png" alt="03" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/cont_stit03.png" alt="면학분위기로 소문난 바른공부 자습전용관" />
            </h3>
            <!-- 바자관슬라이드 -->
            <div class="studyHall-slide-wrap">                
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">바자관 표준 시간표</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <% If isCore OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/울산/대구 %>
                        <div class="swiper-slide">자체 식당 운영</div>
                        <% end if %>   
                    </div>
                </div>
                <div class="content-box">
                    <div class="swiper-container studyHall-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0340" Then '코어광주 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/baja_slide01.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/baja_slide01.jpg" alt="" /></div>
                                <% End If %>  

                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            <% If sCampusCode <> "CD0257" Then '중계 제외 %>최상위권<% End If %> 
                                            재원생들이 모여 경쟁하는 <br> 긍정적인 학습환경
                                        </dt>
                                        <dd>
                                            <strong>개방형 구조</strong>로 이루어져 있어 <strong>재원생들의 <br>학구열이 자연스럽게 학습동기로 부여</strong>
                                        </dd>
                                        <dd>
                                            <strong>입시 담임선생님의 관리</strong>하에 자율과 통제의 균형적인 운영으로 <br><strong>집단적인 면학분위기 형성 및 유지</strong>
                                        </dd>                                      
                                    </dl> 
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0249" or sCampusCode = "CD0342" or sCampusCode = "CD0349" or sCampusCode = "CD0340"  Then '영통/대구/울산/코어광주 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/baja_slide02.jpg" alt="" /></div>
                                <% Else %>
                                <div>
                                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/baja_slide02.jpg" alt="" />                             
                                </div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>실제 수능 시간표와 동일한<br>
                                            표준 시간표 운영
                                        </dt>
                                        <dd>
                                            <strong>실제 수능 시간표와 동일한 바자관 표준 시간표와 <br>
                                                타종 알람</strong>으로 실전 연습 최적화 및 실전 감각 극대화
                                        </dd>
                                        <dd>
                                            바자관 의무자습과 개인 맞춤형 학습 스케줄 운영으로<br>
                                            <strong>매일 최대 720분의 충분한 자습시간 확보</strong>
                                        </dd>                                      
                                    </dl> 
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0249" Then '영통 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/baja_slide03.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/baja_slide03.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>한 건물 내에서 <br>
                                            <%=baja_txt01%> 한번에 해결
                                        </dt>
                                        <dd>
                                            한 건물 내에서 <%=baja_txt01%> 한 번에 해결할 수 있어 <strong class="non-br"><br>이동에 낭비되는 시간 최소화</strong>
                                        </dd>
                                        <dd>
                                            학습 동선 최소화를 통해 효율적인 시간관리가 가능하여<br>
                                            <strong>수업, 자습시간에 높은 집중력 발휘</strong>
                                        </dd>                                      
                                    </dl> 
                                </div>
                            </div>
                            <% If sCampusCode = "CD0349" OR sCampusCode = "CD0342" or sCampusCode = "CD0340" Then '울산/대구/코어광주 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/baja_slide04.jpg" alt="" /></div>
                                <div class="info-detail">
                                    <dl>
                                        <dt>양질의 급식이 제공되는 <br>
                                            자체 식당 운영
                                        </dt>
                                        <dd>
                                            자체 식당 운영으로 <strong>균형 잡힌 식단 유지</strong>
                                        </dd>
                                        <dd>
                                            맛과 영양을 고려한 건강하고 든든한 한 끼를<br>
                                            재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong>
                                        </dd>  
                                        <dd>
                                            외부와의 접촉 최소화 및 <strong>이동시간을 줄여 학습에 몰입 가능</strong>
                                        </dd>                                      
                                    </dl> 
                                </div>
                            </div>
                            <% end if %>   
                        </div>
                    </div> 
                </div>
            </div>
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/txt_num04.png" alt="04" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/cont_stit04.png" alt="입시 담임선생님의 파이널 맞춤 관리" />
            </h3>
            <!-- 입시,생활,학습관리 슬라이드 -->
            <div class="manage-slide-wrap">                
                <div class="manage-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">입시관리</div>
                        <div class="swiper-slide">학습관리</div>
                        <div class="swiper-slide">생활관리</div>
                    </div>
                </div>
                <div class="content-box">
                    <div class="swiper-container manage-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/manage_slide01.jpg" alt="" /></div>
                                <div class="info-detail">
                                    <dl>
                                        <dt>개인별 수시/정시 맞춤 지원 전략
                                        </dt>
                                        <dd>
                                            9월 모의평가 성적 분석을 통한 <br>
                                            <strong>수시 최종 지원 대학 결정 등 수시 컨설팅 진행</strong>
                                        </dd>
                                        <dd>
                                            <strong>9월 모의평가 성적 기반 수능 성적 예측</strong>으로 <br>
                                            정시 지원 가능 대학 파악 및 목표 대학 합격 가능성 확인
                                        </dd> 
                                        <dd>
                                            수능 이후 가채점/실채점 성적 분석을 통해 <br>
                                            <strong>개인별 맞춤 정시 컨설팅 진행</strong>
                                        </dd>                                     
                                    </dl> 
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/manage_slide02.jpg" alt="" /></div>
                                <div class="info-detail">
                                    <dl>
                                        <dt>개인 성적 분석을 통한 <br>최종 학습 전략 수립
                                        </dt>
                                        <dd>
                                            재원 시작부터 9월 모의평가까지의 성적 분석 및 유사 사례 비교 등 <br>
                                            <strong>수능 고득점을 위한 학습 상담 진행</strong>
                                        </dd>
                                        <dd>
                                            <strong>실전과 유사한 환경에서 집체 모의고사 지속적인 진행</strong>으로<br>
                                            실전 감각 극대화
                                        </dd> 
                                        <dd>
                                            마지막까지 흐트러지지 않도록 <strong>매일 학습 습관 루틴 점검</strong>
                                        </dd>                                     
                                    </dl> 
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/manage_slide03.jpg" alt="" /></div> 
                                <div class="info-detail">
                                    <dl>
                                        <dt>수능 시간표와 동일한 <br>
                                            수능 학습 리듬 체화
                                        </dt>
                                        <dd>
                                            <strong>실제 수능 시간표와 동일한 바자관 표준 시간표 운영</strong> 및 <br>
                                            수능 학습 리듬 체화
                                        </dd>
                                        <dd>
                                            마지막까지 면학분위기가 유지될 수 있도록 <br>
                                            <strong>강력한 관리 및 태도 점수 운영</strong>
                                        </dd> 
                                        <dd>
                                            수능까지 최상의 컨디션을 유지할 수 있도록 <strong>1:1 정신적 멘토링 진행</strong>
                                        </dd>                                     
                                    </dl> 
                                </div>
                            </div>
                        </div>
                    </div>                     
                </div>
            </div>
        </div>
    </div>
    <!--// cont04 -->
    <!-- cont05 -->
    <div class="cont05">
        <div class="inner">          
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/txt_num05.png" alt="05" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/cont_stit05.png" alt="실전에 최적화된 파이널 실전 콘텐츠 & 집체 모의고사" />
            </h3>
            <ul class="class-list white pb40">
                <li>
                    <p>최신 출제 경향이 반영된<br>
                        <strong>실전 모의고사 </strong>
                    </p>                        
                </li>
                <li>
                    <p>현장감을 느낄 수 있도록<br>
                        수능장과 동일하게 <strong>집체 진행</strong>
                    </p>
                </li>
                <li>
                    <p>전국 단위 집체 모의고사로<br>
                        <strong>객관적인 나의 위치 파악</strong>
                    </p>
                </li>
                <li>
                    <p>수능까지 매주 집체 진행으로<br>
                        <strong>강도 있는 실전 훈련</strong>
                    </p>
                </li>
            </ul>
            <!-- 모의고사 -->
            <div class="contents-list">		                
                <% If sCampusCode = "CD0340"  Then '코어광주 %>  
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list04.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>러셀CORE <br>Weekly 모의고사</strong></p>
                        <p class="c-day">9월 2주/4주차, 10월 1주차, <br> 11월 2주차 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>러셀CORE 선생님들이 <br>
                                    직접 출제한 모의고사 콘텐츠 제공</li>
                                <li>매주 정해진 시간에 집체 모의고사 <br>
                                    응시하여 실전 감각 향상</li>
                            </ul>
                        </div>
                    </div>
                </div>   
                <% End If %> 
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list01.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>QUEL<br>모의고사</strong></p>
                        <p class="c-day">9월 3주차, 10월 2주/3주차 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>실전 마무리 및 최종 점검을 위해 <br>
                                    수능과 동일하게 제작</li>
                                <li>수능과 가장 유사한 문항을 통해 <br>
                                    상대적 위치 및 학습 상태 점검</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list02.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>E-QUEL <br>모의고사</strong></p>
                        <p class="c-day">11월 1주차 시행 : 11/1(금)</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>전 과목 구성으로 수능과 <br>
                                    동일하게 실전 훈련</li>
                                <li>러셀 및 메가스터디학원 집체 응시로 <br>
                                    객관적인 위치 점검</li>
                            </ul>
                        </div>
                    </div>
                </div>   
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list03.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>메대프 <br>모의고사</strong></p>
                        <p class="c-day">10월 4주차 시행 : 10/22(화)</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>과목별 전문 출제진 구성과 <br>
                                    다 회차 검토</li>
                                <li>전 과목 구성 및 정확하고 <br>
                                    객관적인 나의 위치 확인</li>
                            </ul>
                        </div>
                    </div>
                </div>  
                <% If sCampusCode <> "CD0249" and sCampusCode <> "CD0340"  Then '영통/코어광주 제외 %>  
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list04.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>러셀CORE <br>Weekly 모의고사</strong></p>
                        <p class="c-day">9월 2주/4주차, 10월 1주차, <br> 11월 2주차 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>러셀CORE 선생님들이 <br>
                                    직접 출제한 모의고사 콘텐츠 제공</li>
                                <li>매주 정해진 시간에 집체 모의고사 <br>
                                    응시하여 실전 감각 향상</li>
                            </ul>
                        </div>
                    </div>
                </div>    
                <% End If %>
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list05.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>월간 학습지 <br>(월간 장영진)</strong></p>
                        <p class="c-day">9월 1주차 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>수학 장영진 선생님의 자작 문항으로 <br>
                                    매월 집체 모의고사 진행</li>
                                <li>수험생활에 필요한 <br>
                                    다양한 수학&middot;입시 관련 정보 제공</li>
                            </ul>
                        </div>
                    </div>
                </div>              
                
                <% If sCampusCode <> "CD0249" Then '영통 제외 %>  
                <!-- mega 빈칸-->
                <div class="blank">
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_mega.png" alt="" />
                </div>
                <!--// mega -->
                <% End If %>  
            </div>

            <!-- 모의고사 스케쥴 -->
            <!--#include virtual="/intro/2024/final_overall/schedule.asp" -->
            <!-- //모의고사 스케쥴 -->
            
        </div>
    </div>
    <!-- //cont04 -->
    <!-- cont06 -->  
    <% If sCampusCode <> "CD0340"  Then '코어광주 제외 %>  
    <div class="cont06">
        <div class="inner">
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/txt_num06.png" alt="04" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final_overall/cont_stit06.png" alt="수능까지 강도 있는 실전 훈련을 위한 수능 실전 모의 훈련장" />
            </h3>
            <div class="content-box">
                <div class="training-container">
                    <div class="training-box">
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/training_img01.jpg" alt="" /></div>
                        <div class="info-detail">
                            <dl>
                                <dt>재원생들의 수능 실전 능력 향상</dt>
                                <dd>
                                    <strong>감독관 배치, OMR 마킹, 타종등 현장감 있는 고사장</strong>을 만들고 <br>
                                    학원 자체 모의고사 제공 또는 자신의 풀 모의고사 지참하여<br>
                                    모의고사 훈련 진행
                                </dd>
                                <% If sCampusCode = "CD0249"  Then '영통 %>   
                                <dd>
                                    6월/9월 모의평가 대비 사전 훈련장 진행 및 <br>
                                    <strong>9월 모의평가 이후 수능까지 정규 훈련장 운영</strong>
                                </dd> 
                                <% Else %>
                                <dd>
                                    6월/9월 모의평가 대비 사전 훈련장 진행 및 <br>
                                    <strong>9월 모의평가 이후 수능까지 정규 훈련장으로 주 1회 이상 운영</strong>
                                </dd> 
                                <dd>
                                    N수생 뿐만 아니라 <strong>고3 재학생을 위해 주말 훈련장 운영</strong>
                                </dd>    
                                <% End If %>                                 
                            </dl> 
                        </div>
                    </div>
                </div>    
               
            </div>
        </div>
    </div>
    <% End If %>  
    <!-- //cont06 -->
    <!-- 하단 띠배너 -->
    <div class="bottom-bar">
        <p>수능까지 <strong class="dday"></strong>, <%=txtCampus%> 파이널 종합반에서</p>
        <% If sCampusCode = "CD0257" Then '중계 %>     
        <p class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final_overall/bottom_tit.png" alt="목표하는 2025학년도 대학 합격 성공을 이를 수 있습니다." /></p>
        <% Else %>
        <p class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2024/final_overall/bottom_tit.png" alt="목표하는 2025학년도 메디컬&최상위권 대입성공을 이를 수 있습니다." /></p>
        <% End If %>
    </div>
    <!-- //하단 띠배너 -->
</div>

