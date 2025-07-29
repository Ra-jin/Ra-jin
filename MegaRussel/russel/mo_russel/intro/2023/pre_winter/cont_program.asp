
<% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0346" Then '코어광주/코어대전/코어청주 %>
<div class="program-wrap">
    <div class="tab-wrap">
        <a href="javascript:void(0)" class="on">
            입시 전문가 <br>
            <strong>담임선생님의 맞춤 관리</strong>
        </a>
        <a href="javascript:void(0)">
            면학분위기 강조 <br>
            <strong>바른공부 자습전용관</strong>
        </a>
    </div>
    <div class="tab-cont on">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_01.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_02.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_03.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <% If campus_code = "CD0340" Then '광주 %>
        <div class="txt-box">
            <div class="box box01">
                <p>학습에만 몰입할 수 있는 환경</p>
                <ul>
                    <li>
                        <strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 <br>
                        운영으로 <strong>규칙적인 생활관리</strong>
                    </li>
                    <li>
                        바자관 <strong>상시 모니터링</strong>으로 졸음/대화/휴대폰 소지 등 <br>
                        <strong>엄격 관리</strong>
                    </li>
                    <li>
                        <strong>1일 10회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <br>
                        <strong>면학분위기 저해 요소 차단</strong>
                    </li>
                    <li>
                        슬럼프, 학습 고충 등은 <strong>학생 성향</strong>을 바탕으로 <br>
                        정신적인 멘토링
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>올바른 학습 계획</p>
                <ul>
                    <li>
                        최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) <br>
                        분석 후 <strong>과목별 학습 상황 점검</strong>
                    </li>
                    <li>
                        <strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <br>
                        <strong>겨울방학 전 영어 실력 향상</strong>
                    </li>
                    <li>
                        <strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 <br>
                        피드백을 통해 <strong>자기주도학습 훈련</strong>
                    </li>
                    <li>
                        <strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 <br>
                        학습 습관 형성</strong> 후 주/월별 학습 현황 파악
                    </li>
                </ul>
            </div>
            <div class="box box03">
                <p>학생 학습 맞춤 입시 전략</p>
                <ul>
                    <li>
                        전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시
                    </li>
                    <li>
                        성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에
                        필요한 요소, 점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                    </li>
                    <li>
                        <strong>입시 특강 및 설명회</strong> <br>
                        -  수시/정시 전형 이해 및 대입 제도 변화에 따른 <br>
                            <strong>입시 전략 노하우</strong> <br>
                        -  <strong>학부모 입시 교실 설명회</strong> 진행으로 전공 이해 및 <br>
                            학부 세부 내용과 취업 후 전망
                    </li>
                </ul>
            </div>
        </div>
        <% ElseIf campus_code = "CD0341" Then '대전 %>
        <div class="txt-box">
            <div class="box box01">
                <p>학습에만 몰입할 수 있는 환경</p>
                <ul>
                    <li>
                        <strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 <br>
                        운영으로 <strong>규칙적인 생활관리</strong>
                    </li>
                    <li>
                        바자관 <strong>상시 모니터링</strong>으로 졸음/대화/휴대폰 소지 등 <br>
                        <strong>엄격 관리</strong>
                    </li>
                    <li>
                        <strong>1일 10회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <br>
                        <strong>면학분위기 저해 요소 차단</strong>
                    </li>
                    <li>
                        슬럼프, 학습 고충 등은 <strong>학생 성향</strong>을 바탕으로 <br>
                        정신적인 멘토링
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>올바른 학습 계획</p>
                <ul>
                    <li>
                        최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) <br>
                        분석 후 <strong>과목별 학습 상황 점검</strong>
                    </li>
                    <li>
                        <strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <br>
                        <strong>겨울방학 전 영어 실력 향상</strong>
                    </li>
                    <li>
                        <strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 <br>
                        피드백을 통해 <strong>자기주도학습 훈련</strong>
                    </li>
                    <li>
                        <strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 <br>
                        학습 습관 형성</strong> 후 주/월별 학습 현황 파악
                    </li>
                </ul>
            </div>
            <div class="box box03">
                <p>학생 학습 맞춤 입시 전략</p>
                <ul>
                    <li>
                        전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시
                    </li>
                    <li>
                        성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에
                        필요한 요소, 점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                    </li>
                </ul>
            </div>
        </div>
        <% ElseIf campus_code = "CD0346" Then '청주 %>
        <div class="txt-box">
            <div class="box box01">
                <p>학습에만 몰입할 수 있는 환경</p>
                <ul>
                    <li>
                        <strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 <br>
                        운영으로 <strong>규칙적인 생활관리</strong>
                    </li>
                    <li>
                        바자관 <strong>상시 모니터링</strong>으로 졸음/대화/휴대폰 소지 등 <br>
                        <strong>엄격 관리</strong>
                    </li>
                    <li>
                        <strong>1일 4회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <br>
                        <strong>면학분위기 저해 요소 차단</strong>
                    </li>
                    <li>
                        슬럼프, 학습 고충 등은 <strong>학생 성향</strong>을 바탕으로 <br>
                        정신적인 멘토링
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>올바른 학습 계획</p>
                <ul>
                    <li>
                        최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) <br>
                        분석 후 <strong>과목별 학습 상황 점검</strong>
                    </li>
                    <li>
                        <strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <br>
                        <strong>겨울방학 전 영어 실력 향상</strong>
                    </li>
                    <li>
                        <strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 <br>
                        피드백을 통해 <strong>자기주도학습 훈련</strong>
                    </li>
                    <li>
                        <strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 <br>
                        학습 습관 형성</strong> 후 주/월별 학습 현황 파악
                    </li>
                </ul>
            </div>
            <div class="box box03">
                <p>학생 학습 맞춤 입시 전략</p>
                <ul>
                    <li>
                        전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시
                    </li>
                    <li>
                        성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에
                        필요한 요소, 점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                    </li>
                    <li>
                        <strong>입시 특강 및 설명회</strong> <br>
                        -  수시/정시 전형 이해 및 대입 제도 변화에 따른 <br>
                            <strong>입시 전략 노하우</strong> <br>
                        -  <strong>학부모 입시 교실 설명회</strong> 진행으로 전공 이해 및 <br>
                            학부 세부 내용과 취업 후 전망
                    </li>
                </ul>
            </div>
        </div>
        <% End If %>
    </div>
    <div class="tab-cont">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_04.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_05.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_06.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <% If campus_code = "CD0340" Then '광주 %>
        <div class="txt-box">
            <div class="box box01">
                <p>집단적인 면학분위기&개방형 구조</p>
                <ul>
                    <li>
                        최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 <br>
                        통해 <strong>집단적인 면학분위기</strong> 형성
                    </li>
                    <li>
                        <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 <br>
                        서로에게 동기 부여가 되며 <strong>선의의 경쟁으로 학습 능률 향상</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>쾌적한 학습환경</p>
                <ul>
                    <li>
                        <strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 <br>
                        적정 온도와 습도 유지
                    </li>
                    <li>
                        모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 <br>
                        학생들을 위한 <strong>편안한 의자로 학습 가능</strong>
                    </li>
                    <li>
                        높은 층고와 탁 트인 책상 배치, 충분한 통로로 <br>
                        넓고 <strong>쾌적한 환경 제공</strong>
                    </li>
                    <li>
                        <strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, <br>
                        끊김없는 인강 수강을 위해 광대역 무선망 구축
                    </li>
                </ul>
            </div>
        </div>
        <% ElseIf campus_code = "CD0341" Then '대전 %>
        <div class="txt-box">
            <div class="box box01">
                <p>집단적인 면학분위기&개방형 구조</p>
                <ul>
                    <li>
                        최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 <br>
                        통해 <strong>집단적인 면학분위기</strong> 형성
                    </li>
                    <li>
                        <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 <br>
                        서로에게 동기 부여가 되며 <strong>선의의 경쟁으로 학습 능률 향상</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>쾌적한 학습환경</p>
                <ul>
                    <li>
                        <strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 <br>
                        적정 온도와 습도 유지
                    </li>
                    <li>
                        모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 <br>
                        학생들을 위한 <strong>편안한 의자로 학습 가능</strong>
                    </li>
                    <li>
                        높은 층고와 탁 트인 책상 배치, 충분한 통로로 <br>
                        넓고 <strong>쾌적한 환경 제공</strong>
                    </li>
                    <li>
                        <strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, <br>
                        끊김없는 인강 수강을 위해 광대역 무선망 구축
                    </li>
                </ul>
            </div>
        </div>
        <% ElseIf campus_code = "CD0346" Then '청주 %>
        <div class="txt-box">
            <div class="box box01">
                <p>집단적인 면학분위기&개방형 구조</p>
                <ul>
                    <li>
                        최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 <br>
                        통해 <strong>집단적인 면학분위기</strong> 형성
                    </li>
                    <li>
                        <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 <br>
                        서로에게 동기 부여가 되며 <strong>선의의 경쟁으로 학습 능률 향상</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>쾌적한 학습환경</p>
                <ul>
                    <li>
                        <strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 <br>
                        적정 온도와 습도 유지
                    </li>
                    <li>
                        모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 <br>
                        학생들을 위한 <strong>편안한 의자로 학습 가능</strong>
                    </li>
                    <li>
                        높은 층고와 탁 트인 책상 배치, 충분한 통로로 <br>
                        넓고 <strong>쾌적한 환경 제공</strong>
                    </li>
                    <li>
                        <strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, <br>
                        끊김없는 인강 수강을 위해 광대역 무선망 구축
                    </li>
                </ul>
            </div>
        </div>
        <% End If %>
    </div>
</div>
<% ElseIf campus_code = "CD0343" Then '원주 %>
<div class="program-wrap">
    <div class="tab-wrap">
        <a href="javascript:void(0)" class="on">
            입시 전문가 <br>
            <strong>담임선생님의 맞춤 관리</strong>
        </a>
        <a href="javascript:void(0)">
            면학분위기 강조 <br>
            <strong>바른공부 자습전용관</strong>
        </a>
        <!-- <a href="javascript:void(0)" class="type03">
            학습 동선 효율 극대화 <br>
            <strong>자체 식당</strong>
        </a> -->
        <!-- <a href="javascript:void(0)">
            재원생 전용 <br>
            <strong>학원 셔틀버스</strong>
        </a> -->
    </div>
    <div class="tab-cont on">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_01.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_02.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_03.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>학습에만 몰입할 수 있는 환경</p>
                <ul>
                    <li>
                        <strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 <br>
                        운영으로 <strong>규칙적인 생활관리</strong>
                    </li>
                    <li>
                        <strong>학습 저해 요소 제거</strong> <br>
                        (휴대폰 제출 필수/학습 목적 외 태블릿 이용 금지)
                    </li>
                    <li>
                        <strong>1일 8회 이상</strong> 지속적인 학습 집중도 점검
                    </li>
                    <li>
                        <strong>데이터 기반 자습 집중도 점검</strong> 및 면학 분위기 관리,<br>
                        정기적 학생/학부모 대상 <strong>문자 발송</strong>
                    </li>
                    <li>
                        슬럼프, 학습 고충을 긍정적으로 극복할 수 있도록<br>
                        <strong>정기적인 멘토링</strong> 진행
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>올바른 학습 계획</p>
                <ul>
                    <li>
                        최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) <br>
                        분석 후 <strong>과목별 학습 상황 점검</strong>
                    </li>
                    <li>
                        <strong>영단어&영어듣기</strong> : 매일 진행되어
                        <strong>겨울방학 전 영어 실력 향상</strong>
                    </li>
                    <li>
                        <strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 <br>
                        피드백을 <strong>학습 밸런스 점검 및 관리</strong>
                    </li>
                    <li>
                        <strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 <br>
                        학습 습관 형성</strong> 후 주/월별 학습 현황 파악
                    </li>
                </ul>
            </div>
            <div class="box box03">
                <p>학생 학습 맞춤 입시 전략</p>
                <ul>
                    <li>
                        <strong>학생 맞춤형 입시 전략 제시</strong>(입학 전 성적부터 <br>
                        성적 데이터 체계적으로 관리)
                    </li>
                    <li>
                        성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에
                        필요한 요소, 점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                    </li>
                    <li>
                        <strong>입시 특강 및 설명회</strong><br>
                        -  입시/학습 전략 특강 등 진행<br>
                        -  다양하고 풍부한 <strong>최신 입시 콘텐츠 제공</strong>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-cont">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_04.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_05.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_06.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>집단적인 면학분위기&개방형 구조</p>
                <ul>
                    <li>
                        최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 <br>
                        통해 <strong>집단적인 면학분위기</strong> 형성
                    </li>
                    <li>
                        <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 <br>
                        서로에게 동기 부여가 되며 <strong>선의의 경쟁으로 학습 능률 향상</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>쾌적한 학습환경</p>
                <ul>
                    <li>
                        <strong>공기정화식물, 숯 대량 비치, 공기청정기</strong> 가동으로 <br>
                        적정 온도와 습도 유지
                    </li>
                    <li>
                        모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 <br>
                        학생들을 위한 <strong>편안한 의자로 학습 가능</strong>
                    </li>
                    <li>
                        높은 층고와 탁 트인 책상 배치, 충분한 통로로 <br>
                        넓고 <strong>쾌적한 환경 제공</strong>
                    </li>
                    <li>
                        <strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, <br>
                        끊김없는 인강 수강을 위해 광대역 무선망 구축
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- <div class="tab-cont type02">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_07.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_08.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_09.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>바자관, 강의실, 자체 식당 한 건물 내 위치</p>
                <ul>
                    <li>
                        학습 공간인 바른공부 자습전용관 - 수업 공간인 <br>
                        단과 강의실 - 식사 공간 자체식당이 한 건물 내 위치하여 <br>
                        불필요한 <strong>이동거리 최소화</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>건강한 식재료와 균형 잡힌 식단</p>
                <ul>
                    <li>
                        깔끔한 인테리어와 매일 진행하는 위생 점검으로 <br>
                        안전한 식사 공간 제공
                    </li>
                    <li>
                        1인 식사를 선호하는 학생들을 위한 <strong>1인용 테이블 설치</strong>
                    </li>
                </ul>
            </div>
        </div>
    </div> -->
    <!-- <div class="tab-cont type02">
        <p class="bus"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_10.jpg" alt=""></p>
        <div class="txt-box bus">
            <div class="box box01">
                <p>학원 전용 셔틀버스</p>
                <ul>
                    <li>
                        학습에만 집중할 수 있도록 <strong> 등/하원 학원 전용 <br>
                        셔틀버스 운행</strong>
                    </li>
                </ul>
            </div>
            <a class="btn-bus" href="/info/schoolBus.asp">운행 노선 및 시간 알아보기</a>
        </div>
    </div> -->
</div>
<% ElseIf campus_code = "CD0344" Then '전주 %>
<div class="program-wrap">
    <div class="tab-wrap">
        <a href="javascript:void(0)" class="on">
            입시 전문가 <br>
            <strong>담임선생님의 맞춤 관리</strong>
        </a>
        <a href="javascript:void(0)">
            면학분위기 강조 <br>
            <strong>바른공부 자습전용관</strong>
        </a>
        <!-- <a href="javascript:void(0)">
            학습 동선 효율 극대화 <br>
            <strong>자체 식당</strong>
        </a>
        <a href="javascript:void(0)">
            재원생 전용 <br>
            <strong>학원 셔틀버스</strong>
        </a> -->
    </div>
    <div class="tab-cont on">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_01.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_02.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_03.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>학습에만 몰입할 수 있는 환경</p>
                <ul>
                    <li>
                        <strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 <br>
                        운영으로 <strong>규칙적인 생활관리</strong>
                    </li>
                    <li>
                        바자관 <strong>상시 모니터링</strong>으로 졸음/대화/휴대폰 소지 등 <br>
                        <strong>엄격 관리</strong>
                    </li>
                    <li>
                        <strong>1일 4회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <br>
                        <strong>면학분위기 저해 요소 차단</strong>
                    </li>
                    <li>
                        슬럼프, 학습 고충 등은 <strong>학생 성향</strong>을 바탕으로 <br>
                        정신적인 멘토링
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>올바른 학습 계획</p>
                <ul>
                    <li>
                        최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) <br>
                        분석 후 <strong>과목별 학습 상황 점검</strong>
                    </li>
                    <li>
                        <strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <br>
                        <strong>겨울방학 전 영어 실력 향상</strong>
                    </li>
                    <li>
                        <strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 <br>
                        피드백을 통해 <strong>자기주도학습 훈련</strong>
                    </li>
                    <li>
                        <strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 <br>
                        학습 습관 형성</strong> 후 주/월별 학습 현황 파악
                    </li>
                </ul>
            </div>
            <div class="box box03">
                <p>학생 학습 맞춤 입시 전략</p>
                <ul>
                    <li>
                        전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시
                    </li>
                    <li>
                        성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에
                        필요한 요소, 점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                    </li>
                    <li>
                        <strong>입시 특강 및 설명회</strong> <br>
                        -  수시/정시 전형 이해 및 대입 제도 변화에 따른 <br>
                            <strong>입시 전략 노하우</strong> <br>
                        -  <strong>학부모 입시 교실 설명회</strong> 진행으로 전공 이해 및 <br>
                            학부 세부 내용과 취업 후 전망
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-cont">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_04.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_05.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_06.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>집단적인 면학분위기&개방형 구조</p>
                <ul>
                    <li>
                        최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 <br>
                        통해 <strong>집단적인 면학분위기</strong> 형성
                    </li>
                    <li>
                        <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 <br>
                        서로에게 동기 부여가 되며 <strong>선의의 경쟁으로 학습 능률 향상</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>쾌적한 학습환경</p>
                <ul>
                    <li>
                        <strong>공기정화식물, 공기청정기</strong> 가동으로 <br>
                        적정 온도와 습도 유지
                    </li>
                    <li>
                        모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 <br>
                        학생들을 위한 <strong>편안한 의자로 학습 가능</strong>
                    </li>
                    <li>
                        높은 층고와 탁 트인 책상 배치, 충분한 통로로 <br>
                        넓고 <strong>쾌적한 환경 제공</strong>
                    </li>
                    <li>
                        <strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, <br>
                        끊김없는 인강 수강을 위해 광대역 무선망 구축
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- <div class="tab-cont type02">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_07.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_08.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_09.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>바자관, 강의실, 자체 식당 한 건물 내 위치</p>
                <ul>
                    <li>
                        학습 공간인 바른공부 자습전용관 - 수업 공간인 <br>
                        단과 강의실 - 식사 공간 자체식당이 한 건물 내 위치하여 <br>
                        불필요한 <strong>이동거리 최소화</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>건강한 식재료와 균형 잡힌 식단</p>
                <ul>
                    <li>
                        깔끔한 인테리어와 매일 진행하는 위생 점검으로 <br>
                        안전한 식사 공간 제공
                    </li>
                    <li>
                        1인 식사를 선호하는 학생들을 위한 <strong>1인용 테이블 설치</strong>
                    </li>
                    <li>
                        수험생활 하는 학생들을 위한 건강한 식재료 사용과 <br>
                        <strong>균형있는 식사 제공</strong>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-cont type02">
        <p class="bus"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_10.jpg" alt=""></p>
        <div class="txt-box bus">
            <div class="box box01">
                <p>학원 전용 셔틀버스</p>
                <ul>
                    <li>
                        학습에만 집중할 수 있도록 <strong> 하원 학원 전용 <br>
                        셔틀버스 운행</strong>
                    </li>
                </ul>
            </div>
            <a class="btn-bus" href="/info/schoolBus.asp">운행 노선 및 시간 알아보기</a>
        </div>
    </div> -->
</div>
<% ElseIf campus_code = "CD0345" Then '창원 %>
<div class="program-wrap">
    <div class="tab-wrap">
        <a href="javascript:void(0)" class="on">
            입시 전문가 <br>
            <strong>담임선생님의 맞춤 관리</strong>
        </a>
        <a href="javascript:void(0)">
            면학분위기 강조 <br>
            <strong>바른공부 자습전용관</strong>
        </a>
        <!-- <a href="javascript:void(0)">
            학습 동선 효율 극대화 <br>
            <strong>자체 식당</strong>
        </a>
        <a href="javascript:void(0)">
            재원생 전용 <br>
            <strong>학원 셔틀버스</strong>
        </a> -->
    </div>
    <div class="tab-cont on">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_01.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_02.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_03.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>학습에만 몰입할 수 있는 환경</p>
                <ul>
                    <li>
                        <strong>수능 시간표와 동일</strong>한 바른공부 자습전용관 표준 시간표 <br>
                        운영으로 <strong>규칙적인 생활관리</strong>
                    </li>
                    <li>
                        바자관 <strong>상시 모니터링</strong>으로 졸음/대화/휴대폰 소지 등 <br>
                        <strong>엄격 관리</strong>
                    </li>
                    <li>
                        <strong>1일 8회 이상 출결 관리</strong>로 지각/무단 외출/ 무단 결석 등 <br>
                        <strong>면학분위기 저해 요소 차단</strong>
                    </li>
                    <li>
                        슬럼프, 학습 고충 등은 <strong>학생 성향</strong>을 바탕으로 <br>
                        정신적인 멘토링
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>올바른 학습 계획</p>
                <ul>
                    <li>
                        최근 모의고사 성적, 현재 내신 성적 (전교과, 주요교과) <br>
                        분석 후 <strong>과목별 학습 상황 점검</strong>
                    </li>
                    <li>
                        <strong>영단어&영어듣기</strong> : 매일 진행되어 별도 추가 학습 없이 <br>
                        <strong>겨울방학 전 영어 실력 향상</strong>
                    </li>
                    <li>
                        <strong>러셀 학습 플래너</strong> : 학습 목표 수립 및 담임선생님의 <br>
                        피드백을 통해 <strong>자기주도학습 훈련</strong>
                    </li>
                    <li>
                        <strong>일일수학 30제</strong> : 매일 <strong>일정한 양의 수학 문제풀이로 <br>
                        학습 습관 형성</strong> 후 주/월별 학습 현황 파악
                    </li>
                </ul>
            </div>
            <div class="box box03">
                <p>학생 학습 맞춤 입시 전략</p>
                <ul>
                    <li>
                        전 과목 학습량 파악 후 <strong>과목별 우선 학습법</strong> 제시
                    </li>
                    <li>
                        성적 포트폴리오와 실제 사례를 기반으로 <strong>목표 대학/학과</strong>에
                        필요한 요소, 점수 확보에 대한 <strong>맞춤 학습 계획 수립</strong>
                    </li>
                    <li>
                        <strong>입시 특강 및 설명회</strong> <br>
                        -  수시/정시 전형 이해 및 대입 제도 변화에 따른 <br>
                            <strong>입시 전략 노하우</strong> <br>
                        -  <strong>학부모 입시 교실 설명회</strong> 진행으로 전공 이해 및 <br>
                            학부 세부 내용과 취업 후 전망
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-cont">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_04.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_05.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_06.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>집단적인 면학분위기&개방형 구조</p>
                <ul>
                    <li>
                        최상위권 학생들이 모여 자율과 통제의 균형적인 운영을 <br>
                        통해 <strong>집단적인 면학분위기</strong> 형성
                    </li>
                    <li>
                        <strong>개방형 구조</strong>로 이루어져 최상위권 학생들의 학구열이 <br>
                        서로에게 동기 부여가 되며 <strong>선의의 경쟁으로 학습 능률 향상</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>쾌적한 학습환경</p>
                <ul>
                    <li>
                        <strong>공기정화식물, 공기청정기</strong> 가동으로
                        적정 온도와 습도 유지
                    </li>
                    <li>
                        모의고사를 펼쳐도 <strong>넉넉한 넓은 책상과</strong> 장시간 앉아있는 <br>
                        학생들을 위한 <strong>편안한 의자로 학습 가능</strong>
                    </li>
                    <li>
                        높은 층고와 탁 트인 책상 배치, 충분한 통로로 <br>
                        넓고 <strong>쾌적한 환경 제공</strong>
                    </li>
                    <li>
                        <strong>학습에 불필요한 인강 사이트 외 접속 차단</strong>하며, <br>
                        끊김없는 인강 수강을 위해 광대역 무선망 구축
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- <div class="tab-cont type02">
        <div class="rolling-inner">
            <div class="swiper rolling-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_07.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_08.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_09.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination page"></div>
            </div>
        </div>
        <div class="txt-box">
            <div class="box box01">
                <p>바자관, 강의실, 자체 식당 한 건물 내 위치</p>
                <ul>
                    <li>
                        학습 공간인 바른공부 자습전용관 - 수업 공간인 <br>
                        단과 강의실 - 식사 공간 자체식당이 한 건물 내 위치하여 <br>
                        불필요한 <strong>이동거리 최소화</strong>
                    </li>
                </ul>
            </div>
            <div class="box box02">
                <p>건강한 식재료와 균형 잡힌 식단</p>
                <ul>
                    <li>
                        깔끔한 인테리어와 매일 진행하는 위생 점검으로 <br>
                        안전한 식사 공간 제공
                    </li>
                    <li>
                        1인 식사를 선호하는 학생들을 위한 <strong>1인용 테이블 설치</strong>
                    </li>
                    <li>
                        수험생활 하는 학생들을 위한 건강한 식재료 사용과 <br>
                        <strong>균형있는 식사 제공</strong>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-cont type02">
        <p class="bus"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/tab_10.jpg" alt=""></p>
        <div class="txt-box bus">
            <div class="box box01">
                <p>학원 전용 셔틀버스</p>
                <ul>
                    <li>
                        학습에만 집중할 수 있도록 <strong> 등/하원 학원 전용
                        셔틀버스 운행</strong>
                    </li>
                    <li>
                        먼 거리에서 등원하는 학생들을 위해 <strong>노선 다양화</strong>
                    </li>
                </ul>
            </div>
            <a class="btn-bus" href="/info/schoolBus.asp">운행 노선 및 시간 알아보기</a>
        </div>
    </div> -->
</div>
<% End If %>