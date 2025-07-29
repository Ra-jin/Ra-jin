<div class="cont js-cont-wrap <%=campusName%>">

    <div class="cont04 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/cont04_tit.jpg" alt="여름방학을 치열하게 보내야 폭발적으로 성적을 향상시킬 수 있습니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/cont04_tit.jpg" alt="여름방학을 치열하게 보내야 최상위권으로 도약 할 수 있습니다."></p>
        <% End If %>
        <!-- 학년별 탭슬라이드 -->
        <div class="inner">
            <% If campus_code = "CD0257" Then '중계 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/cont04_stit01.jpg" alt="학년별 학습 목표"></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/cont04_stit01.jpg" alt="학년별 학습 목표"></p>
            <% End If %>
            <div class="grade-slide-wrap">
                <div class="grade-navi">
                    <div class="swiper-wrapper">
                        <% If campus_code = "CD0249" or campus_code = "CD0248" or campus_code = "CD0343" Then '영통/평촌/코어원주 %>
                        <div class="swiper-slide">중3</div>
                        <% End If %>
                        <% If campus_code <> "CD0341" and campus_code <> "CD0245" and campus_code <> "CD0244" Then '대전/목동/분당 제외 %>
                        <div class="swiper-slide">고1</div>
                        <% End If %>
                        <% If campus_code <> "CD0245" Then '목동 제외 %>
                        <div class="swiper-slide">고2</div>
                        <% End If %>
                        <div class="swiper-slide">고3</div>
                    </div>
                </div>
                <div class="grade-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 중3 -->
                        <% If campus_code = "CD0249" or campus_code = "CD0248" or campus_code = "CD0343" Then '영통/평촌/코어원주 %>
                            <% If campus_code = "CD0249" Then '영통 %>
                            <div class="swiper-slide">
                                <p class="tit">최상위권 달성을 위한<br>
                                    내신과 고등 과정 대비
                                </p>
                                <ul class="dot-blue">
                                    <li>고등 과정 대비와 함께 학습 습관 형성</li>
                                    <li>1학기 내신 취약 단원/파트 보완</li>
                                    <li>2학기 내신 대비 개념/유형 학습</li>
                                </ul>
                            </div>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <div class="swiper-slide">
                                <p class="tit">고입 대비 및 <br>
                                    고등학교 내신 준비!
                                </p>
                                <ul class="dot-blue">
                                    <li>고교 생활 적응을 위한 학습 습관 형성</li>
                                    <li>고1 1학기 내신 대비 개념/유형 학습</li>
                                </ul>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="swiper-slide">
                                <p class="tit">고등학교 입학 전 <br>
                                    학습 및 생활 습관 형성
                                </p>
                                <ul class="dot-blue ml10">
                                    <li >철저한 관리를 통한 학습 시간 확보</li>
                                    <li>증가되는 학습 시간 적응을 위한 습관 형성</li>
                                    <li>메가스터디 공채 강사진 강의 수강으로 실력 완성</li>
                                </ul>
                            </div>
                            <% End If %>
                        <% End If %>
                        <!-- 고1 -->
                        <% If campus_code <> "CD0341" and campus_code <> "CD0245" and campus_code <> "CD0244" Then '대전/목동/분당 제외 %>
                        <div class="swiper-slide">
                            <p class="tit">학습 습관 형성 및 <br>
                                2학기 내신 준비!
                            </p>
                            <ul class="dot-blue">
                                <li>대입 성공을 위한 학습 습관 형성</li>
                                <li>1학기 내신 취약 단원/파트 보완</li>
                                <li>2학기 내신 대비 개념/유형 학습</li>
                            </ul>
                        </div>
                        <% End If %>
                        <!-- //고1 -->
                        <!-- 고2 -->
                        <% If campus_code <> "CD0245" Then '목동 제외 %>
                        <div class="swiper-slide">
                            <p class="tit">경쟁자보다 한발 빠르게 <br>
                                수능과 내신을 동시에!
                            </p>
                            <ul class="dot-blue">
                                <% If campus_code <> "CD0341" Then '대전 제외 %>
                                    <% If campus_code = "CD0342" Then '대구 %>
                                    <li>2학기 내신 대비 및 수능 전형 준비</li>
                                    <% Else %>
                                    <li>1학기 내신 점검 및 2학기 내신 대비 학습</li>
                                    <% End If %>
                                <% End If %>
                                <li>주요 과목 수능 대비 학습</li>
                                <li>기출 등을 활용한 수능형 개념/유형 학습</li>
                            </ul>
                        </div>
                        <% End If %>
                        <!-- //고2 -->

                        <!-- 고3 -->
                        <div class="swiper-slide">
                            <p class="tit">N수생과의 격차를 좁혀 <br>
                                <% If campus_code = "CD0257" Then '중계 %>
                                성적 향상!
                                <% Else %>
                                최상위권으로 도약!
                                <% End If %>
                            </p>
                            <ul class="dot-blue">
                                <li>6월 평가원 기준 핵심 개념/유형 총 정리</li>
                                <li>약점, 실수 유형 집중 학습 및 보완</li>
                                <li>9월 평가원 대비 실전 모의고사 집중 훈련</li>
                            </ul>
                        </div>
                        <!-- //고3 -->   
                    </div>
                </div>
            </div>
            <!-- //학년별 탭슬라이드 -->
        </div>

        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/cont04_stit02.jpg" alt=""></p>
            <div class="method-wrap">
                <div class="method-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">학습에만<br> 몰입</div>
                        <div class="swiper-slide">학습 습관 <br>유지</div>
                        <div class="swiper-slide">약점 보완<br>학습</div>
                        <div class="swiper-slide">수시 대비<br>점검</div>
                    </div>
                </div>
                <div class="method-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 학습에만 몰입 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                온전히 학습에만 몰입
                            </p>
                            <p class="dc-txt">
                                개방형 구조 등 최적의 학습 환경과 <br>
                                최상의 면학 분위기에서 의무 자습으로<br>
                                학기 중 대비 충분한 자습 시간 확보
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/method_img01.jpg" alt=""></p>
                        </div>
                        <!-- 학습 습관 유지 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                철저한 관리로 학습 습관 유지
                            </p>
                            <p class="dc-txt">
                                입시 담임 선생님의 학기 중과 같은 <br>
                                규칙적인 등&middot;하원 및 매 교시 출결 관리로<br>
                                방학기간 동안 흐트러질 수 있는 학습 습관 유지
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/method_img02.jpg" alt=""></p>
                        </div>
                        <!-- 약점 보완학습 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                약점 보완 및 2학기 대비 학습
                            </p>
                            <p class="dc-txt">
                                학기 중 부족했던 과목/파트 보완하고 <br>
                                나에게 꼭 필요한 강좌를 선택하여<br>
                                <% If campus_code = "CD0341" Then '대전 %>
                                2학기 모의평가 대비 학습
                                <% Else %>
                                2학기 모의평가/내신 대비 학습
                                <% End If %>
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/method_img03.jpg" alt=""></p>
                        </div>
                        <!-- 수시 대비 점검 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                수시 전형 대비 사전 점검 및 설계
                            </p>
                            <p class="dc-txt">
                                입시 전문가인 입시 담임 선생님과의 <br>
                                정확한 학생부 진단 후 목표 대학/학과 등 <br>
                                수시 지원 전략 수립
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/method_img04.jpg" alt=""></p>
                        </div>
                    </div>
                </div>
            </div>          
            <!-- <a class="btn-common" href="<%=studyHall_btn_url%>"><%=studyHall_btn%></a> -->
        </div>
    </div>

    <% If campus_code = "CD0001" Then '대치 %>
    <div class="cont04-1 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/russel/2025/summer/cont04-1_tit.jpg" alt="오직 러셀 대치에서만 만날 수 있는 2025 썸머스쿨재원생 전용 과목별 실력 올리기 맞춤 콘텐츠"></p>
                <div class="inner">
            <div class="special-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">[고1] <br> 재원생 전용</div>
                    <div class="swiper-slide">[고2] <br> 재원생 전용</div>
                    <div class="swiper-slide">[고3] <br> 재원생 전용</div>
                </div>
            </div>
    
            <div class="special-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div>
                            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/special_slide01.jpg" alt="">
                            <a href="javascript:void(0)" class="bt-tt bt-tt01 js-mask"><span></span></a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div>
                            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/special_slide02.jpg" alt="">
                            <a href="javascript:void(0)" class="bt-tt bt-tt02 js-mask"><span></span></a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div>
                            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/special_slide03.jpg" alt="">
                            <a href="javascript:void(0)" class="bt-tt bt-tt03 js-mask"><span></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layer-tt layer01">
        <p class="mb20 bold2 f18">과목별 콘텐츠 구성</p>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
        <div class="tbl-scroll-x">
            <table class="tbl-type01" style="width: 150%;">
                <colgroup>
                    <col style="width: 14%;">
                    <col style="width: 14%;">
                    <col style="width: %;">
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>강사명</th>
                        <th>구성</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">국어</th>
                        <td>정이제T</td>
                        <td class="text-align-left">
                            <strong><오직, 러셀 대치 고1 친구들을 위한 여름방학 4주 국어 집중 과제: 깊이 있는 학습으로 실력 UP!></strong> <br>
                            - 단순히 문제만 풀고 답을 확인하는 학습이 아닌, 국어 실력의 근본적인 성장을 도모함. <br> <br>
    
                            1. 하루 30분, 꾸준한 국어 공부 습관 만들기 <br>
                            2. 문학 + 독서, 균형 잡힌 학습을 통해 내신과 모의고사 동시에 잡는 학습 도모 <br>
                            3. 단순한 정답 확인은 NO! 깊이 있는 학습을 위한 특별한 구성 <br>
                            - 독서 : 문단별 요약 연습 코너를 통해 글의 내용을 정확하게 이해하고 정리하는 능력을 향상. <br>
                            - 문학 : 작품 접근법 제시와 더불어 인물 관계도 등을 직접 그려보는 활동을 통해 문제 해결 능력을 향상 <br>
                            - 2학기 필수 작품 : 고1을 위한 필수 작품 읽기 활동 및 관련 문제 풀이를 통한 지식 쌓기
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">수학</th>
                        <td>조병근T</td>
                        <td class="text-align-left">
                            <strong><공통수학2 전 범위></strong> <br>
                            학교에서 제일 연계율이 높은 EBS 문항 모음! <br>
                            일일 10~15문제씩 BK (조병근T)가 직접 선별한 역대 EBS 연계 문항을 유형별로 연습(매주 50~75문제)
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">영어</th>
                        <td>박지수T</td>
                        <td class="text-align-left">
                            <strong><모의고사 기출 어법 OX></strong> <br>
                            Point1. 실전감 있는 내용  <br>
                            단순한 틀린 문장 찾기가 아닌, 모의고사 기반 문장에서  <br>
                            실전 문법을 더해, 정확한 어법 판단력과 해석력 동시 대비 <br> <br>
    
                            Point2. 단수 발췌NO! 직접 변형한 문항 <br>
                            기출 문장을 그대로 가져오는 데 그치지 않고,  <br>
                            내신 대비와 사고력 향상을 위해 어법 OX용으로 직접 변형하여 문제를 구성 <br> <br>
    
                            Point3. 어법 판단이 확실해지는 ‘포인트별 해설 자료’ <br>
                            정답만 아는 해설이 아닌, 근거와 판단 과정을 ‘항목별’로 정리해 주는 해설지 박지수 선생님 직접 제공 <br>
                            해설지에 문법 포인트, 어법 판단 근거, 품사 설명, 키워드 정리까지 체계적으로 분류되어 있어 높은 학습 효과를 기대
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="r-txt m0 mt5">* 원내 사정으로 과목별 구성은 변경될 수 있습니다.</p>
    </div>
    <div class="layer-tt layer02">
        <p class="mb20 bold2 f18">과목별 콘텐츠 구성</p>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
        <div class="tbl-scroll-x">
            <table class="tbl-type01" style="width: 150%;">
                <colgroup>
                    <col style="width: 12%;">
                    <col style="width: 12%;">
                    <col style="width: %;">
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>강사명</th>
                        <th>구성</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">국어</th>
                        <td>이민수T</td>
                        <td class="text-align-left">
                            <strong><1일 2지문 기출 분석 주간지></strong> <br>
                            - 주차별 독서, 문학 각 7지문 수록 <br>
                            - 평가원 기출 중 고2학생에게 적합한 근본 지문 선별 <br>
                            - 모든 지문에 대해 강사의 사고 흐름이 담긴 상세 해설지 제공 <br>
                            - 목표 : 근본적인 독해력과 선지 판단 능력 함양 <br>
                            <table class="tbl-type01 text-align-center mt10" style="width: 100%;">
                                <colgroup>
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th style="position: unset;"></th>
                                        <th style="position: unset;">1주차</th>
                                        <th style="position: unset;">2주차</th>
                                        <th style="position: unset;">3주차</th>
                                        <th style="position: unset;">4주차</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th class="bg-sky" style="position: unset;">독서</th>
                                        <td>인문</td>
                                        <td>사회</td>
                                        <td>과학</td>
                                        <td>기술</td>
                                    </tr>
                                    <tr>
                                        <th class="bg-sky" style="position: unset;">문학</th>
                                        <td>현대시</td>
                                        <td>고전시가</td>
                                        <td>현대소설</td>
                                        <td>고전소설</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">수학</th>
                        <td>이예린T</td>
                        <td class="text-align-left">
                            <strong><수학1,2 정시대비 기출 연습 주간지></strong> <br>
                            - 일일 10문제씩 평가원/교육청 기출문제를 유형별로 연습(매주 50문제) <br>
                            - 정시대비를 하는 고2 학생들을 위한 3~4점 문항  <br>
                            - 25년도 실시된 고3 교육청/평가원 기출문제 분석문항 포함 <br>
                            <table class="tbl-type01 text-align-center mt10" style="width: 100%;">
                                <colgroup>
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th style="position: unset;"></th>
                                        <th style="position: unset;">1주차</th>
                                        <th style="position: unset;">2주차</th>
                                        <th style="position: unset;">3주차</th>
                                        <th style="position: unset;">4주차</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th class="bg-sky" style="position: unset;">수학1</th>
                                        <td>지수와 로그</td>
                                        <td>삼각함수</td>
                                        <td>수열</td>
                                        <td>26대비 <br> 고3 문항</td>
                                    </tr>
                                    <tr>
                                        <th class="bg-sky" style="position: unset;">수학2</th>
                                        <td>함수의 극한과 연속</td>
                                        <td>미분</td>
                                        <td>적분</td>
                                        <td>25대비 <br> 고3 문항</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">영어</th>
                        <td>정성원T</td>
                        <td class="text-align-left">
                            <strong><일일 3문제></strong> <br>
                            -일일 3문제씩 주차별로 유형 연습 <br>
                            -고2 교육청 기출문제 중 적합한 선별지문 제공 <br>
                            -모든 지문에 대해 보기 별 선택비율 제공 <br>
                            <table class="tbl-type01 text-align-center mt10" style="width: 100%;">
                                <colgroup>
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th style="position: unset;"></th>
                                        <th style="position: unset;">1주차</th>
                                        <th style="position: unset;">2주차</th>
                                        <th style="position: unset;">3주차</th>
                                        <th style="position: unset;">4주차</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th class="bg-sky" style="position: unset;">일일 3문제</th>
                                        <td>함축의미 추론</td>
                                        <td>빈칸추론</td>
                                        <td>순서배열</td>
                                        <td>문장 삽입</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="r-txt m0 mt5">* 원내 사정으로 과목별 구성은 변경될 수 있습니다.</p>
    </div>
    <div class="layer-tt layer03">
        <p class="mb20 bold2 f18">콘텐츠 구성</p>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
        <p class="recruit-stit m0 mb10">공통과목(택1)</p>
        <table class="tbl-type01">
            <colgroup>
                <col style="width: 20%;">
                <col style="width: %;">
                <col style="width: %;">
            </colgroup>
            <thead>
                <tr>
                    <th>구분</th>
                    <th>[아이젠] 수1+수2</th>
                    <th>[아이젠] 수1+수2 블랙 <br> (최상위권 대상)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th class="bg-sky">구성</th>
                    <td>
                        4점 문항 집중훈련 <br>
                        상위권으로의 도약 <br>
                        (실수방지, 기본기 강화, 고득점 발판)
                    </td>
                    <td>
                        변별력 문항 집중훈련 <br>
                        만점 실력으로 도약 <br>
                        (최신경향 고난도 문항, 주제별 훈련)
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">문항 수</th>
                    <td>
                        매일 12문항 X 5일 <br>
                        주말 8문항 테스트, 매주 68문항 X 4주 <br>
                        시즌 272문항 (100% 자작)
                    </td>
                    <td>
                        매일 12문항 X 5일 <br>
                        주말 8문항 테스트, 매주 68문항 X 4주 <br>
                        시즌 272문항 (100% 자작)
                    </td>
                </tr>
            </tbody>
        </table>
        <p class="recruit-stit">선택과목(택1)</p>
        <div class="tbl-scroll-x">
            <table class="tbl-type01" style="width: 180%;">
                <colgroup>
                    <col style="width: 20%;">
                    <col style="width: %;">
                    <col style="width: %;">
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>[아이젠] 확통</th>
                        <th>[아이젠] 미적분</th>
                        <th>[아이젠] 기하</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">구성</th>
                        <td colspan="3">
                            필수 4점부터 변별력 문항까지 매일 훈련
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">문항 수</th>
                        <td>
                            매일 6문항 X 5일 <br>
                            주말 4문항 테스트 <br>
                            매주 34문항 X 4주 <br>
                            시즌 136문항 (100% 자작)
                        </td>
                        <td>
                            매일 6문항 X 5일 <br>
                            주말 4문항 테스트 <br>
                            매주 34문항 X 4주 <br>
                            시즌 136문항 (100% 자작)
                        </td>
                        <td>
                            매일 6문항 X 5일 <br>
                            주말 4문항 테스트 <br>
                            매주 34문항 X 4주 <br>
                            시즌 136문항 (100% 자작)
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="recruit-stit">아이젠 가격</p>
        <div class="tbl-scroll-x">
            <table class="tbl-type01" style="width: 200%;">
                <colgroup>
                    <col style="width: 14%;">
                    <col style="width: %;">
                    <col style="width: 22%;">
                    <col style="width: %;">
                    <col style="width: %;">
                    <col style="width: %;">
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>[아이젠] 수1+수2</th>
                        <th>[아이젠] 수1+수2 블랙</th>
                        <th>[아이젠] 확통</th>
                        <th>[아이젠] 미적분</th>
                        <th>[아이젠] 기하</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">판매가격/권</th>
                        <td>12,000원</td>
                        <td>12,000원</td>
                        <td>18,000원</td>
                        <td>18,000원</td>
                        <td>18,000원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">기간/분량</th>
                        <td>4주 4권</td>
                        <td>4주 4권</td>
                        <td>4주 1권</td>
                        <td>4주 1권</td>
                        <td>4주 1권</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">시즌 가격</th>
                        <td>48,000원</td>
                        <td>48,000원</td>
                        <td>18,000원</td>
                        <td>18,000원</td>
                        <td>18,000원</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="r-txt m0 mt5">* 원내 사정으로 구성은 변경될 수 있습니다.</p>
    </div>
    <% End If %>
    
</div>