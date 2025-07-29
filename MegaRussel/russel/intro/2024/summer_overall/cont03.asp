<div class="cont js-cont <%=campusName%>">
    <div class="cont05">
        <div class="inner02">
            <h3 data-aos="fade-up">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont05_tit.png" alt="여름방학동안 최상위권으로 도약을 위한 프로그램이 있습니다." />
            </h3>           
        </div>
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont05_stit.jpg" alt="강의력과 관리력이 검증된 강사진의 종합반 전용 수업" /></p>
            <ul class="class-list">
                <li>
                    <p><strong>러셀 강남&middot;대치&middot;기숙</strong> 및<br>
                        <strong>메가스터디 인강 </strong>출강
                    </p>                        
                </li>
                <li>
                    <p>종합반 전 과목<br>
                        <strong>현장강의 진행</strong>
                    </p>
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
            <% If sCampusCode = "CD0249"  Then '영통 %>
            <div class="coming-box mt50">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt"><strong>러셀 영통 썸머스쿨 종합반 <br>출강 강사진</strong>은 추후 공개 예정입니다.</p>
                </div>
            </div>    
            <% End If %>
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/summer_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
    </div>
    <div class="cont06">
        <div class="inner">
            <p data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont06_stit.png" alt="최소한의 의무수업으로 충분한 자습시간이 확보되는 슬림한 종합반" /></p>
            <% If sCampusCode = "CD0249"  Then '영통 %>
            <div class="cont-wrap" data-aos="fade-up">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 종합반 의무수업 30~42T 대비 최대 50%
                            <sup>1)</sup> 축소 
                        </span>
                    </p>
                    <div class="tbl-box no-border">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01">
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
                        <p class="r-txt mt30">1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 21T 비교 시 수치
                            <br>* 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 67T*)
                        </strong><br>
                        <span>기존 종합반 자습시간 46~58T 대비 최대 40%
                            <sup>2)</sup> 증가</span>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont06_img.jpg" alt="" /></div>
                    <p class="r-txt mt0" style="padding-right:55px">
                        2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교<br>                    
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>                        
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="cont-wrap" data-aos="fade-up">
                <div class="cont">
                    <p class="tit">
                        <strong>주 10.5T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 종합반 의무수업 30~42T 대비 최대 75% <sup>1)</sup> 축소</span>
                    </p>
                    <div class="tbl-box no-border">

                        <table class="tbl-01 mt20">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:11%;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th colspan="10">학년별 수업 구성</th>
                                </tr>
                                <tr class="low">
                                    <th class="bl-0">학년</th>
                                    <th>지원 <br> 자격</th>
                                    <th>최대<br>수강</th>
                                    <th colspan="7">과목</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>고3<br> 자연</th>
                                    <td>10.5T</td>
                                    <td>17.5T</td>
                                    <td>국어</td>
                                    <td>수<br> Ⅰ,Ⅱ</td>
                                    <td>미적</td>
                                    <td>영어</td>
                                    <td>물/화/생/지</td>
                                    <td>수리 <br> 논술</td>
                                    <td>국어 <br> 특강</td>
                                </tr>
                                <tr>
                                    <th>고3 <br>인문</th>
                                    <td>7T</td>
                                    <td>10.5T</td>
                                    <td>국어</td>
                                    <td>수<br> Ⅰ,Ⅱ</td>
                                    <td>영어</td>
                                    <td>국어 <br> 특강</td>
                                    <td colspan="3">-</td>
                                </tr>
                                <tr>
                                    <th>고2</th>
                                    <td>10.5T</td>
                                    <td>17.5T</td>
                                    <td>국어</td>
                                    <td>수 <br>Ⅰ,Ⅱ <br> (7T)</td>
                                    <td>영어</td>
                                    <td>물/화/생/지</td>
                                    <td colspan="3">-</td>
                                </tr>
                                <tr>
                                    <th>고1</th>
                                    <td>10.5T</td>
                                    <td>-</td>
                                    <td>국어</td>
                                    <td>수 <br>Ⅰ,Ⅱ <br>(상)&middot;(하) <br> (7T)</td>
                                    <td>영어</td>
                                    <td>통합 <br> 과학</td>
                                    <td colspan="3">-</td>
                                </tr>
                            </tbody>
                        </table>



                        <p class="r-txt mt30">
                            ※과목별 주간 기본 3.5T (3.5시간 수업)이며, 고1·2 수학은 7T로 수강 가능합니다. <br>
                            ※ 고3 인문은 확통 선택자 기준입니다.                            
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 77.5T*)
                        </strong><br>
                        <span>기존 종합반 자습시간 46~58T 대비 최대 68%
                            <sup>2)</sup> 증가</span>
                    </p>
                    <div style="padding: 38px 0;"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont06_img.jpg" alt="" /></div>
                    <p class="r-txt mt0" style="padding-right:55px">
                        2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 77.5T 비교<br>                    
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>                        
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
            <div class="cont-wrap" data-aos="fade-up">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 종합반 의무수업 30~42T 대비 최대 50%
                            <sup>1)</sup> 축소 
                        </span>
                    </p>
                    <div class="tbl-box no-border">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01">
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
                        <p class="r-txt mt30">1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 21T 비교 시 수치
                            <br>* 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 67T*)
                        </strong><br>
                        <span>기존 종합반 자습시간 46~58T 대비 최대 40%
                            <sup>2)</sup> 증가</span>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont06_img.jpg" alt="" /></div>
                    <p class="r-txt mt0" style="padding-right:55px">
                        2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교<br>                    
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>                        
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="cont-wrap" data-aos="fade-up">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 종합반 의무수업 30~42T 대비 최대 50% <sup>1)</sup> 축소</span>
                    </p>
                    <div class="tbl-box no-border mt30">
                        <p class="stit">정규 수업(현장강의)</p>
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
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구(2)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간 수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="stit mt30">정규 수업(TEST)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>영단어 TEST</th>
                                    <th>수/영/탐 TEST</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간 수업시간</th>
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
                                    <th>주간 수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt30">1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 21T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont pl0 pr0">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 67T<sub>*</sub>)
                        </strong>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 40%
                            <sup>2)</sup> 증가</span>
                    </p>
                    <div style="margin-top: 57px;"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont06_img.jpg" alt="" /></div>
                    <p class="r-txt mt70" style="padding-right:55px">
                        2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교<br>                    
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함  <br>                        
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% End If %>
        </div>
    </div>
    <div class="cont07">
        <div class="inner">
            <div class="cont-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont07_stit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>

                <% If sCampusCode = "CD0342" or sCampusCode = "CD0349" or sCampusCode = "CD0340" Then '대구/울산/코어광주 %>
                <a class="ico-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/ico_bus.png" alt="스쿨버스" /></a>
                <% End If %>
                <div class="studyHall-slide-wrap">
                    <div class="studyHall-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">집단적인<br> 면학분위기</div>
                            <div class="swiper-slide">학습 동선<br> 최소화</div>
                            <div class="swiper-slide">충분한<br> 자습시간 확보</div>
                            <div class="swiper-slide">개방형<br> 구조</div>
                            <% If sCampusCode = "CD0342" or sCampusCode = "CD0349" or sCampusCode = "CD0340" Then '대구/울산/코어광주 %>
                            <div class="swiper-slide">자체<br> 식당 운영</div>
                            <% End If %>
                        </div>
                    </div>

                    <div class="swiper-container studyHall-slide">
                        <div class="swiper-wrapper">
                            <!-- 집단적인 면학분위기 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">최상위권이 모여 경쟁하는 긍정적인 학습환경</div>
                                    <div class="text">
                                        최상위권 재원생들의 학구열을 직접 체감할 수 있는 개방형 구조로 <br>
                                        상호적인 학습 동기 부여 및 긍정적인 긴장감 유지 가능
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont07_slide01.jpg" alt="집단적인 면학분위기" /></div>
                                </div>
                            </div>

                            <!-- 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">학습 동선 최소화</div>
                                    <% If sCampusCode = "CD0247" Then '강남 %>
                                    <div class="text">
                                        이동에 낭비하는 시간 없도록 학습 동선 최소화하여 <br>
                                        효율적인 시간 관리 가능, 수업 및 자습시간에 높은 집중력 발휘
                                    </div>
                                    <% Else %>
                                    <div class="text">
                                        한 건물 내에서 <%=baja_txt01%>을 한번에 해결<br>
                                        이를 통해 효율적인 시간관리가 가능하여 수업 및 자습시간에 높은 집중력 발휘
                                    </div>
                                    <% End If %>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont07_slide02.jpg" alt="학습 동선 최소화" /></div>
                                </div>
                            </div>

                            <!-- 바른공부 자습전용관 표준 시간표 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">바른공부 자습전용관 표준 시간표</div>
                                    <div class="text">
                                        수능 시험에 기준한 표준 시간표로 학습&middot;생활 리듬이 수능에 최적화<br>
                                        개인 학습 상황에 맞춘 스케줄 운영 및 의무자습과 심야자습시행으로 충분한 자습시간 확보
                                    </div>
                                    <div class="img">
                                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont07_slide03.jpg" alt="바른공부 자습전용관 표준 시간표" />                               
                                    </div>
                                </div>
                            </div>

                            <!-- 학습에 최적화된 환경 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">학습에 최적화된 환경</div>
                                    <div class="text">
                                        학습의 효율성을 높이기 위해 설계된<br>
                                        바른공부 자습전용관의 쾌적한 환경에서 온전히 학습에만 집중
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont07_slide04.jpg" alt="학습에 최적화된 환경" /></div>
                                </div>
                            </div>

                            <% If sCampusCode = "CD0342" or sCampusCode = "CD0349" or sCampusCode = "CD0340" Then '대구/울산/코어광주 %>
                            <!-- 자체식당 운영 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">자체 식당 운영</div>
                                    <div class="text">
                                        자체 식당 운영으로 균형 잡힌 식단 유지<br>
                                        외부와의 접촉 최소화 및 이동시간을 줄여 학습에 몰입
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont07_slide05.jpg" alt="자체 식당 운영" /></div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cont08">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont08_stit.png" alt="최상위권 역임 입시 담임선생님의 1:1 맞춤 관리" /></h3>
            <div class="cont-box">
                <div class="manage-slide-wrap">
                    <div class="manage-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">입시 <br> 관리</div>
                            <div class="swiper-slide">학습 <br> 관리</div>
                            <div class="swiper-slide">생활 <br> 관리</div>
                            <div class="swiper-slide">입시 특강/<br> 설명회</div>
                        </div>
                    </div>
    
                    <div class="swiper-container manage-slide">
                        <div class="swiper-wrapper">
                            <!-- 입시 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">수시 및 정시 <br>1:1 책임 상담</div>
                                        <div class="text">
                                            썸머스쿨 기간 동안 정확한 진단 및 기초 상담 진행<br>
                                            썸머스쿨 이후에도 정시지원까지 1:1 책임 상담 진행
                                        </div>
                                        <dl>
                                            <dt>7~8월</dt>
                                            <dd><strong>학생부 검토</strong>(내신/비교과 등)</dd>
                                        </dl>
                                        <dl>
                                            <dt>8~9월</dt>
                                            <dd><strong>수시상담</strong>(학생부 전형/논술 전형 컨설팅)</dd>
                                        </dl>
                                        <dl>
                                            <dt>11~12월</dt>
                                            <dd><strong>정시상담</strong>(수시지원여부/정시지원대학 결정)</dd>
                                        </dl>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont08_slide01.jpg" alt="입시 관리" /></div>
                                </div>
                                <% If sCampusCode = "CD0249" or sCampusCode = "CD0349" or sCampusCode = "CD0342" Then '영통/울산/대구 %>    
                                <p class="r-txt">
                                    * 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다.
                                </p> 
                                <% Else %>

                                <% End If %>
                            </div>
    
                            <!-- 학습 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">개별 맞춤 <br>학습관리</div>
                                        <div class="text">
                                            여름방학 단기간 최대 효율을 위한 밀도있는 학습관리<br>
                                            더불어 재원생의 학습목표와 수준에 맞춰<br>
                                            수능까지 성취도 있는 학습을 위한 학습전략 제시
                                        </div>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont08_slide02.jpg" alt="학습 관리" /></div>
                                </div>
                            </div>
    
                            <!-- 생활 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">철저한 <br>생활관리</div>
                                        <div class="text">
                                            러셀 플래너를 통한 학습계획 수립 및 실천 관리<br>
                                            매 교시 엄격한 출결 관리 및 바자관 상시 모니터링<br>
                                            면학분위기 저해 요소 엄격하게 관리
                                        </div>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont08_slide03.jpg" alt="생활 관리" /></div>
                                </div>
                            </div>
    
                            <!-- 입시 특강/설명회 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">다양한 <br>입시 특강/설명회</div>
                                        <div class="text">
                                            스터디 플래너&일일수학 30제 노트 활용법 특강<br>
                                            수능 D-100 과목별 학습법 특강<br>
                                            합격생과의 간담회 (선배와 1:1 개인 질의 응답)<br>
                                            수시대비 학생부전형관련 입시특강<br>
                                            수시/정시, 메디컬&최상위권 대학 지원전략 등 <br>
                                            입시 설명회
                                        </div>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer_overall/cont08_slide04.jpg" alt="입시 특강/설명회" /></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </div>
    <div class="cont09">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont09_stit.png" alt="최상위권 맞춤 실전 학습 콘텐츠" /></h3>
            <div class="swiper-container program-slide">
                <ul class="swiper-wrapper">
                    <% If sCampusCode = "CD0349" or sCampusCode = "CD0340" Then '울산/코어광주 %>  
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont09_slide04.png" alt="weekly모의고사"></li>
                    <% End If %>  
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont09_slide01.png" alt="QUEL 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont09_slide02.png" alt="E-QUEL 모의고사"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont09_slide03.png" alt="메대프 모의고사"></li>
                    <% If sCampusCode <> "CD0349" and sCampusCode <> "CD0340" Then '울산/코어광주 제외 %>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont09_slide04.png" alt="weekly모의고사"></li>
                    <% End If %>  
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/cont09_slide05.png" alt="월간 학습지"></li>
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>  
            <p class="r-txt mt50">* 위 콘텐츠는 썸머스쿨 기간 외 수능일까지 진행되는 콘텐츠가 포함되어 있습니다.</p>          
        </div>
    </div>
    <div class="bottom-bar">
        <p>최상위권이 집결하는 <%=txtCampus%> 썸머스쿨 종합반에서 <br>
            <strong>목표하는 2025학년도 메디컬&최상위권 대입성공을 이룰 수 있습니다.</strong>
        </p>
    </div>
</div>

