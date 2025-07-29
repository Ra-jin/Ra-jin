<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_sm">
    <div class="cont00">
        <div class="inner">
            <!-- 모집개요 -->
            <h3 class="tit">남학생 전문관 윈터스쿨 <strong>모집 개요</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6997
            Else '실서버
                AGM_CD = 2080
            End If

            strSql = " SELECT AGM_CONTENT FROM MR_ACA_GUIDE_MAS WITH(NOLOCK) WHERE AGM_IDX = " & AGM_CD
            Set Rs = russelobjdb.sqlQuery(strSql,1)
            If Not (Rs.eof Or Rs.bof) Then
                dbContents = UnsafeQuery(Rs("AGM_CONTENT"))
                dbContents = Replace(Replace(Trim(dbContents),"<IMG ", "<IMG name='img_desc' "),"<img ", "<img name='img_desc' ")
                dbContents = Replace(Replace(dbContents,"ja_va_sc","javascript"),"a_lert","alert")
            End If 
            Rs.close
            Set Rs = Nothing
            Response.Write dbContents
            %>
            <!-- //모집요강 자동화 시스템 영역 -->

            <!-- 등록 안내 -->
            <h3 class="tit mt100">남학생 전문관 윈터스쿨 <strong>등록 안내</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6998
            Else '실서버
                AGM_CD = 2081
            End If

            strSql = " SELECT AGM_CONTENT FROM MR_ACA_GUIDE_MAS WITH(NOLOCK) WHERE AGM_IDX = " & AGM_CD
            Set Rs = russelobjdb.sqlQuery(strSql,1)
            If Not (Rs.eof Or Rs.bof) Then
                dbContents = UnsafeQuery(Rs("AGM_CONTENT"))
                dbContents = Replace(Replace(Trim(dbContents),"<IMG ", "<IMG name='img_desc' "),"<img ", "<img name='img_desc' ")
                dbContents = Replace(Replace(dbContents,"ja_va_sc","javascript"),"a_lert","alert")
            End If 
            Rs.close
            Set Rs = Nothing
            Response.Write dbContents
            %>
            <!-- //모집요강 자동화 시스템 영역 -->

            <!-- 입학 절차 안내 -->
            <h3 class="tit mt100">남학생 전문관 윈터스쿨<strong> 입학 절차 안내</strong></h3>
            <ul class="a-process step-over full-step">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>상담</p>
                    <ul class="list-03">
                        <li>온라인 상담</li>
                        <li>전화 상담</li>
                        <li>방문 상담:  원서접수 <br>
                            후 사전예약자에 한 함</li>
                    </ul>
					<div class="mt5 fz13 ml10 mr10" style="color: #aaa;">※ 학원사정에 따라 변경될 수 있음</div>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>원서접수</p>
                    <ul class="list-03">
                        <li>온라인 원서접수<br>
                        (PC버전)</li>
                        <li>성적 필수 기입</li>
                        <li>성적표 첨부</li>
                    </ul>
                    <a href="https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=191" class="btn-gray-s mt15">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>서류심사</p>
                    <ul class="list-03">
                        <li>입학여부 유선 안내</li>
                        <li>전형 자격 요건 확인</li>
                        <li>학원 규칙 준수 여부 확인</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>등록</p>
                    <ul class="list-03">
                        <li>등록예약금 납부</li>
                        <li>입학 일정 확인</li>
                        <li>제출 서류 안내</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학</p>
                    <ul class="list-03">
                        <li>잔금 납부</li>
                        <li>제출 서류 확인</li>
                        <li>입학 준비물 안내</li>
                        <li>입학 일시 준수</li>
                    </ul>
                </li>
            </ul>
            <!-- 입학 절차 안내 -->
            
            <h3 class="tit mt100">2026 윈터스쿨 <strong>학습계획표</strong></h3>
            <div class="tab-cont-wrap tbl-box">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
                    <a href="javascript:void(0);" class="bt-tab" data-lock="true"><strong>고2</strong></a>
                </div>

                <!-- 고3 -->
                <div class="cont-box on mt30">
                    <p class="full-tit-sq">고3 과정 학습계획표 (국어/수학/영어)</p>
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width:7%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th rowspan="2">구분</th>
                                <th rowspan="2">국어</th>
                                <th class="b-r" colspan="3">수학</th>
                                <th rowspan="2">영어</th>
                            </tr>
                            <tr>
                                <th>공통과목</th>
                                <th colspan="2">선택과목</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-sky">학습목표</th>
                                <td class="bg-sky txt-left">수능<국어>영역에 대한 전반적인 이해와 세부 영역으로서의 ‘문학‘,’독서’의 원래 이해, 이를 바탕으로 한 기본 접근법을 학습한다.</td>
                                <td class="bg-sky txt-left"><strong>수학1, 수학2</strong><br>
                                    개념 복습과 모의고사 및 <br>
                                    수능 기출 풀이를 통한 실력완성</td>
                                <td class="bg-sky txt-left"><strong>미적분</strong><br>
                                    개념완성 및 <br>
                                    내신, 수능 기출 풀이</td>
                                <td class="bg-sky txt-left"><strong>확률과통계</strong></td>
                                <td class="bg-sky txt-left">
                                    &middot; 절대평가 1등급을 위한 기출 어휘 끝내기<br>
                                    &middot; 심화구문 해석능력 배양<br>
                                    &middot; 문제 해결능력 확립<br>
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">1주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>2025학년도 대학수학능력시험 엿보기, 문학 출제 원리 확인하기<br>
                                    <strong>&middot; 독서 : </strong>2025학년도 대학수학능력시험 엿보기, 독서 지문의 논리적 흐름 확인하기
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>지수와 로그~지수함수와 로그함수<br>
                                    <strong>&middot; 수학2 : </strong>함수의 극한~함수의 연속성
                                </td>
                                <td class="txt-left">수열의 극한~급수</td>
                                <td class="txt-left">여러 가지 순열</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>3줄 이상의 긴 지문 구조해석<br>
                                    <strong>&middot; 독해 : </strong>정보연결 (대의파악)<br>
                                    <strong>&middot; 듣기 : </strong>짧은 대화 후 이어질 말
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">2주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>현대시 읽기 원리 분석 및 기출 문제 풀이<br>
                                    <strong>&middot; 독서 : </strong>문장과 문장 사이에 존재하는 논리 관계 파악
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>삼각함수의 뜻과 정의 ~ 삼각함수의 활용<br>
                                    <strong>&middot; 수학2 : </strong>미분계수와 도함수~접선의 방정식
                                </td>
                                <td class="txt-left">초월함수의 극한~여러가지 미분법</td>
                                <td class="txt-left">중복조합과 이항 정리</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>강조구문/병렬구문<br>
                                    <strong>&middot; 독해 : </strong>간접쓰기(순서/삽입)<br>
                                    <strong>&middot; 듣기 : </strong>계산문제<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(1) 
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">3주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>고전시가 읽기 원리 분석 및 기출 문제 풀이 <br>
                                    <strong>&middot; 독서 : </strong>단락과 단락 사이에 존재하는 논리 관계 파악
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>등차등비수열~여러 가지 수열<br>
                                    <strong>&middot; 수학2 : </strong>도함수의 활용 
                                </td>
                                <td class="txt-left">도함수의 활용</td>
                                <td class="txt-left">확률의 뜻과 활용<br>
                                    조건부확률(1)</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>도치구문/생략구문<br>
                                    <strong>&middot; 독해 : </strong>빈칸완성<br>
                                    <strong>&middot; 듣기 : </strong>일치하지 않는 것 고르기<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(2) 
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">4주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>고전시가 읽기 원리 분석 및 기출 문제 풀이 Ⅱ<br>
                                    <strong>&middot; 독서 : </strong>서론을 토대로 글 분석
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>여러 가지 수열~수학적 귀납법<br>
                                    <strong>&middot; 수학2 : </strong>부정적분과 정적분
                                </td>
                                <td class="txt-left">부정적분과 정적분</td>
                                <td class="txt-left">조건부확률(2)<br>
                                    확률분포(이산확률분포)</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>부정구문<br>
                                    <strong>&middot; 독해 : 함의추론</strong><br>
                                    <strong>&middot; 듣기 : </strong>1지문 2문항<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(3)
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">5주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>소설 문학 읽기 원리 분석 및 기출문제 풀이<br>
                                    <strong>&middot; 작문&middot;화법 : </strong>반복되는 문제 유형<br>
                                    <strong>&middot; 문법 : </strong>문법 개념
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>수학적 귀납법(1)<br>
                                    <strong>&middot; 수학2 : </strong>정적분의 활용(1)
                                </td>
                                <td class="txt-left">정적분의 활용(1)</td>
                                <td class="txt-left">확률분포(연속확률분포)</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>특수구문(1)<br>
                                    <strong>&middot; 독해 : </strong>고난도장문 (1)/ 어휘 PART(1)<br>
                                    <strong>&middot; 듣기 : </strong>1지문 2문항 (2)<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(4)  
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">6주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>고전산문 읽기  원리 분석 및 기출문제풀이<br>
                                    <strong>&middot; 독서 : </strong>지문 주제 파악하기
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>수학적 귀납법(2)<br>
                                    <strong>&middot; 수학2 : </strong>정적분의 활용(2)
                                </td>
                                <td class="txt-left">정적분의 활용(2)</td>
                                <td class="txt-left">통계적 추정</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>특수구문(2)<br>
                                    <strong>&middot; 독해 : </strong>고난도장문(2) / 어휘 PART(2)<br>
                                    <strong>&middot; 듣기 : </strong>1지문 2문항 (3)<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(5)
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <p class="full-tit-sq">고3 과정 학습계획표 (과학탐구)</p>
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width:7%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th>구분</th>
                                <th>1주차</th>
                                <th>2주차</th>
                                <th>3주차</th>
                                <th>4주차</th>
                                <th>5주차</th>
                                <th>6주차</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-th">물리학 Ⅰ</th>
                                <td class="txt-left">&middot; 등가속도운동</td>
                                <td class="txt-left">&middot; 뉴턴의 운동법칙</td>
                                <td class="txt-left">&middot; 운동량과충격량&일과에너지</td>
                                <td class="txt-left">&middot; 열역학&특수상대성이론</td>
                                <td class="txt-left">&middot; 전기력선&자기력선</td>
                                <td class="txt-left">&middot; 파동과 전반사</td>
                            </tr>
                            <tr>
                                <th class="bg-th">화학 Ⅰ</th>
                                <td class="txt-left">&middot; 원자 &middot; 분자 양적관계<br>
                                    &middot; 화학반응 양적관계</td>
                                <td class="txt-left">&middot; 용액<br>
                                    &middot; 동위원소</td>
                                <td class="txt-left">&middot; 오비탈과 전자배치<br>
                                    &middot; 주기적 성질</td>
                                <td class="txt-left">&middot; 화학결합
                                    &middot; 분자구조</td>
                                <td class="txt-left">&middot; PH<br>
                                    &middot; 산 &middot; 염기 중화반응<br>
                                    &middot; 산화 &middot; 환원</td>
                                <td class="txt-left">&middot; 양적관계<br>
                                    &middot; 중화반응 실전공략</td>
                            </tr>
                            <tr>
                                <th class="bg-th">생명과학 Ⅰ</th>
                                <td class="txt-left">&middot; 자극전달,근 수축</td>
                                <td class="txt-left">&middot; 근 수축, 신경계,항상성,방어</td>
                                <td class="txt-left">&middot; 신경계 향상성,방어</td>
                                <td class="txt-left">&middot; 핵상,핵형,세표분열</td>
                                <td class="txt-left">&middot; 사람의 유진(1)</td>
                                <td class="txt-left">&middot; 사람의 유전(2)</td>
                            </tr>
                            <tr>
                                <th class="bg-th">지구과학 Ⅰ</th>
                                <td class="txt-left">&middot; 별의 물리량</td>
                                <td class="txt-left">&middot; H-R도와 별의 종류<br>
                                    &middot; 별의 진화</td>
                                <td class="txt-left">&middot; 별의 에너지원과 내부 구조<br>
                                    &middot; 외계 행성계와 외계 생명체 탐사</td>
                                <td class="txt-left">&middot; 외계 행성계와 외계 생명체 탐사<br>
                                    &middot; 외부 은하<br>
                                    &middot; 허블 법칙과 우주론</td>
                                <td class="txt-left">&middot; 허블 법칙과 우주론<br>
                                    &middot; 암흑 물질과 암흑 에너지</td>
                                <td class="txt-left">&middot; 온대 저기압과 태풍</td>
                            </tr>
                        </tbody>
                    </table>

                    <p class="full-tit-sq">고3 과정 학습계획표 (사회탐구)</p>
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width:7%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th>구분</th>
                                <th>1주차</th>
                                <th>2주차</th>
                                <th>3주차</th>
                                <th>4주차</th>
                                <th>5주차</th>
                                <th>6주차</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-th">생활과윤리</th>
                                <td class="txt-left">윤리학의 분류 & 윤리 이론</td>
                                <td class="txt-left">동서양의 윤리 이론</td>
                                <td class="txt-left">사회정의윤리(1)</td>
                                <td class="txt-left">사회정의윤리(2)</td>
                                <td class="txt-left">자연과 윤리</td>
                                <td class="txt-left">지구촌 평화 윤리</td>
                            </tr>
                            <tr>
                                <th class="bg-th">사회문화</th>
                                <td class="txt-left">사회문화 현상의 탐구 1</td>
                                <td class="txt-left">사회문화 현상의 탐구2</td>
                                <td class="txt-left">개인의 사회구조1</td>
                                <td class="txt-left">개인의 사회구조2</td>
                                <td class="txt-left">문화와 일상생활1</td>
                                <td class="txt-left">문화와 일상생활2</td>
                            </tr>
                            <tr>
                                <th class="bg-th">윤리와사상</th>
                                <td class="txt-left">동양 윤리의 연원과 전개</td>
                                <td class="txt-left">동양 윤리 집중 정리</td>
                                <td class="txt-left">서양 윤리 집중 정리(1)</td>
                                <td class="txt-left">서양윤리 집중 정리(2)</td>
                                <td class="txt-left">한국 윤리 집중 정리</td>
                                <td class="txt-left">사회 윤리 집중 정리</td>
                            </tr>
                            <tr>
                                <th class="bg-th">한국지리</th>
                                <td class="txt-left">국토 인식과 지리 정보<br>
                                    지역적 위치 학습</td>
                                <td class="txt-left">지형 환경과 인간 생활(1)</td>
                                <td class="txt-left">지형 환경과 인간 생활(2)</td>
                                <td class="txt-left">기후 환경과 인간 생활</td>
                                <td class="txt-left">거주 공간의 변화와 지역 개발</td>
                                <td class="txt-left">자원의 의미/  북한 지역</td>
                            </tr>
                            <tr>
                                <th class="bg-th">세계지리</th>
                                <td class="txt-left">세계화와 지역 이해<br>
                                    대륙별 위치 학습</td>
                                <td class="txt-left">세계의 자연 환경과 인간 생활(1)</td>
                                <td class="txt-left">세계의 자연 환경과 인간 생활(2)</td>
                                <td class="txt-left">세계의 인문 환경과 인문 경관</td>
                                <td class="txt-left">몬순 아시아와 오세아니아</td>
                                <td class="txt-left">유럽과 북부아메리카</td>
                            </tr>
                            <tr>
                                <th class="bg-th">세계사</th>
                                <td class="txt-left">이슬람세계</td>
                                <td class="txt-left">유럽사회의 형성</td>
                                <td class="txt-left">시민혁명</td>
                                <td class="txt-left">중국, 일본</td>
                                <td class="txt-left">1차 세계대전</td>
                                <td class="txt-left">2차 세계대전과 냉전</td>
                            </tr>
                            <tr>
                                <th class="bg-th">동아시아사</th>
                                <td class="txt-left">고대 동아시아</td>
                                <td class="txt-left">수-당시대</td>
                                <td class="txt-left">송~원시대</td>
                                <td class="txt-left">명~청시대</td>
                                <td class="txt-left">근대 동아시아</td>
                                <td class="txt-left">현대 동아시아</td>
                            </tr>
                            <tr>
                                <th class="bg-th">정치와법</th>
                                <td class="txt-left">민주주의의 이념<br>
                                    민주주의의 원리</td>
                                <td class="txt-left">정부형태<br>
                                    선거제도</td>
                                <td class="txt-left">국회<br>
                                    사법부<br>
                                    헌번재판제도</td>
                                <td class="txt-left">계약과 미성년자의 권리보호<br> 
                                    가족관계와 법</td>
                                <td class="txt-left">범죄와 형벌<br>
                                    청소년범죄<br>
                                    근로기준법</td>
                                <td class="txt-left">형사소송법</td>
                            </tr>
                        </tbody>
                    </table>

                    <p class="full-tit-sq">고3 과정 학습계획표 (수리논술)</p>
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width:7%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th>구분</th>
                                <th>1주차</th>
                                <th>2주차</th>
                                <th>3주차</th>
                                <th>4주차</th>
                                <th>5주차</th>
                                <th>6주차</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-th">수리논술</th>
                                <td class="txt-left">&middot; 수능 VS 수리논술<br>
                                    &middot; 논증<br>
                                    &middot; 귀납추론</td>
                                <td class="txt-left">&middot; 수학적 귀납법, 귀류법</td>
                                <td class="txt-left">&middot; 귀납추론 심화</td>
                                <td class="txt-left">&middot; 함수일반 1: 정의</td>
                                <td class="txt-left">&middot; 함수 일반 2: 함수의 정보추론</td>
                                <td class="txt-left">&middot; (함수)극한의 정의+성질<br>
                                    &middot; (함수)연속의 정의</td>
                            </tr>
                        </tbody>
                    </table>

                    <p class="full-tit-sq">고3 과정 학습계획표 (인문논술)</p>
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width:7%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th>구분</th>
                                <th>1주차</th>
                                <th>2주차</th>
                                <th>3주차</th>
                                <th>4주차</th>
                                <th>5주차</th>
                                <th>6주차</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-th">인문논술</th>
                                <td class="txt-left">&middot; 짧은 글쓰기</td>
                                <td class="txt-left">&middot; 비교와 대조</td>
                                <td class="txt-left">&middot; 분류와 분석</td>
                                <td class="txt-left">&middot; 비판과 대안</td>
                                <td class="txt-left">&middot; 주장형</td>
                                <td class="txt-left">&middot; 자료해석</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- 고2 -->
                <!-- <div class="cont-box mt30">
                    <p class="full-tit-sq">고2 과정 학습계획표 (국어/수학/영어)</p>
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width:7%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th rowspan="2">구분</th>
                                <th rowspan="2">국어</th>
                                <th colspan="2">수학</th>
                                <th rowspan="2">영어</th>
                            </tr>
                            <tr class="low">
                                <th>공통과목</th>
                                <th>선택과목</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-sky">학습목표</th>
                                <td class="bg-sky txt-left">수능<국어>영역에 대한 전반적인 이해와 세부 영역으로서의 ‘문학’,
                                    ‘독서’의 원래 이해, 이를 바탕으로 한 기본 접근법을 학습한다.</td>
                                <td class="bg-sky txt-left"><strong>수학1, 수학2</strong><br>
                                    개념 복습과 모의고사 및 <br>
                                    수능 기출 풀이를 통한 실력완성</td>
                                <td class="bg-sky txt-left"><strong>미적분</strong><br>
                                    개념완성 및 <br>
                                    내신, 수능 기출 풀이</td>
                                <td class="bg-sky txt-left"><strong>&middot; 절대평가 1등급을 위한  기출 어휘 끝내기<br>
                                    &middot; 심화구문 해석능력 배양<br>
                                    &middot; 문제 해결능력 확립</strong></td>
                            </tr>
                            <tr>
                                <th class="bg-th">1주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 :</strong> 2025학년도 대학수학능력시험 엿보기, 문학 출제 원리 확인하기<br>
                                    <strong>독서 :</strong> 2025학년도 대학수학능력시험 엿보기, 독서 지문의 논리적 흐름 확인하기
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 :</strong>지수와 로그~지수함수와 로그함수<br>
                                    <strong>&middot; 수학2 :</strong>함수의 극한~함수의 연속성</td>
                                <td class="txt-left">수열의 극한~급수</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>3줄 이상의 긴 지문 구조해석<br>
                                    <strong>&middot; 독해 : </strong>정보연결 (대의파악)<br>
                                    <strong>&middot; 듣기 : </strong>짧은 대화 후 이어질 말
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">2주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>현대시 읽기 원리 분석 및 기출 문제 풀이<br>
                                    <strong>독서 : </strong>문장과 문장 사이에 존재하는 논리 관계 파악
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>삼각함수의 뜻과 정의 ~ 삼각함수의 활용<br>
                                    <strong>&middot; 수학2 : </strong>미분계수와 도함수~접선의 방정식</td>
                                <td class="txt-left">초월함수의 극한~여러가지 미분법</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>강조구문/병렬구문<br>
                                    <strong>&middot; 독해 : </strong>간접쓰기(순서/삽입)<br>
                                    <strong>&middot; 듣기 : </strong>계산문제<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(1) 
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">3주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>고전시가 읽기 원리 분석 및 기출 문제 풀이 <br>
                                    <strong>독서 : </strong>단락과 단락 사이에 존재하는 논리 관계 파악
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>등차등비수열~여러 가지 수열<br>
                                    <strong>&middot; 수학2 : </strong>도함수의 활용</td>
                                <td class="txt-left">도함수의 활용</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>도치구문/생략구문<br>
                                    <strong>&middot; 독해 : </strong>빈칸완성<br>
                                    <strong>&middot; 듣기 : </strong>일치하지 않는 것 고르기<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(2) 
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">4주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>고전시가 읽기 원리 분석 및 기출 문제 풀이 Ⅱ<br>
                                    <strong>독서 : </strong>서론을 토대로 글 분석
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>여러 가지 수열~수학적 귀납법<br>
                                    <strong>&middot; 수학2 : </strong>부정적분과 정적분</td>
                                <td class="txt-left">부정적분과 정적분</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>부정구문<br>
                                    <strong>&middot; 독해 : 함의추론</strong><br>
                                    <strong>&middot; 듣기 : </strong>1지문 2문항<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(3)
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">5주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 : </strong>소설 문학 읽기 원리 분석 및 기출문제 풀이
                                    <strong>작문?화법 : </strong>반복되는 문제 유형<br>
                                    <strong>문법 :</strong>문법 개념
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 : </strong>수학적 귀납법(1)<br>
                                    <strong>&middot; 수학2 : </strong>정적분의 활용(1)</td>
                                <td class="txt-left">정적분의 활용(1)</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>특수구문<br>
                                    <strong>&middot; 독해 : </strong>고난도장문 / 어휘 PART<br>
                                    <strong>&middot; 듣기 : </strong>1지문 2문항 (2)<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(4)
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">6주차</th>
                                <td class="txt-left">
                                    <strong>&middot; 문학 :</strong>고전산문 읽기  원리 분석 및 기출문제풀이<br>
                                    <strong>독서 :</strong>지문 주제 파악하기
                                </td>
                                <td class="txt-left">
                                    <strong>&middot; 수학1 :</strong>수학적 귀납법(2)<br>
                                    <strong>&middot; 수학2 :</strong>정적분의 활용(2)</td>
                                <td class="txt-left">정적분의 활용(2)</td>
                                <td class="txt-left">
                                    <strong>&middot; 구문 : </strong>특수구문(2)<br>
                                    <strong>&middot; 독해 : </strong>고난도장문(2) / 어휘 PART(2)<br>
                                    <strong>&middot; 듣기 : </strong>1지문 2문항 (3)<br>
                                    <strong>&middot; 과제 : </strong>기출 모의고사 풀이(5)
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <p class="full-tit-sq">고2 과정 학습계획표 (과학탐구)</p>
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width:7%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th>구분</th>
                                <th>1주차</th>
                                <th>2주차</th>
                                <th>3주차</th>
                                <th>4주차</th>
                                <th>5주차</th>
                                <th>6주차</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-th">물리학 Ⅰ</th>
                                <td class="txt-left">&middot; 등가속도운동</td>
                                <td class="txt-left">&middot; 뉴턴의 운동법칙</td>
                                <td class="txt-left">&middot; 운동량과충격량&일과에너지</td>
                                <td class="txt-left">&middot; 열역학&특수상대성이론</td>
                                <td class="txt-left">&middot; 전기력선&자기력선</td>
                                <td class="txt-left">&middot; 파동과 전반사</td>
                            </tr>
                            <tr>
                                <th class="bg-th">화학 Ⅰ</th>
                                <td class="txt-left">&middot; 원자 &middot; 분자 양적관계<br>
                                    &middot; 화학반응 양적관계</td>
                                <td class="txt-left">&middot; 용액<br>
                                    동위원소</td>
                                <td class="txt-left">&middot; 오비탈과 전자배치<br>
                                    &middot; 주기적 성질</td>
                                <td class="txt-left">&middot; 화학결합<br>
                                    &middot; 분자구조</td>
                                <td class="txt-left">&middot; PH<br>
                                    &middot; 산 &middot; 염기 중화반응<br>
                                    &middot; 산화 &middot; 환원</td>
                                <td class="txt-left">&middot; 양적관계<br>
                                    &middot; 중화반응 실전공략</td>
                            </tr>
                            <tr>
                                <th class="bg-th">생명과학 Ⅰ</th>
                                <td class="txt-left">&middot; 자극전달,근 수축</td>
                                <td class="txt-left">&middot; 근 수축, 신경계,항상성,방어</td>
                                <td class="txt-left">&middot; 신경계 향상성,방어</td>
                                <td class="txt-left">&middot; 핵상,핵형,세표분열</td>
                                <td class="txt-left">&middot; 사람의 유진(1)</td>
                                <td class="txt-left">&middot; 사람의 유전(2)</td>
                            </tr>
                            <tr>
                                <th class="bg-th">지구과학 Ⅰ</th>
                                <td class="txt-left">&middot; 별의 물리량</td>
                                <td class="txt-left">&middot; H-R도와 별의 종류<br>
                                    &middot; 별의 진화</td>
                                <td class="txt-left">&middot; 별의 에너지원과 내부 구조<br>
                                    &middot; 외계 행성계와 외계 생명체 탐사</td>
                                <td class="txt-left">&middot; 외계 행성계와 외계 생명체 탐사<br>
                                    &middot; 외부 은하<br>
                                    &middot; 허블 법칙과 우주론
                                </td>
                                <td class="txt-left">&middot; 허블 법칙과 우주론<br>
                                    &middot; 암흑 물질과 암흑 에너지</td>
                                <td class="txt-left">&middot; 온대 저기압과 태풍</td>
                            </tr>
                        </tbody>
                    </table>

                    <p class="full-tit-sq">고2 과정 학습계획표 (수리논술)</p>
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width:7%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th>구분</th>
                                <th>1주차</th>
                                <th>2주차</th>
                                <th>3주차</th>
                                <th>4주차</th>
                                <th>5주차</th>
                                <th>6주차</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-th">수리논술</th>
                                <td class="txt-left">&middot; 수능 VS 수리논술<br>
                                    &middot; 직접 논증법<br>
                                    &middot; 간접 논증법</td>
                                <td class="txt-left">&middot; 대수 일반</td>
                                <td class="txt-left">&middot; 등식이론</td>
                                <td class="txt-left">&middot; 부등식 이론</td>
                                <td class="txt-left">&middot; 함수 일반</td>
                                <td class="txt-left">&middot; 기하 일반</td>
                            </tr>
                        </tbody>
                    </table>
                </div> -->
            </div>
            <p class="r-txt">※ 학습계획표는 학원 사정에 의해 변경될 수 있습니다.</p>
        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
        function tabMenu(tabSelector, contentSelector) {
            $(tabSelector).on('click', function(e) {
                if ($(this).data('lock')) {
                    e.preventDefault();
                    alert('추후 공개예정입니다.');
                    return; // 탭 전환 막기
                }

                const idx = $(this).index();
                $(tabSelector).removeClass('active');
                $(this).addClass('active');
                $(contentSelector).hide().eq(idx).show();
            });
        }
    })
</script>