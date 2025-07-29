<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_sm">
    <div class="cont11">
        <div class="inner">
            <!-- 입학기준 및 등록안내 -->
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5563
                Else '실서버
                    AGM_CD = 1631
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
            <!-- //입학기준 및 등록안내 -->
            

            <!-- 입학 절차 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>입학 절차</strong></h3>
            <p class="a-process-tit">&middot; 온라인 상담</p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 상담</p>
                    <ul class="list-03">
                        <li> 학원 홈페이지를 통한 상담
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>원서접수
                    </p>
                    <ul class="list-03">
                        <li> 온라인 원서접수(PC버전)</li>
                        <li> 성적 정보 필수 기입</li>
                        <li> 성적표 첨부</li>
                    </ul>
                    <a href="https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=173" class="bt-apply">원서접수 바로가기
                    </a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>서류심사</p>
                    <ul class="list-03">
                        <li> 입학여부 전화안내</li>
                        <li> 전형 자격요건 확인</li>
                        <li> 학원 규칙 준수 여부 확인</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>등록</p>
                    <ul class="list-03">
                        <li> 등록예약금 납부</li>
                        <li> 입학 일정 확인</li>
                        <li> 제출서류 안내</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p class="two-line">입학</p>
                    <ul class="list-03">
                        <li> 잔금납부</li>
                        <li> 제출서류 확인</li>
                        <li> 입학 준비물 안내</li>
                        <li> 입학일시 준수</li>
                    </ul>
                </li>
            </ul>
            <p class="a-process-tit mt60">&middot; 전화 상담</p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>전화 상담</p>
                    <ul class="list-03">
                        <li> 유선상으로 입학 상담
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>원서접수
                    </p>
                    <ul class="list-03">
                        <li> 온라인 원서접수(PC버전)</li>
                        <li> 성적 정보 필수 기입</li>
                        <li> 성적표 첨부</li>
                    </ul>
                    <a href="https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=173" class="bt-apply">원서접수 바로가기
                    </a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>서류심사</p>
                    <ul class="list-03">
                        <li> 입학여부 전화안내</li>
                        <li> 전형 자격요건 확인</li>
                        <li> 학원 규칙 준수 여부 확인</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>등록</p>
                    <ul class="list-03">
                        <li> 등록예약금 납부</li>
                        <li> 입학 일정 확인</li>
                        <li> 제출서류 안내</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p class="two-line">입학</p>
                    <ul class="list-03">
                        <li> 잔금납부</li>
                        <li> 제출서류 확인</li>
                        <li> 입학 준비물 안내</li>
                        <li> 입학일시 준수</li>
                    </ul>
                </li>
            </ul>
            <p class="a-process-tit mt60">&middot; 방문 상담</p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>방문 상담</p>
                    <ul class="list-03">
                        <li> 방문 상담
                        </li>
                        <li>원서접수 후<br>
                        사전예약자에 한함
                        </li>
                    </ul>
                    <div class="mt10">※ 학원사정에 따라 변경될 수 있음
                    </div>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>학원 내 원서접수
                    </p>
                    <ul class="list-03">
                        <li> 온라인 원서접수(PC버전)</li>
                        <li> 성적 정보 필수 기입</li>
                        <li> 성적표 첨부</li>
                    </ul>
                    <a href="https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=173" class="bt-apply">원서접수 바로가기
                    </a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>서류심사</p>
                    <ul class="list-03">
                        <li> 상담을 통한 입학여부 안내
                        </li>
                        <li> 전형 자격요건 확인</li>
                        <li> 학원 규칙 준수 여부 확인</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>등록</p>
                    <ul class="list-03">
                        <li> 등록예약금 납부</li>
                        <li> 입학 일정 확인</li>
                        <li> 제출서류 안내</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p class="two-line">입학</p>
                    <ul class="list-03">
                        <li> 잔금납부</li>
                        <li> 제출서류 확인</li>
                        <li> 입학 준비물 안내</li>
                        <li> 입학일시 준수</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 -->
        </div>
    </div>
</div>
<div class="cont js-cont russel_sm">
    <div class="cont12">
        <div class="inner">
            <!-- 학습계획표 -->
            <h3 class="tit">2025 윈터스쿨 <strong>학습계획표 [고3 과정]</strong></h3>
            <div class="tab-cont-wrap">
                <div class="bt-tab type02 go3">
                    <a href="#" class="on">국어 / 수학 / 영어</a>
                    <a href="#">과학탐구 / 사회탐구 / 수리논술 / 인문논술</a>
                </div>
                <p class="r-txt mb20">※ 학습계획표는 학원 사정에 의해 변경될 수 있습니다.

                </p>
                <div class="cont-box go3 on">
                    <div class="tbl-box">
                        <p class="full-tit-sq mt0 mb0">고3 과정 학습계획표 (국어/수학/영어)
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:8%">
                                <col style="width:19%">
                                <col style="width:17%">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:auto">
                                <col style="width:18%">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th rowspan="2">구분</th>
                                    <th rowspan="2">국어</th>
                                    <th colspan="4">수학</th>
                                    <th rowspan="2">영어</th>
                                </tr>
                                <tr class="low">
                                    <th>공통과목</th>
                                    <th colspan="3">선택과목</th>
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
                                        <strong>확률과통계</strong>
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
                                        여러 가지 순열
                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 3줄 이상의 긴 지문 구조해석
                                        <br>
                                        <strong>&middot; 독해 :</strong> 정보연결 (대의파악)
                                        <br>
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
                                    <td class="tal">중복조합과 이항 정리

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
                                        확률의 뜻과 활용<br>
                                        조건부확률(1)
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
                                        조건부확률(2)<br>
                                        확률분포(이산확률분포)
                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 부정구문<br>
                                        <strong>&middot; 독해 :</strong> 함의추론<br>
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
                                        &middot; 수학1 : 수학적 귀납법(1)
                                        <br>
                                        &middot; 수학2 : 정적분의 활용(1)

                                    </td>
                                    <td class="tal">
                                        정적분의 활용(1)

                                    </td>
                                    <td class="tal">
                                        공간좌표(1)
                                    </td>
                                    <td class="tal">확률분포(연속확률분포)

                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 특수구문<br>
                                        <strong>&middot; 독해 :</strong> 고난도장문 / 어휘 PART
                                        <br>
                                        <strong>&middot; 듣기 :</strong> 1지문 2문항 (2)<br>
                                        <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(4)

                                    </td>
                                </tr>
                                <tr>
                                    <th>6주차</th>
                                    <td class="tal">
                                        <strong>&middot; 문학 :</strong> 고전산문 읽기  원리 분석 및 기출문제풀이<br>
                                        <strong>&middot; 독서 :</strong> 지문 주제 파악하기                                    
                                    </td>
                                    <td class="tal">
                                        &middot; 수학1 : 수학적 귀납법(2)
                                        <br>
                                        &middot; 수학2 : 정적분의 활용(2)

                                    </td>
                                    <td class="tal">
                                        정적분의 활용(2)

                                    </td>
                                    <td class="tal">
                                        공간좌표(2)
                                    </td>
                                    <td class="tal">통계적 추정</td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 특수구문<br>
                                        <strong>&middot; 독해 :</strong> 고난도장문(2) / 어휘 PART(2)
                                        <br>
                                        <strong>&middot; 듣기 :</strong> 1지문 2문항 (3)<br>
                                        <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(5)
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="cont-box go3">
                    <div class="tbl-box">
                        <p class="full-tit-sq mt0 mb0">고3 과정 학습계획표 (과학탐구)
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:9%">
                                <col style="width:auto">
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
                                    <th>6주차</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>물리학 Ⅰ</th>
                                    <td class="tal">
                                        &middot; 등가속도운동
                                    </td>
                                    <td class="tal">
                                        &middot; 뉴턴의 운동법칙
                                    </td>
                                    <td class="tal">
                                        &middot; 운동량과충격량&amp;일과에너지
                                    </td>
                                    <td class="tal">
                                        &middot; 열역학&amp;특수상대성이론
                                    </td>
                                    <td class="tal">
                                        &middot; 전기력선&amp;자기력선
                                    </td>
                                    <td class="tal">
                                        &middot; 파동과 전반사
                                    </td>
                                </tr>
                                <tr>
                                    <th>화학 Ⅰ
                                    </th>
                                    <td class="tal">
                                        &middot; 원자 &middot; 분자 양적관계<br>
                                        &middot; 화학반응 양적관계
                                    </td>
                                    <td class="tal">
                                        &middot; 용액<br>
                                        &middot; 동위원소
                                    </td>
                                    <td class="tal">
                                        &middot; 오비탈과 전자배치<br>
                                        &middot; 주기적 성질

                                    </td>
                                    <td class="tal">
                                        &middot; 화학결합<br>
                                        &middot; 분자구조

                                    </td>
                                    <td class="tal">
                                        &middot; PH<br>
                                        &middot; 산 &middot; 염기 중화반응<br>
                                        &middot; 산화 &middot; 환원
                                    </td>
                                    <td class="tal">
                                        &middot; 양적관계<br>
                                        &middot; 중화반응 실전공략
                                    </td>
                                </tr>
                                <tr>
                                    <th>생명과학 Ⅰ
                                    </th>
                                    <td class="tal">
                                        &middot; 자극전달,근 수축

                                    </td>
                                    <td class="tal">
                                        &middot; 근 수축, 신경계, 항상성, 방어
                                    </td>
                                    <td class="tal">
                                        &middot; 신경계 향상성, 방어

                                    </td>
                                    <td class="tal">
                                        &middot; 핵상, 핵형, 세표분열
                                    </td>
                                    <td class="tal">
                                        &middot; 사람의 유전(1)
                                    </td>
                                    <td class="tal">
                                        &middot; 사람의 유전(2)
                                    </td>
                                </tr>
                                <tr>
                                    <th>지구과학 Ⅰ
                                    </th>
                                    <td class="tal">
                                        &middot; 별의 물리량
                                    </td>
                                    <td class="tal">
                                        &middot; H-R도와 별의 종류
                                        <br>
                                        &middot; 별의 진화

                                    </td>
                                    <td class="tal">
                                        &middot; 별의 에너지원과 내부 구조
                                        <br>
                                        &middot; 외계 행성계와 외계 생명체 탐사
                                    </td>
                                    <td class="tal">
                                        &middot; 외계 행성계와 외계 생명체 탐사
                                        <br>
                                        &middot; 외부 은하
                                        <br>
                                        &middot; 허블 법칙과 우주론
                                    </td>
                                    <td class="tal">
                                        &middot; 허블 법칙과 우주론
                                        <br>
                                        &middot; 암흑 물질과 암흑 에너지
                                    </td>
                                    <td class="tal">
                                        &middot; 온대 저기압과 태풍
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="full-tit-sq">고3 과정 학습계획표 (사회탐구)
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:9%">
                                <col style="width:auto">
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
                                    <th>6주차</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>생활과윤리</th>
                                    <td class="tal">
                                        윤리학의 분류 &amp; 윤리 이론
                                    </td>
                                    <td class="tal">
                                        동서양의 윤리 이론
                                    </td>
                                    <td class="tal">
                                        사회정의 윤리(1)
                                    </td>
                                    <td class="tal">
                                        사회정의윤리(2)
                                    </td>
                                    <td class="tal">
                                        자연과 윤리
                                    </td>
                                    <td class="tal">
                                        지구촌 평화 윤리
                                    </td>
                                </tr>
                                <tr>
                                    <th>사회문화</th>
                                    <td class="tal">
                                        사회문화 현상의 탐구 1
                                    </td>
                                    <td class="tal">
                                        사회문화 현상의 탐구2
                                    </td>
                                    <td class="tal">
                                        개인의 사회구조1
                                    </td>
                                    <td class="tal">
                                        개인의 사회구조2
                                    </td>
                                    <td class="tal">
                                        문화와 일상생활1
                                    </td>
                                    <td class="tal">
                                        문화와 일상생활2

                                    </td>
                                </tr>
                                <tr>
                                    <th>윤리와사상</th>
                                    <td class="tal">
                                        동양 윤리의 연원과 전개
                                    </td>
                                    <td class="tal">
                                        동양 윤리 집중 정리
                                    </td>
                                    <td class="tal">
                                        서양 윤리 집중 정리(1)
                                    </td>
                                    <td class="tal">
                                        서양윤리 집중 정리(2)
                                    </td>
                                    <td class="tal">
                                        한국 윤리 집중 정리
                                    </td>
                                    <td class="tal">
                                        사회 윤리 집중 정리
                                    </td>
                                </tr>
                                <tr>
                                    <th>한국지리</th>
                                    <td class="tal">
                                        국토 인식과 지리 정보<br>
                                        지역적 위치 학습
                                    </td>
                                    <td class="tal">
                                        지형 환경과 인간 생활(1)
                                    </td>
                                    <td class="tal">
                                        지형 환경과 인간 생활(2)
                                    </td>
                                    <td class="tal">
                                        기후 환경과 인간 생활
                                    </td>
                                    <td class="tal">
                                        거주 공간의 변화와 지역 개발
                                    </td>
                                    <td class="tal">
                                        자원의 의미/  북한 지역
                                    </td>
                                </tr>
                                <tr>
                                    <th>세계지리</th>
                                    <td class="tal">
                                        세계화와 지역 이해<br>
                                        대륙별 위치 학습
                                    </td>
                                    <td class="tal">
                                        세계의 자연 환경과 인간 생활(1)
                                    </td>
                                    <td class="tal">
                                        세계의 자연 환경과 인간 생활(2)
                                    </td>
                                    <td class="tal">
                                        세계의 인문 환경과 인문 경관
                                    </td>
                                    <td class="tal">
                                        몬순 아시아와 오세아니아
                                    </td>
                                    <td class="tal">
                                        유럽과 북부아메리카
                                    </td>
                                </tr>
                                <tr>
                                    <th>세계사</th>
                                    <td class="tal">
                                        이슬람세계
                                    </td>
                                    <td class="tal">
                                        유럽사회의 형성
                                    </td>
                                    <td class="tal">
                                        시민혁명
                                    </td>
                                    <td class="tal">
                                        중국, 일본
                                    </td>
                                    <td class="tal">
                                        1차 세계대전
                                    </td>
                                    <td class="tal">
                                        2차 세계대전과 냉전
                                    </td>
                                </tr>
                                <tr>
                                    <th>동아시아사</th>
                                    <td class="tal">
                                        고대 동아시아
                                    </td>
                                    <td class="tal">
                                        수-당시대

                                    </td>
                                    <td class="tal">
                                        송~원시대
                                    </td>
                                    <td class="tal">
                                        명~청시대
                                    </td>
                                    <td class="tal">
                                        근대 동아시아
                                    </td>
                                    <td class="tal">
                                        현대 동아시아
                                    </td>
                                </tr>
                                <tr>
                                    <th>정치와법</th>
                                    <td class="tal">
                                        민주주의의 이념<br>
                                        민주주의의 원리
                                    </td>
                                    <td class="tal">
                                        정부형태<br>
                                        선거제도
                                    </td>
                                    <td class="tal">
                                        국회<br>
                                        사법부<br>
                                        헌번재판제도
                                    </td>
                                    <td class="tal">
                                        계약과 미성년자의 권리보호<br>
                                        가족관계와 법
                                    </td>
                                    <td class="tal">
                                        범죄와 형벌<br>
                                        청소년범죄<br>
                                        근로기준법
                                    </td>
                                    <td class="tal">
                                        형사소송법
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="full-tit-sq">고3 과정 학습계획표 (수리논술)
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:9%">
                                <col style="width:auto">
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
                                    <th>6주차</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>수리논술</th>
                                    <td class="tal">
                                        &middot; 수능 VS 수리논술<br>
                                        &middot; 논증<br>
                                        &middot; 귀납추론
                                        
                                    </td>
                                    <td class="tal">
                                        &middot; 수학적 귀납법, 귀류법

                                    </td>
                                    <td class="tal">
                                        &middot; 귀납추론 심화
                                    </td>
                                    <td class="tal">
                                        &middot; 함수일반 1 : 정의

                                    </td>
                                    <td class="tal">
                                        &middot; 함수 일반 2: 함수의 정보추론

                                    </td>
                                    <td class="tal">
                                        &middot; (함수)극한의 정의+성질 <br>
                                        &middot; (함수)연속의 정의
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="full-tit-sq">고3 과정 학습계획표 (인문논술)
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:9%">
                                <col style="width:auto">
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
                                    <th>6주차</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>인문논술</th>
                                    <td class="tal">
                                        &middot; 짧은 글쓰기
                                    </td>
                                    <td class="tal">
                                        &middot; 비교와 대조
                                    </td>
                                    <td class="tal">
                                        &middot; 분류와  분석
                                    </td>
                                    <td class="tal">
                                        &middot; 비판과 대안
                                    </td>
                                    <td class="tal">
                                        &middot; 주장형
                                    </td>
                                    <td class="tal">
                                        &middot; 자료해석
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <h3 class="tit mt100">2025 윈터스쿨 <strong>학습계획표 [고2 과정]</strong></h3>
            <div class="tab-cont-wrap">
                <div class="bt-tab type02 go2">
                    <a href="#" class="on">국어 / 수학 / 영어</a>
                    <a href="#">과학탐구 / 수리논술</a>
                </div>
                <p class="r-txt mb20">※ 학습계획표는 학원 사정에 의해 변경될 수 있습니다.
                </p>
                <div class="cont-box go2 on">
                    <div class="tbl-box">
                        <p class="full-tit-sq mt0 mb0">고2 과정 학습계획표 (국어/수학/영어)
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:8%">
                                <col style="width:32%">
                                <col style="width:29%">
                                <col style="width:auto">
                                <col style="width:18%">
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
                                        <strong>&middot; 문학 :</strong> 2025학년도 대학수학능력시험 엿보기, 문학 출제 원리 확인하기
                                        <br>
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
                                        <strong>&middot; 구문 :</strong> 3줄 이상의 긴 지문 구조해석
                                        <br>
                                        <strong>&middot; 독해 :</strong> 정보연결 (대의파악)
                                        <br>
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
                                        <strong>&middot; 구문 :</strong> 부정구문<br>
                                        <strong>&middot; 독해 :</strong> 함의추론<br>
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
                                        &middot; 수학1 : 수학적 귀납법(1)
                                        <br>
                                        &middot; 수학2 : 정적분의 활용(1)

                                    </td>
                                    <td class="tal">
                                        정적분의  활용(1)

                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 특수구문<br>
                                        <strong>&middot; 독해 :</strong> 고난도장문 / 어휘 PART<br>
                                        <strong>&middot; 듣기 :</strong> 1지문 2문항 (2)<br>
                                        <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(4)

                                    </td>
                                </tr>
                                <tr>
                                    <th>6주차</th>
                                    <td class="tal">
                                        <strong>&middot; 문학 :</strong> 고전산문 읽기  원리 분석 및 기출문제풀이<br>                                       
                                        <strong>&middot; 독서 :</strong> 지문 주제 파악하기

                                    </td>
                                    <td class="tal">
                                        &middot; 수학1 : 수학적 귀납법(2)
                                        <br>
                                        &middot; 수학2 : 정적분의 활용(2)
                                    </td>
                                    <td class="tal">
                                        정적분의 활용(2)
                                    </td>
                                    <td class="tal">
                                        <strong>&middot; 구문 :</strong> 특수구문(2)<br>
                                        <strong>&middot; 독해 :</strong> 고난도장문(2) / 어휘 PART(2)<br>
                                        <strong>&middot; 듣기 :</strong> 1지문 2문항 (3)<br>
                                        <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(5)

                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="cont-box go2">
                    <div class="tbl-box">
                        <p class="full-tit-sq mt0 mb0">고2 과정 학습계획표 (과학탐구)
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:10%">
                                <col style="width:auto">
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
                                    <th>6주차</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>물리학 Ⅰ</th>
                                    <td class="tal">
                                        &middot; 등가속도운동
                                    </td>
                                    <td class="tal">
                                        &middot; 뉴턴의 운동법칙
                                    </td>
                                    <td class="tal">
                                        &middot; 운동량과충격량&amp;일과에너지
                                    </td>
                                    <td class="tal">
                                        &middot; 열역학&amp;특수상대성이론
                                    </td>
                                    <td class="tal">
                                        &middot; 전기력선&amp;자기력선
                                    </td>
                                    <td class="tal">
                                        &middot; 파동과 전반사
                                    </td>
                                </tr>
                                <tr>
                                    <th>화학 Ⅰ
                                    </th>
                                    <td class="tal">
                                        &middot; 원자 &middot; 분자 양적관계<br>
                                        &middot; 화학반응 양적관계
                                    </td>
                                    <td class="tal">
                                        &middot; 용액<br>
                                        &middot; 동위원소
                                    </td>
                                    <td class="tal">
                                        &middot; 오비탈과 전자배치<br>
                                        &middot; 주기적 성질

                                    </td>
                                    <td class="tal">
                                        &middot; 화학결합<br>
                                        &middot; 분자구조

                                    </td>
                                    <td class="tal">
                                        &middot; PH<br>
                                        &middot; 산 &middot; 염기 중화반응<br>
                                        &middot; 산화 &middot; 환원
                                    </td>
                                    <td class="tal">
                                        &middot; 양적관계<br>
                                        &middot; 중화반응  실전공략
                                    </td>
                                </tr>
                                <tr>
                                    <th>생명과학 Ⅰ
                                    </th>
                                    <td class="tal">
                                        &middot; 자극전달,근 수축

                                    </td>
                                    <td class="tal">
                                        &middot; 근 수축, 신경계,항상성,방어
                                    </td>
                                    <td class="tal">
                                        &middot; 신경계,항상성,방어

                                    </td>
                                    <td class="tal">
                                        &middot; 핵상,핵형,세포분열

                                    </td>
                                    <td class="tal">
                                        &middot; 사람의 유전(1)
                                    </td>
                                    <td class="tal">
                                        &middot; 사람의 유전(2)
                                    </td>
                                </tr>
                                <tr>
                                    <th>지구과학 Ⅰ</th>
                                    <td class="tal">
                                        &middot; 별의 물리량
                                    </td>
                                    <td class="tal">
                                        &middot; H-R도와 별의 종류<br>
                                        &middot; 별의 진화
                                    </td>
                                    <td class="tal">
                                        &middot; 별의 에너지원과 내부 구조
                                        <br>
                                        &middot; 외계 행성계와 외계 생명체 탐사
                                    </td>
                                    <td class="tal">
                                        &middot; 외계 행성계와 외계 생명체 탐사
                                        <br>
                                        &middot; 외부 은하
                                        <br>
                                        &middot; 허블 법칙과 우주론

                                    </td>
                                    <td class="tal">
                                        &middot; 허블 법칙과 우주론
                                        <br>
                                        &middot; 암흑 물질과 암흑 에너지
                                    </td>
                                    <td class="tal">
                                        &middot; 온대 저기압과 태풍
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="full-tit-sq">고2 과정 학습계획표 (수리논술)
                        </p>
                        <table class="tbl-01 mt10">
                            <colgroup>
                                <col style="width:10%">
                                <col style="width:auto">
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
                                    <th>6주차</th>
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
                                    <td class="tal">
                                        &middot; 기하 일반
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- 학습계획표 -->
            <!-- 표준 일과표 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>표준 일과표</strong></h3>
            <div class="tbl-box">
                <table class="tbl-03">
                    <colgroup>
                        <col style="width: 15%;">
                        <col style="width: 25%;">
                        <col style="width:auto">
                        <col style="width:15%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>교시</th>
                            <th>시간</th>
                            <th>월 ~ 토요일</th>
                            <th>일요일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray row" rowspan="2">0교시</th>
                            <th class="bg-gray">AM6:20~AM7:20</th>
                            <td colspan="2">기상, 인원파악, 세면, 조식</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">AM7:20~AM8:20</th>
                            <td colspan="2">학습계획서 작성, 명상의 시간, 아침체조, 일일TEST</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">1교시</th>
                            <th class="bg-gray">AM8:20~AM9:20</th>
                            <td rowspan="3">오전수업 및 의무자습</td>
                            <td rowspan="3">의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">2교시</th>
                            <th class="bg-gray">AM9:35~AM10:35</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">3교시</th>
                            <th class="bg-gray">AM10:50~AM11:50</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">점심식사</th>
                            <th class="bg-gray">AM11:50~PM12:50</th>
                            <td colspan="2">점심식사 및 체조</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">영어듣기</th>
                            <th class="bg-gray">PM12:50~PM13:10</th>
                            <td>영어듣기</td>
                            <td rowspan="2">의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">4교시</th>
                            <th class="bg-gray">PM13:10~PM14:10</th>
                            <td rowspan="3">오후수업 / 의무자습 / 질의응답</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">5교시</th>
                            <th class="bg-gray">PM14:25~PM15:25</th>
                            <td rowspan="2">Healing Time <br>및 종교활동</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">6교시</th>
                            <th class="bg-gray">PM15:40~PM16:40</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">담임시간</th>
                            <th class="bg-gray">PM16:50~PM17:30</th>
                            <td colspan="2">일일TEST 및 담임시간</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">저녁식사</th>
                            <th class="bg-gray">PM17:30~PM18:30</th>
                            <td colspan="2">저녁식사 및 체조</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">7교시</th>
                            <th class="bg-gray">PM18:30~PM19:30</th>
                            <td rowspan="3">질의응답 및 의무자습</td>
                            <td>주간TEST</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">8교시</th>
                            <th class="bg-gray">PM19:45~PM20:45</th>
                            <td rowspan="2">의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">9교시</th>
                            <th class="bg-gray">PM21:00~PM22:00</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">종료</th>
                            <th class="bg-gray">PM22:00~PM23:40</th>
                            <td colspan="2">일과종료, 세면, 인원파악, 취침</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //표준 일과표 -->
        </div>
    </div>
</div>