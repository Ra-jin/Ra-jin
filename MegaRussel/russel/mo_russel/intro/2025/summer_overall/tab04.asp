<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont04 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer_overall/cont04_tit.jpg" alt=""></p>
        <div class="inner">
            <div class="danka-list">
                <ul>
                    <li>
                        <p>
                            <strong>러셀 강남&middot;대치&middot;기숙</strong> 및 <br>
                            <strong>메가스터디 인강</strong> 출강 
                        </p>
                    </li>
                    <li>
                        <p>
                            종합반 전 과목 <br><strong>현장 강의 진행</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            과목별 성취도에 맞춘 <br> <strong>수준별 맞춤 수업</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>1:1 맞춤 관리</strong> 및 <br><strong>질의응답 직접 진행</strong>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/summer_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
    </div>
    <div class="cont05 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/cont05_tit.jpg" alt=""></p>
        <div class="inner">
            <% If campus_code = "CD0342" Then '대구 %>
            <div class="time-s-box">
                <p class="time-tit">
                    주 10.5T, 꼭 필요한 핵심 수업 구성                    
                </p>
                <p class="time-stit">
                    기존 재수종합반<sup>1)</sup> 의무 수업 30~42T 대비 최대 75%<sup>2)</sup> 축소
                </p>
                <div class="tbl-wrap">
                    <p class="tbl-tit bar"><strong>고3</strong></p>
                    <p class="tbl-tit">필수 수업 中 10.5T 선택</p>
                    <table>
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어</th>
                                <th>수학</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>7T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="tbl-tit">선택 수업(택2)</p>
                    <table>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어특강</th>
                                <th>영어</th>
                                <th>논술</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tbl-wrap trick-box">
                    <p class="tbl-tit bar"><strong>고2</strong></p>
                    <p class="tbl-tit">필수 수업</p>
                    <table>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어</th>
                                <th>수학</th>
                                <th>수학 <br>
                                    (선택과목)
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="tbl-tit">선택 수업(최대 택2)</p>
                    <table>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>탐구</th>
                                <th>탐구</th>
                                <th>영어</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt">
                    1) 과거 자사 재수종합반 기준 <br>
                    2) 기존 종합반 의무 수업 42T 대비 러셀 종합반 의무 수업<br>
                    10.5T 비교 시 수치<br>
                    * 실제 학원 운영 상황에 따라 변경될 수 있습니다.
                </p>
            </div>
            <div class="time-s-box">
                <p class="time-tit">
                    자기주도학습이 가능한 <br>
                    충분한 자습 시간 (주 77.5T<sup>*</sup>)                   
                </p>
                <p class="time-stit">
                    기존 재수종합반<sup>1)</sup> 자습 시간 46~58T 대비 최대 68%<sup>3)</sup> 증가
                </p>
                <div class="doughnut">
                    <div class="chart-box">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/doughnut_bg.jpg" alt="">
                        <div class="d-time d-time01">
                            의무 자습<br> 
                            <strong>주 77.5T</strong>
                        </div>
                        <div class="d-time d-time02">
                            의무 수업<br> 
                            <strong>주 10.5T</strong>
                        </div>
                        <!-- <div class="chart-area chart">
                            <canvas id="doughnut-chart"></canvas>
                            <div class="d-time d-time01">
                                의무 자습<br> 
                                <strong>주 77.5T</strong>
                            </div>
                            <div class="d-time d-time02">
                                의무 수업<br> 
                                <strong>주 10.5T</strong>
                            </div>
                        </div> -->
                    </div>
                </div>
                <p class="r-txt">
                    3) 기존 종합반 자습 시간 46T 대비 러셀 종합반 자습 시간 77.5T 비교 <br>
                    * 일주일 88T 기준으로 비교, 및 선택 자습 시간도 포함 <br>
                    * 실제 학원 운영 상황에 따라 변경될 수 있습니다.
                </p>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <div class="time-s-box">
                <p class="time-tit">
                    주 17.5T, 꼭 필요한 핵심 수업 구성               
                </p>
                <p class="time-stit">
                    기존 재수종합반<sup>1)</sup> 의무 수업 30~42T 대비 최대 58%<sup>2)</sup> 축소
                </p>
                <div class="tbl-wrap">
                    <p class="tbl-tit bar">필수 수업</p>
                    <table>
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:20%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어</th>
                                <th>수학</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tbl-wrap trick-box">
                    <p class="tbl-tit bar">선택 수업(택1)</p>
                    <table>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어특강</th>
                                <th>영어</th>
                                <th>논술</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>주간<br>
                                수업시간</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt">
                    1) 과거 자사 재수종합반 기준 <br>
                    2) 기존 종합반 의무 수업 42T 대비 러셀 종합반 의무 수업<br>
                    17.5T 비교  시 수치<br>
                    * 실제 학원 운영 상황에 따라 변경될 수 있습니다.
                </p>
            </div>
            <div class="time-s-box">
                <p class="time-tit">
                    자기주도학습이 가능한 <br>
                    충분한 자습 시간 (주 70.5T<sup>*</sup>)                   
                </p>
                <p class="time-stit">
                    기존 재수종합반<sup>1)</sup> 자습 시간 46~58T 대비 최대 53%<sup>3)</sup> 증가
                </p>
                <div class="doughnut">
                    <div class="chart-box">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/doughnut_bg.jpg" alt="">
                        <div class="d-time d-time01">
                            의무 자습<br> 
                            <strong>주 70.5T</strong>
                        </div>
                        <div class="d-time d-time02">
                            의무 수업<br> 
                            <strong>주 17.5T</strong>
                        </div>
                        <!-- <div class="chart-area chart">
                            <canvas id="doughnut-chart"></canvas>
                            <div class="d-time d-time01">
                                의무 자습<br> 
                                <strong>주 77.5T</strong>
                            </div>
                            <div class="d-time d-time02">
                                의무 수업<br> 
                                <strong>주 10.5T</strong>
                            </div>
                        </div> -->
                    </div>
                </div>
                <p class="r-txt">
                    3) 기존 종합반 자습 시간 46T 대비 러셀 종합반 자습 시간 70.5T 비교<br>
                    * 일주일 88T 기준으로 비교, 및 선택 자습 시간도 포함 <br>
                    * 실제 학원 운영 상황에 따라 변경될 수 있습니다.
                </p>
            </div>
            <% End If %>
        </div>
    </div>

    <div class="cont06 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/cont06_tit.jpg" alt=""></p>
        <a class="i-bus" href="/info/schoolBus.asp">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/ico_bus.png" alt="셔틀버스 운영">
        </a>
        <div class="inner">
            <div class="studyHall-wrap">
                <div class="studyHall-navi core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학 분위기</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">충분한 자습 시간 <br>확보</div>
                        <div class="swiper-slide">개방형 구조</div>
                        <div class="swiper-slide"><%=baja_txt%></div>
                    </div>
                </div>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기-->
                        <div class="swiper-slide">
                            <p class="tit">
                                최상위권이 모여 경쟁하는 <br>
                                집단적인 면학 분위기
                            </p>
                            <p class="dc-txt">
                                최상위권 재원생들의 학구열을<br> 직접 체감할 수 있는 <br>
                                개방형 구조로 학습 동기 부여 및<br>
                                긍정적인 긴장감 유지 가능
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img01.jpg" alt=""></p>
                           
                        </div>
                        <!-- 학습동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                낭비하는 시간 없이 <br>
                                학습 동선 최소화
                            </p>
                            <p class="dc-txt">                              
                                한 건물 내에서 강의실-바자관-급식(식당)을 
                                <br>한 번에 해결하여 효율적인 시간 관리를 통해<br>                                
                                수업 및 자습 시간에 <br>높은 집중력 발휘, 학습량 극대화                                   
  
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img02.jpg" alt=""></p>                          
                        </div>
                        <!-- 충분한 자습시간 확보 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                수능 시간표와 동일한 <br>
                                표준 시간표
                            </p>
                            <p class="dc-txt">
                                수능 시간표와 동일한 표준 시간표로 <br>
                                학습&middot;생활 리듬이 수능에 최적화!<br>                                
                                개인 맞춤 학습 스케줄 운영과 의무 자습 및 <br>
                                심야 자습으로 매일 최대 자습 시간 확보
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img03.jpg" alt=""></p>                            
                        </div>
                        <!-- 수시 대비 점검 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                학습에만 전념할 수 있도록 <br>
                                최적화된 환경
                            </p>
                            <p class="dc-txt">
                                학습 효율성을 높이기 위해 설계된 학습 시설에서 <br>
                                온전히 학습에만 집중할 수 있으며<br>                                
                                개방형 구조로 되어 있어 지속적으로 <br>                                
                                긴장감 유지 및 학습 동기 부여
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img04.jpg" alt=""></p>                            
                        </div>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                건강과 안전을 위한 <%=baja_txt%>
                            </p>
                            <p class="dc-txt">
                                <%=baja_txt%>으로 균형 잡힌 식단 유지 <br>
                                외부와의 접촉 최소화 및<br>                                
                                이동 시간을 줄여 학습에 몰입
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/studyHall_img05.jpg" alt=""></p>
                        </div>
                    </div>
                </div>
            </div>          
        </div>
    </div>

    <div class="cont07 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/cont07_tit.jpg" alt=""></p>
        <div class="inner">
            <div class="manage-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">입시 관리</div>
                    <div class="swiper-slide">학습 관리</div>
                    <div class="swiper-slide">생활 관리</div>
                </div>
            </div>
    
            <div class="manage-slide swiper-container">
                <div class="swiper-wrapper">
                    <!-- 입시관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/manage_slide01.jpg" alt=""></p>
                        <p class="stit">수시 및 정시 1:1 맞춤 입시 관리
                        </p>
                        <div class="list-wrap">
                            <ul class="list-dot">
                                <li>
                                    썸머스쿨 기간 동안 정확한 진단 및 <br>
                                    기초 상담 진행
                                </li>
                                <li>
                                    썸머스쿨 이후에도 1:1 배치 상담 진행
                                </li>
                            </ul>
                        </div>
                        <div class="plan-box">
                            <dl>
                                <dt>7~8월</dt>
                                <dd><strong>학생부 검토</strong>(내신/비교과 등)</dd>
                            </dl>
                            <dl>
                                <dt>8~9월</dt>
                                <dd><strong>수시 상담</strong>(학생부 전형/논술 전형 컨설팅)</dd>
                            </dl>
                            <dl>
                                <dt>11~12월</dt>
                                <dd><strong>정시 상담</strong>(수시 지원 여부/정시 지원 대학 결정)</dd>
                            </dl>
                        </div>
                 
                    </div>
                    <!-- 학습관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/manage_slide02.jpg" alt=""></p>                     
                    
                        <p class="stit">
                            최상위권 도약을 위한 <br>
                            체계적인 학습 관리
                        </p>
                        <div class="list-wrap">
                            <ul class="list-dot">
                                <li>
                                    여름 방학 단기간 최대 효율을 위한 <br>
                                    밀도 있는 학습 관리
                                </li>
                                <li>
                                    1:1 상담을 통해 여름 방학부터  <br>
                                    수능까지 학습 설계 및 점검
                                </li>
                            </ul>    
                        </div>                       
                    </div>
                    <!-- 생활관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/manage_slide03.jpg" alt=""></p>
                        <p class="stit">집단적인 면학 분위기를 위한 <br>
                            철저한 생활 관리
                        </p>
                        <div class="list-wrap">
                            <ul class="list-dot">
                                <li>
                                    매 교시 엄격한 출결 관리 및 <br>바자관 상시 모니터링
                                </li>
                                <li>
                                    태도 점수 제도로 면학 분위기 저해 요소 <br>엄격하게 관리
                                </li>
                            </ul>    
                        </div>      
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cont08 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/cont08_tit.jpg" alt=""></p>
        <div class="inner">
            <div class="ct-wrap">                
                <div class="ct-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide01.png" alt="OMEGA">
                        </div>         
                        <% If campus_code <> "CD0342" Then '대구 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide02.png" alt="OMEGA llink">
                        </div> 
                        <% End If %>
                        <% If campus_code <> "CD0340" Then '코어광주 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide03.png" alt="OMEGA black">
                        </div>
                        <% End If %>
                        <% If campus_code <> "CD0340" Then '코어광주 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide04.png" alt="OMEGA blue">
                        </div>
                        <% End If %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide05.png" alt="OMEGA weekly">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide06.png" alt="전국 대단위 실전 모의고사">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide07.png" alt="메가X대성 더 프리미엄 모의고사">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide08.png" alt="ALPHA">
                        </div>   
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide09.png" alt="러셀 학습 플래너">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide10.png" alt="러셀 일일수학 30제">
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/ct-slide11.png" alt="러셀 총평노트">
                        </div>      
                    </div>
                    <div class="swiper-pagination ct-pager"></div>
                </div>
                <p class="r-txt">
                    ※
                    ALPHA 및 
                    학습계획 콘텐츠 <br>
                    (러셀 학습 플래너, 러셀 일일수학 30제, 러셀 총평노트)는<br>
                    재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.<br>
                    이외 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에<br> 따라
                    사용 여부 등이 변경 및 조정될 수 있습니다.<br>
                    ※ 일부 콘텐츠는 썸머스쿨 기간 외에 진행될 수 있습니다.
                </p>
            </div>
        </div>
    </div>
    <div class="btm-banner">
        올여름, 최상위권으로 도약하고자 한다면 <br> 
        최상위권이 집결하는 <br>  
        러셀 썸머스쿨 종합반이 확실한 방법입니다.

    </div>
</div>