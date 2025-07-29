
<div class="cont01">
    <div class="inner pb60">
        <!-- 모집 개요 -->
        <h2 class="recruit-tit">
            2025 메디컬 종합반 <strong>모집 개요</strong>
        </h2>
        
        <h3><%=txtCampus%> 메디컬 종합반은<br>
            <strong>
                바른공부 자습전용관에서<br>
                입시 전문 담임선생님의 관리를 받으며<br>
            최상위권 전용 맞춤 단과를<br>
            수강하는 형태의 종합반을 의미합니다.
            </strong>
        </h3>
        <% If campus_code = "CD0346" Then '코어청주 %>
        <table class="tbl-type01">
            <colgroup>
                <col style="width:20%;">
                <col style="width:auto;">
            </colgroup>
            <tbody>
                <tr>
                    <th class="bg-sky">모집 대상</th>
                    <td class="text-align-left">
                        &middot; 2025학년도 수능 재도전 학생
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">모집 인원</th>
                    <td class="text-align-left">
                        &middot; 소수 인원 모집, 조기 마감 주의

                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">수업 과목
                    </th>
                    <td class="text-align-left">
                        &middot; 국어, 수학, 물리학, 화학, 생명과학, 지구과학 중 <strong class="txt-red">4강좌 의무 선택</strong>

                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">접수 방법
                    </th>
                    <td class="text-align-left">
                        &middot; 현장 및 온라인 접수 <a href="javascript:void(0)" onclick="<%=apply_url%>" class="bt-gray-s">원서접수 바로가기</a>
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">수강료
                    </th>
                    <td class="text-align-left">
                        <strong class="txt-red">
                            &middot; 800,000원 (1개월 과정)<br>
                            &middot; 단과 4강좌 + 바른공부 자습전용관 포함
                        </strong>
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">제출 서류
                    </th>
                    <td class="text-align-left">
                        &middot; 모의고사 전형 : 2024학년도 수능 및 9월 평가원 모의고사 성적표<br>
                        
                        &middot; 내신성적 전형 : 고등학교 전 학기 성적 증명서 (과목별 석차등급 필수 기재)
                        
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">상담 문의
                    </th>
                    <td class="text-align-left">
                        &middot; 전화 상담 : 오전 10시~저녁 8시
                        <a href="/board/consult_list.asp" class="bt-gray-s">온라인 상담 바로가기</a>

                    </td>
                </tr>
            </tbody>
        </table>
        <% ElseIf campus_code = "CD0344" Then '코어전주 %>
        <table class="tbl-type01">
            <colgroup>
                <col style="width:20%;">
                <col style="width:auto;">
            </colgroup>
            <tbody>
                <tr>
                    <th class="bg-sky">모집 대상</th>
                    <td class="text-align-left">
                        &middot; 2025학년도 수능 재도전 학생
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">모집 인원</th>
                    <td class="text-align-left">
                        &middot; 소수 인원 모집, 조기 마감 주의

                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">수업 과목
                    </th>
                    <td class="text-align-left">
                        &middot; 국어, 수학, 물리학, 화학, 생명과학, 지구과학 중 <strong class="txt-red">4강좌 선택 (국어, 수학 필수)</strong>

                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">접수 방법
                    </th>
                    <td class="text-align-left">
                        &middot; 현장 및 온라인 접수 <a href="javascript:void(0)" onclick="<%=apply_url%>" class="bt-gray-s">원서접수 바로가기</a>
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">수강료
                    </th>
                    <td class="text-align-left">
                        <strong class="txt-red">
                            &middot; 800,000원 (1개월 과정)<br>
                            &middot; 단과 4강좌 + 바른공부 자습전용관 포함
                        </strong>
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">제출 서류
                    </th>
                    <td class="text-align-left">
                        &middot; 모의고사 전형 : 2024학년도 수능 및 9월 평가원 모의고사 성적표<br>
                        
                        &middot; 내신성적 전형 : 고등학교 전 학기 성적 증명서 (과목별 석차등급 필수 기재)
                        
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">상담 문의
                    </th>
                    <td class="text-align-left">
                        &middot; 전화 상담 : 오전 10시~저녁 8시
                        <a href="/board/consult_list.asp" class="bt-gray-s">온라인 상담 바로가기</a>

                    </td>
                </tr>
            </tbody>
        </table>
        <% End If %>
        <!-- //모집 개요 -->
        <!-- 입학 기준 -->
        <h2 class="recruit-tit">
            입학 기준
        </h2>
        <table class="tbl-type01">
            <colgroup>
                <col style="width:20%;">
                <col style="width:auto;">
            </colgroup>
            <tbody>
                <tr>
                    <th class="bg-sky">모의고사 전형</th>
                    <td class="text-align-left">
                        2023년 수능,  9월 평가원 모의고사 성적 중<br>
                        <strong class="txt-red">
                            국, 수, 영, 탐(1) 중<br>
                            3개 영역 등급 합 5 이내
                        </strong>
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">내신 전형</th>
                    <% If campus_code = "CD0344" Then '코어전주 %>
                    <td class="text-align-left">
                        고등학교 1학년~3학년 전 학기 기준<br>
                        <strong class="txt-red">
                            일반고 1.5이내<br>
                            자사고/특목고 2.6이내
                        </strong>
                    </td>
                    <% Else %>
                    <td class="text-align-left">
                        고등학교 1학년~3학년 전 학기 기준<br>
                        <strong class="txt-red">
                            일반고 1.5이내<br>
                            자사고/특목고 2.5이내
                        </strong>
                    </td>
                    <% End If %>
                </tr>
                <tr>
                    <th class="bg-sky">대학교<br>전형</th>
                    <td class="text-align-left">
                        2023년, 2024년 입학생만 가능<br>
                        <strong class="txt-red">
                            의치한약수, 카이스트, 포항공대,<br>
                            서연고, 서성한
                        </strong>
                    </td>
                </tr>
            </tbody>
        </table>
        <!-- //입학 기준 -->
    </div>
    <!-- 입학 절차 -->
    <div class="recruit-wrap pb60">
        <h2 class="recruit-tit">
            입학 절차
        </h2>

        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학 상담</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>수강과목 선택</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>4</strong></div>
                <span>최종 등록</span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 입학 상담</p>
                <p class="f14">전화, 방문, 온라인을 통한 사전 입학 상담</p>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출
                </p>
                <p class="f14">성적표 확인 후 최종 입학 확인</p>
            </div>
            <div class="step-txt">
                <p class="step-tit">3) 수강과목 선택
                </p>
                <p class="f14">수강 4개 과목 선택<br>
                    <a href="#teachInfo">[자세히 보기]</a>
                </p>
            </div>
            <div class="step-txt">
                <p class="step-tit">4) 최종 등록</p>
                <p class="f14">온라인 결제링크 발송 및 현장 결제
                </p>
            </div>
            <div class="step-txt">
                <p class="step-tit">5) 입학 및 개강
                </p>
                <p class="f14" id="teachInfo">개강 전 혹은 등원일 담임선생님 OT 진행
                </p>
            </div>
        </div>
    </div>
    <!-- //입학 절차 -->
</div>
<div class="cont02">
    <div class="inner">
        <h2>
            오직 메디컬 종합반을 위한<br>
            <strong>최상위권 전용 맞춤 단과</strong>
        </h2>
        <h3><%=txtCampus%> 메디컬 종합반 단과 수업은<br>
            최상위권 배출로 검증된<br>
            러셀 강남, 대치, 기숙 강사진 수업으로 진행됩니다.
        </h3>
        <div class="m-tab-wrap">
            <div class="bt-tab">
                <a href="javascript:void(0)" class="on">
                    <dl>
                        <dt>국어</dt>
                        <dd>박석준 선생님</dd>
                    </dl>
                </a>
                <a href="javascript:void(0)">
                    <dl>
                        <dt>수학</dt>
                        <dd>손우혁 선생님</dd>
                    </dl>
                </a>
                <a href="javascript:void(0)">
                    <dl>
                        <dt>물리학</dt>
                        <dd>강신영 선생님</dd>
                    </dl>
                </a>
                <a href="javascript:void(0)">
                    <dl>
                        <dt>화학</dt>
                        <dd>정우정 선생님</dd>
                    </dl>
                </a>
                <a href="javascript:void(0)">
                    <dl>
                        <dt>생명과학</dt>
                        <dd>이석준 선생님</dd>
                    </dl>
                </a>
                <a href="javascript:void(0)">
                    <dl>
                        <dt>지구과학</dt>
                        <dd>함석진 선생님</dd>
                    </dl>
                </a>
            </div>
            <!-- 박석준 -->
            <div class="cont-box on">
                <div>
                    <div class="pic">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/ko_psj.jpg" alt="박석준" />
                    </div>
                    <div class="cont">
                        <h4>
                            수능 국어, 쉬운 국어, 빠른 국어<br>
                            <strong>국어 박석준 선생님</strong>
                        </h4>
                        <p class="sub">
                            야구하던 전교 300등 열등생에서<br>
                            연세대학교 입학한 명쾌한 공부법 제시
                        </p>
                        <div class="detail">
                            <dl>
                                <dt>강좌명</dt>
                                <dd>◆상위권◆ [독서,문학] 우리, 함께 도약 : 다시 시작하는 공부, 새롭게 접근하라</dd>
                            </dl>
                            <dl>
                                <dt>수업시간</dt>
                                <dd>화 09:00-12:30</dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <a href="https://<%=camUrl%>.megastudy.net/teacher/teacher_home.asp?code=1203" class="btn-black">OT &amp; 커리큘럼 영상 보기</a>
            </div>
            <!-- 손우혁 -->
            <div class="cont-box">
                <div>
                    <div class="pic">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/math_swh.jpg" alt="손우혁" />
                    </div>
                    <div class="cont">
                        <h4>
                            상위권의 가장 확실한 선택<br>
                            <strong>수학 손우혁 선생님</strong>
                        </h4>
                        <p class="sub">
                            새로운 수능 수학에 대비하는 완벽한 방법
                        </p>
                        <div class="detail">
                            <% If campus_code = "CD0344" Then '코어전주 %>
                            <dl>
                                <dt>강좌명</dt>
                                <dd>◆상위권◆ [수I , II] 새로운 수능 수학에 대비하자! 계산력+기출+사고력(녹화반)
                                </dd>
                            </dl>
                            <dl>
                                <dt>수업시간</dt>
                                <dd>수 09:00-12:30</dd>
                            </dl>
                            <% Else %>
                            <dl>
                                <dt>강좌명</dt>
                                <dd>◆상위권◆ [수I , II] 새로운 수능 수학에 대비하자! 계산력+기출+사고력
                                </dd>
                            </dl>
                            <dl>
                                <dt>수업시간</dt>
                                <dd>토 13:30-17:00</dd>
                            </dl>
                            <% End If %>
                        </div>
                    </div>
                </div>
                <a href="https://<%=camUrl%>.megastudy.net/teacher/teacher_home.asp?code=963" class="btn-black">OT &amp; 커리큘럼 영상 보기</a>
            </div>
            <!-- 강신영 -->
            <div class="cont-box">
                <div>
                    <div class="pic">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/si_ksy.jpg" alt="강신영" />
                    </div>
                    <div class="cont">
                        <h4>
                            열정 보존의 법칙<br>
                            <strong>물리학 강신영 선생님</strong>
                        </h4>
                        <p class="sub">
                            핵심 문항들의 알고리즘과 스킬 전수! 수능 물리학 I 최적화 강의
                        </p>
                        <div class="detail">
                            <dl>
                                <dt>강좌명</dt>
                                <dd>◆상위권◆ Grow 함께하는 기출완성
                                </dd>
                            </dl>
                            <dl>
                                <dt>수업시간</dt>
                                <dd>목 09:00-12:30</dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <a href="https://<%=camUrl%>.megastudy.net/teacher/teacher_home.asp?code=1265" class="btn-black">OT &amp; 커리큘럼 영상 보기</a>
            </div>
            <!-- 정우정 -->
            <div class="cont-box">
                <div>
                    <div class="pic">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/si_jwj.jpg" alt="정우정" />
                    </div>
                    <div class="cont">
                        <h4>깊이 있는 수능 화학
                            <br>
                            <strong>화학 정우정 선생님</strong>
                        </h4>
                        <p class="sub">
                            수능 만점의 자신감, 더 깊은 화학에서 시작!

                        </p>
                        <div class="detail">
                            <dl>
                                <dt>강좌명</dt>
                                <dd>◆상위권◆ 더 깊은 화학 : 화학 I <기출편> + 하프모의고사
                                </dd>
                            </dl>
                            <dl>
                                <dt>수업시간</dt>
                                <dd>금 13:30-17:00</dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <a href="https://<%=camUrl%>.megastudy.net/teacher/teacher_home.asp?code=1018" class="btn-black">OT &amp; 커리큘럼 영상 보기</a>
            </div>
            <!-- 이석준 -->
            <div class="cont-box">
                <div>
                    <div class="pic">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/si_lsj.jpg" alt="이석준" />
                    </div>
                    <div class="cont">
                        <h4>
                            수능 생명과학, 고득점의 시작<br>
                            <strong>생명과학 이석준 선생님</strong>
                        </h4>
                        <p class="sub">
                            생명과학 I  만점을 향한 문제풀이

                        </p>
                        <div class="detail">
                            <dl>
                                <dt>강좌명</dt>
                                <dd>◆상위권◆ 만점을 향한 문제풀이 SeasonⅠ
                                </dd>
                            </dl>
                            <dl>
                                <dt>수업시간</dt>
                                <dd>화 13:30-17:00</dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <a href="https://<%=camUrl%>.megastudy.net/teacher/teacher_home.asp?code=1164" class="btn-black">OT &amp; 커리큘럼 영상 보기</a>
            </div>
            <!-- 함석진 -->
            <div class="cont-box">
                <div>
                    <div class="pic">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/si_hsj.jpg" alt="함석진" />
                    </div>
                    <div class="cont">
                        <h4>
                            나만 알고 싶은 지구과학의 비밀<br>
                            <strong>지구과학 함석진 선생님</strong>
                        </h4>
                        <p class="sub">지금까지 경험해보지 못했던 새로운 지구과학
                        </p>
                        <div class="detail">
                            <dl>
                                <dt>강좌명</dt>
                                <dd>◆상위권◆ The Secret 지구과학 I : 개념+기출편 </dd>
                            </dl>
                            <dl>
                                <dt>수업시간</dt>
                                <dd>수 13:30-17:00</dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <a href="https://<%=camUrl%>.megastudy.net/teacher/teacher_home.asp?code=1253" class="btn-black">OT &amp; 커리큘럼 영상 보기</a>
            </div>
        </div>
    </div>
</div>
<div class="cont03">
    <div class="inner">
        <h2>
            결과로 증명하는<br>
            <strong><%=txtCampus%></strong>
        </h2>
        <div class="result-list">
            <div class="cont-bay">
                <p>
                    <strong><%=txtCampus%></strong><br>
                    <span>
                        2024학년도 대입 결과	
                    </span>
                </p>
            </div>
            <!-- 학원별 입결 -->
            <% If campus_code = "CD0346" Then '코어청주 %>
            <ul style="width:260px">
                <li>
                    <span>
                        의예과
                    </span>
                    <strong>
                        8<span>명</span>
                    </strong>
                </li>
                <li>
                    <span>
                        의약학계열
                    </span>
                    <strong>
                        17<span>명</span>
                    </strong>
                </li>
                <li>
                    <span>
                        SKY
                    </span>
                    <strong>
                        12<span>명</span>
                    </strong>
                </li>
            </ul>
            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
            <ul style="width:300px">
                <li>
                    <span>
                        연세대(서울)<br>
                        의예과
                    </span>
                    <strong>
                        3<span>명</span>
                    </strong>
                </li>
                <li>
                    <span>
                        전국 메디컬<br>
                        의&middot;치&middot;한&middot;약&middot;수
                    </span>
                    <strong>
                        83<span>명</span>
                    </strong>
                </li>
                <li>
                    <span>
                        SKY
                    </span>
                    <strong>
                        18<span>명</span>
                    </strong>
                </li>
            </ul>
            <% End If %>
            <!-- //학원별 입결 -->
            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준  <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <%=dataView%>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
        </div>
        <!-- 학원별 합격생 현황 -->
        <% If campus_code = "CD0346" Then '코어청주 %>
        <div class="result-current">
            <h4>
                <strong>러셀CORE 청주</strong><br>
                바른공부 자습전용관 재원생 기준<br>2024학년도 합격생 현황
            </h4>
            <ul class="current-list">
                <li>
                    <span>의예</span>
                    <strong>8<span>명</span></strong>
                </li>
                <li>
                    <span>치의예</span>
                    <strong>1<span>명</span></strong>
                </li>
            </ul>
            <ul class="current-list mt20">
                <li>
                    <span>한의예</span>
                    <strong>4<span>명</span></strong>
                </li>
                <li>
                    <span>수의예</span>
                    <strong>1<span>명</span></strong>
                </li>
            </ul>
            <ul class="current-list mt20">
                <li>
                    <span>약학</span>
                    <strong>3<span>명</span></strong>
                </li>
                <li>
                    <span>SKY</span>
                    <strong>9<span>명</span></strong>
                </li>
            </ul>
            <p class="r-txt">
                ※ 2023년 러셀CORE 청주 바른공부 자습전용관 재원<br>이력이 있는 학생 (복수 대학 합격자 포함, 단과 수강생 제외)<br>
                ※ 2024-02-29 기준, 지속적으로 업데이트 예정
            </p>
        </div>
        <% ElseIf campus_code = "CD0344" Then '코어전주 %>
        <div class="result-current">
            <h4>
                <strong>러셀CORE 전주</strong><br>
                바른공부 자습전용관 재원생 기준<br>
                2024학년도 합격생 현황
            </h4>
            <ul class="current-list mt80">
                <li>
                    <span>연세대<br>의예</span>
                    <strong>3<span>명</span></strong>
                </li>
                <li>
                    <span>고려대<br>의예</span>
                    <strong>1<span>명</span></strong>
                </li>
            </ul>
            <ul class="current-list mt50">
                <li>
                    <span>의예과</span>
                    <strong>46<span>명</span></strong>
                </li>
                <li>
                    <span>치&middot;한&middot;수&middot;약</span>
                    <strong>37<span>명</span></strong>
                </li>
            </ul>
            <ul class="current-list mt50">
                <li>
                    <span>SKY</span>
                    <strong>18<span>명</span></strong>
                </li>
                <li>
                    <span>서성한이<br>
                    과기원</span>
                    <strong>31<span>명</span></strong>
                </li>
            </ul>
            <p class="r-txt">
                ※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.)<br>
                ※ 2024학년도 수시/정시 최종 합격 기준 /<br>
                러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준<br>
                (홈페이지 대입 실적 기준)
            </p>
        </div>
        <% End If %>
        <!-- //학원별 합격생 현황 -->
        <a href="/russel/event/2024/interview/index.asp" class="btn-black"><%=txtCampus%> 2024학년도 대입 결과</a>
        
        <% If campus_code = "CD0344" Then '코어전주 %>
        <!-- 합격생 후기 -->
        <div class="result-stu">
            <div class="s-profile">
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/corejj_stu01.png" alt="" /></div>
                <a href="javascript:CastPopup('https://tv.naver.com/v/48138912')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/medical/ico_play.png" alt="" /></a>
            </div>
            <div class="s-review">
                <dl>
                    <dt>표준 시간표를 통한 공부 리듬 형성과<br>
                        집단적인 면학분위기가 좋았습니다.
                    </dt>
                    <dd>
                        <strong>고려대학교 의예과 합격</strong> 러셀CORE 전주 서진원
                    </dd>
                </dl>
                <p>
                    개인적인 면학분위기에선 수능 날 시간표대로 공부를 해야 하는 강제성도 없으며, 집중력을 잃을 때 바로잡을 만한 요소도 마련하기 힘듭니다. 그러나 러셀에서 수능 시간표대로 공부하고, 그를 토대로 목요일마다 위클리 모의고사를 실시하여 수능 리듬에 최적화되게끔 반복 연습했던 부분은 실제로 수능을 더욱 더 익숙하게 느끼는데 큰 도움을 주었습니다.
                </p>
            </div>
        </div>
        <!-- //합격생 후기 -->
        <% End If %>
    </div>
</div>