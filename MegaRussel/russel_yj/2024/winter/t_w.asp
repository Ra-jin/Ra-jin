<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_w">
    <div class="cont11">
        <div class="inner">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5565
            Else '실서버
                AGM_CD = 1628
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
            

            <!-- 입학 절차 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>입학 절차</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서 접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 온라인 원서 접수</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/합격안내
                    </p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인</li>
                        <li> 학원 규칙 준수 여부 확인</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>등록예약금 납부</p>
                    <ul class="list-03">
                        <li> 가상계좌 발송(카카오톡/문자)
                        </li>
                        <li> 예약금 미납 시 합격 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>입학 안내전화<br>
                    /잔금 납부
                    </p>
                    <ul class="list-03">
                        <li> 입학 한달 전 안내전화 진행
                        </li>
                        <li> 수강료 잔금 납부</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p class="two-line">입학</p>
                    <ul class="list-03">
                        <li> 제출서류/입학준비물 준비</li>
                        <li> 개강일/입소시간 준수</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 -->
        </div>
    </div>
</div>
<div class="cont js-cont russel_w">
    <div class="cont12">
        <div class="inner">
            <!-- 학습계획표 -->
            <h3 class="tit">2025 윈터스쿨 <strong>학습계획표 [고3 과정]</strong></h3>
            <div class="tab-cont-wrap">
                <div class="bt-tab type02 go3">
                    <a href="#" class="on">국어 / 수학 / 영어</a>
                    <a href="#">과학탐구 / 수리논술</a>
                </div>
                <p class="r-txt mb20">※ 학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.
                </p>
                <div class="cont-box go3 on">
                    <div class="tbl-box">
                        <p class="full-tit-sq mt0 mb0">국어/수학/영어 학습계획표
                        </p>
                        <p class="r-txt txt-red mt0">※ 수학 추가 선택 수업 (미적분,기하)은 추가 수업료가 발생됩니다.
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:10%">
                                <col style="width:30%">
                                <col style="width:20%">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:18%">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th rowspan="2">구분</th>
                                    <th rowspan="2">국어</th>
                                    <th colspan="3">수학</th>
                                    <th rowspan="2">영어</th>
                                </tr>
                                <tr class="low">
                                    <th>필수 수업</th>
                                    <th colspan="2">추가 선택 수업</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th class="bg-sky">학습목표</th>
                                    <td class="bg-sky tal">
                                        수능&lt;국어&gt;영역에 대한 전반적인 이해와 세부 영역으로서의 ‘문학’,‘독서’의 원래 이해, 이를 바탕으로 한 기본 접근법을 학습한다.

                                    </td>
                                    <td class="bg-sky tal">
                                        <strong>수학1, 수학2</strong><br>
                                        <br>
                                        개념 복습과 모의고사 및 <br>
                                        수능 기출 풀이를 통한 실력완성
                                        
                                    </td>
                                    <td class="bg-sky tal">
                                        <strong>미적분</strong><br>
                                        <br>
                                        개념완성 및 <br>
                                        내신, 수능 기출 풀이
                                        
                                    </td>
                                    <td class="bg-sky tal">
                                        <strong>기하</strong><br>
                                        <br>
                                        개념완성 및 <br>
                                        내신, 수능 기출 풀이
                                        
                                    </td>
                                    <td class="bg-sky tal">
                                        <strong>
                                            &middot; 절대평가 1등급을 위한 <br>
                                            기출 어휘 끝내기<br>
                                            &middot; 심화구문 해석능력 배양<br>
                                            &middot; 문제 해결능력 확립
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <th>1주차</th>
                                    <td class="tal">
                                        <strong>&middot; 문학 :</strong> 2025학년도 대학수학능력시험 엿보기, 문학 출제 원리 확인하기<br>
                                        <strong>&middot; 독서 :</strong> 2025학년도 대학수학능력시험 엿보기, 독서 지문의 논리적 흐름 확인하기
                                    </td>
                                    <td class="tal">
                                        &middot; 수학1  : 지수와 로그~지수함수와 로그함수<br>
                                        &middot; 수학2  : 함수의 극한~함수의 연속성
                                    </td>
                                    <td class="tal">
                                        수열의 극한~급수
                                    </td>
                                    <td class="tal">
                                        이차곡선
                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 문장의 형식과 구조<br>
                                        <strong>&middot; 독해 :</strong> 대의 파악 유형<br>
                                        <strong>&middot; 듣기 :</strong> 짧은 대화 후 이어질 말
                                    </td>
                                </tr>
                                <tr>
                                    <th>2주차</th>
                                    <td class="tal">
                                        <strong>&middot; 문학 :</strong> 현대시 읽기 원리 분석 및 기출 문제 풀이<br>
                                        <strong>&middot; 독서 :</strong> 문장과 문장 사이에 존재하는 논리 관계 파악

                                    </td>
                                    <td class="tal">
                                        &middot; 수학1  : 삼각함수의 뜻과 정의 ~ 삼각함수의 활용<br>
                                        &middot; 수학2 : 미분계수와 도함수~접선의 방정식

                                    </td>
                                    <td class="tal">
                                        초월함수의 극한~여러가지 미분법

                                    </td>
                                    <td class="tal">
                                        이차곡선-평면벡터

                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 강조구문/병렬구문<br>
                                        <strong>&middot; 독해 :</strong> 간접쓰기(순서/삽입)<br>
                                        <strong>&middot; 듣기 :</strong> 계산문제<br>
                                        <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(1) 

                                    </td>
                                </tr>
                                <tr>
                                    <th>3주차</th>
                                    <td class="tal">
                                        <strong>&middot; 문학 :</strong> 고전시가 읽기 원리 분석 및 기출 문제 풀이 Ⅰ<br>
                                        <strong>&middot; 독서 :</strong> 단락과 단락 사이에 존재하는 논리 관계 파악

                                    </td>
                                    <td class="tal">
                                        &middot; 수학1 : 등차등비수열~여러 가지 수열<br>
                                        &middot; 수학2 : 도함수의 활용

                                    </td>
                                    <td class="tal">
                                        도함수의 활용

                                    </td>
                                    <td class="tal">
                                        평면벡터
                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 도치구문/생략구문<br>
                                        <strong>&middot; 독해 :</strong> 빈칸완성(1)<br>
                                        <strong>&middot; 듣기 :</strong> 일치하지 않는 것 고르기<br>
                                        <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(2) 

                                    </td>
                                </tr>
                                <tr>
                                    <th>4주차</th>
                                    <td class="tal">
                                        <strong>&middot; 문학 :</strong> 고전시가 읽기 원리 분석 및 기출 문제 풀이 Ⅱ<br>
                                        <strong>&middot; 독서 :</strong> 서론을 토대로 글 분석

                                    </td>
                                    <td class="tal">
                                        &middot; 수학1 : 여러 가지 수열~수학적 귀납법<br>
                                        &middot; 수학2 : 부정적분과 정적분

                                    </td>
                                    <td class="tal">
                                        부정적분과 정적분

                                    </td>
                                    <td class="tal">
                                        공간도형
                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 부정구문<br>
                                        <strong>&middot; 독해 :</strong> 빈칸완성(2)<br>
                                        <strong>&middot; 듣기 :</strong> 1지문 2문항<br>
                                        <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(3)

                                    </td>
                                </tr>
                                <tr>
                                    <th>5주차</th>
                                    <td class="tal">
                                        <strong>&middot; 문학 :</strong> 소설 문학 읽기 원리 분석 및 기출문제 풀이<br>
                                        <strong>&middot; 작문&middot;화법 :</strong> 반복되는 문제 유형<br>
                                        
                                        <strong>&middot; 문법 :</strong> 문법 개념

                                    </td>
                                    <td class="tal">
                                        &middot; 수학1 : 수학적 귀납법<br>
                                        &middot; 수학2 : 정적분의 활용

                                    </td>
                                    <td class="tal">
                                        정적분의 활용

                                    </td>
                                    <td class="tal">
                                        공간좌표
                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 특수구문<br>
                                        <strong>&middot; 독해 :</strong> 무관한 문장찾기<br>
                                        <strong>&middot; 듣기 :</strong> 1지문 2문항 (2)<br>
                                        <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(4)

                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="cont-box go3">
                    <div class="tbl-box">
                        <p class="full-tit-sq mt0 mb0">과학탐구 학습계획표
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:10%">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:auto">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>1주차</th>
                                    <th>2주차</th>
                                    <th>3주차</th>
                                    <th>4주차</th>
                                    <th>5주차</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>물리학 Ⅰ</th>
                                    <td class="tal">
                                        &middot; 등가속도 운동
                                    </td>
                                    <td class="tal">
                                        &middot; Newton의 운동 법칙①

                                    </td>
                                    <td class="tal">
                                        &middot; Newton의 운동 법칙 ②

                                    </td>
                                    <td class="tal">
                                        &middot; 운동량과 충격량<br>
                                        &middot; 일과 에너지


                                    </td>
                                    <td class="tal">
                                        &middot; 역학적에너지 보존과 비보존

                                    </td>
                                </tr>
                                <tr>
                                    <th>화학 Ⅰ
                                    </th>
                                    <td class="tal">
                                        &middot; 화학식량과 몰

                                    </td>
                                    <td class="tal">
                                        &middot; 화학 반응식<br>
                                        &middot; 질량 보존의 법칙


                                    </td>
                                    <td class="tal">
                                        &middot; 화학 반응식과 양적관계<br>
                                        &middot; 용액의 농도


                                    </td>
                                    <td class="tal">
                                        &middot; 원자의 구조<br>
                                        &middot; 현대적 원자 모형과 전자 배치


                                    </td>
                                    <td class="tal">
                                        &middot; 원소의 주기적 성질

                                    </td>
                                </tr>
                                <tr>
                                    <th>생명과학 Ⅰ
                                    </th>
                                    <td class="tal">
                                        &middot; 자극전달,근 수축

                                    </td>
                                    <td class="tal">
                                        &middot; 신경계,항상성,방어

                                    </td>
                                    <td class="tal">
                                        &middot; 핵상,핵형,세포분열

                                    </td>
                                    <td class="tal">
                                        &middot; 사람의 유전

                                    </td>
                                    <td class="tal">
                                        &middot; 염색체,유전자 이상

                                    </td>
                                </tr>
                                <tr>
                                    <th>지구과학 Ⅰ
                                    </th>
                                    <td class="tal">
                                        &middot; 판구조론<br>
                                        &middot; 고지자기<br>
                                        &middot; 플룸 구조론
                                        <br>
                                        &middot; 마그마의 생성

                                    </td>
                                    <td class="tal">
                                        &middot; 퇴적암<br>
                                        &middot; 퇴적구조
                                        <br>
                                        &middot; 지질구조<br>
                                        &middot; 상대연대/절대연대

                                    </td>
                                    <td class="tal">
                                        &middot; 기단과 전선
                                        <br>
                                        &middot; 온대저기압<br>
                                        &middot; 태풍/악기상

                                    </td>
                                    <td class="tal">
                                        &middot; 해수의 성질<br>
                                        &middot; 대기 대순환<br>
                                        &middot; 표층 순환

                                    </td>
                                    <td class="tal">
                                        &middot; 심층 순환
                                        <br>
                                        &middot; 대기와 해양의 상호 작용

                                    </td>
                                </tr>
                                <tr>
                                    <th>물리학 Ⅱ
                                    </th>
                                    <td class="tal">
                                        &middot; 힘의 합성, 힘의 평형

                                    </td>
                                    <td class="tal">
                                        &middot; 등가속도 운동, 포물선 운동

                                    </td>
                                    <td class="tal">
                                        &middot; 원운동, 케플러 법칙

                                    </td>
                                    <td class="tal">
                                        &middot; 일반 상대성 이론, 일과 에너지

                                    </td>
                                    <td class="tal">
                                        &middot; 열역학
                                    </td>
                                </tr>
                                <tr>
                                    <th>화학 Ⅱ
                                    </th>
                                    <td class="tal">
                                        &middot; 물질의 세가지 상태
                                    </td>
                                    <td class="tal">
                                        &middot; 용액
                                    </td>
                                    <td class="tal">
                                        &middot; 반응 엔탈피
                                    </td>
                                    <td class="tal">
                                        &middot; 화학평형과 평형상수
                                    </td>
                                    <td class="tal">
                                        &middot; 평형이동과 상평형
                                    </td>
                                </tr>
                                <tr>
                                    <th>생명과학 Ⅱ
                                    </th>
                                    <td class="tal">
                                        &middot; 세포막을 통한 물질이동<br>
                                        &middot; 효소
                                    </td>
                                    <td class="tal">
                                        &middot; 세포 호흡
                                    </td>
                                    <td class="tal">
                                        &middot; 광합성
                                    </td>
                                    <td class="tal">
                                        &middot; 유전물질과 유전자 발현
                                    </td>
                                    <td class="tal">
                                        &middot; 유전자 발현 조절
                                    </td>
                                </tr>
                                <tr>
                                    <th>지구과학 Ⅱ
                                    </th>
                                    <td class="tal">
                                        &middot; 천체의 좌표계<br>
                                        &middot; 지구의 자전
                                    </td>
                                    <td class="tal">
                                        &middot; 지구의 공전<br>
                                        &middot; 행성의 운동

                                    </td>
                                    <td class="tal">
                                        &middot; 케플러 법칙
                                    </td>
                                    <td class="tal">
                                        &middot; 별까지의 거리
                                    </td>
                                    <td class="tal">
                                        &middot; 은하의 운동
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="full-tit-sq">수리논술 학습계획표
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:10%">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:auto">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>1주차</th>
                                    <th>2주차</th>
                                    <th>3주차</th>
                                    <th>4주차</th>
                                    <th>5주차</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>수리논술</th>
                                    <td class="tal">
                                        &middot; 수능 VS 수리논술<br>
                                        &middot; 직접 논증법<br>
                                        &middot; 간접 논증법
                                        
                                    </td>
                                    <td class="tal">
                                        &middot; 대수 일반

                                    </td>
                                    <td class="tal">
                                        &middot; 등식이론
                                    </td>
                                    <td class="tal">
                                        &middot; 부등식 이론

                                    </td>
                                    <td class="tal">
                                        &middot; 함수 일반

                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- 학습계획표 -->
            <!-- 표준 일과표 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>일과표</strong></h3>
            <div class="tbl-box" style="display:flex;">
                <table class="tbl-03">
                    <colgroup>
                        <col style="width: 25%;">
                        <col style="width: 25%;">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>교시</th>
                            <th>시간</th>
                            <th>월요일 ~ 토요일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray row" rowspan="3">0교시</th>
                            <th class="bg-gray">06:30 ~ 07:20</th>
                            <td>기상,세면,조식<br>자습관 입실</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:20 ~ 07:30</th>
                            <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:30 ~ 08:30</th>
                            <td>학습계획서 작성<br>명상의 시간, 수능체조</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">1교시</th>
                            <th class="bg-gray">08:40 ~ 09:40</th>
                            <td rowspan="3">오전 수업 / 의무자습<br>
                            질의응답</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">2교시</th>
                            <th class="bg-gray">09:55 ~ 10:55</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">3교시</th>
                            <th class="bg-gray">11:10 ~ 12:10</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">점심식사</th>
                            <th class="bg-gray">12:10 ~ 13:00</th>
                            <td>점심식사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">영어듣기</th>
                            <th class="bg-gray">13:00 ~ 13:20</th>
                            <td>영어 듣기 (수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">4교시</th>
                            <th class="bg-gray">13:30 ~ 14:30</th>
                            <td rowspan="3">오후수업 / 의무자습<br>
                                질의응답<br>
                                <br>
                                토요일 Healing time<br>
                                13:20~16:55<br>
                                (숙소 퇴실 및 바자관 이동 16:45)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">5교시</th>
                            <th class="bg-gray">14:45 ~ 15:45</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">6교시</th>
                            <th class="bg-gray">16:00 ~ 17:00</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">담임시간</th>
                            <th class="bg-gray">17:10 ~ 17:20</th>
                            <td>자습 및 담임시간</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">저녁식사</th>
                            <th class="bg-gray">17:20 ~ 18:10</th>
                            <td>저녁식사 (수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">7교시</th>
                            <th class="bg-gray">18:30 ~ 19:30</th>
                            <td rowspan="2">저녁수업 / 의무자습<br>질의응답</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">8교시</th>
                            <th class="bg-gray">19:45 ~ 20:45</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">9교시</th>
                            <th class="bg-gray">21:00 ~ 23:00</th>
                            <td>저녁수업 / 의무자습<br>일과 종료,일일 TEST</td>
                        </tr>
                    </tbody>
                </table>
                <table class="tbl-03 ml_50">
                    <colgroup>
                        <col style="width: 25%;">
                        <col style="width: 25%;">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>교시</th>
                            <th>시간</th>
                            <th>일요일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray" rowspan="3">0교시</th>
                            <th class="bg-gray">07:00 ~ 07:50</th>
                            <td>기상,세면,조식<br>자습관 입실</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:50 ~ 08:00</th>
                            <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">08:00 ~ 08:30</th>
                            <td>학습계획서 작성<br>명상의 시간, 수능체조</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">1교시</th>
                            <th class="bg-gray">08:40 ~ 09:40</th>
                            <td rowspan="3">의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">2교시</th>
                            <th class="bg-gray">09:55 ~ 10:55</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">3교시</th>
                            <th class="bg-gray">11:10 ~ 12:10</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">점심식사</th>
                            <th class="bg-gray">12:10 ~ 13:05</th>
                            <td>점심식사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">4교시</th>
                            <th class="bg-gray">13:30 ~ 14:30</th>
                            <td rowspan="3">의무자습<br>
                                /<br>
                                심리특강 (16:00~17:00)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">5교시</th>
                            <th class="bg-gray">14:45 ~ 15:45</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">6교시</th>
                            <th class="bg-gray">16:00 ~ 17:00</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">담임시간</th>
                            <th class="bg-gray">17:10 ~ 17:20</th>
                            <td>자습 및 담임시간</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">저녁식사</th>
                            <th class="bg-gray">17:20 ~ 18:15</th>
                            <td>저녁식사 (수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">7교시</th>
                            <th class="bg-gray">18:30 ~ 19:30</th>
                            <td rowspan="2">저녁수업 / 의무자습<br>
                                질의응답
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">8교시</th>
                            <th class="bg-gray">19:45 ~ 20:45</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">9교시</th>
                            <th class="bg-gray">21:00 ~ 22:00</th>
                            <td>
                                의무자습<br>
                                일과종료
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //표준 일과표 -->
        </div>
    </div>
</div>