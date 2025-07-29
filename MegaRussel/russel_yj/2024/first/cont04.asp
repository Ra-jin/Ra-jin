<!-- 윈터스쿨 프로그램 -->
<div class="cont js-cont">
  <div class="cont11">
    <div class="inner">
      <% If sCampusCode = "CD0347" Then '서의치기숙 %>
      <!-- 연간 커리큘럼 -->
      <p class="tit mt0"><img src="<%=img_path_yangji%>/2024/first/cont11_tit06.png" alt="연간 커리큘럼" /></p>
      <div class="tbl-box">
        <table class="tbl-plan">
          <colgroup>
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:7%">
              <col style="width:auto">
          </colgroup>
          <thead>
              <tr>
                  <th class="on">1월</th>
                  <th class="on">2월</th>
                  <th>3월</th>
                  <th>4월</th>
                  <th>5월</th>
                  <th>6평</th>
                  <th>6월</th>
                  <th>7월</th>
                  <th>8월</th>
                  <th>9평</th>
                  <th>9월</th>
                  <th>10월</th>
                  <th>11월</th>
                  <th>12월</th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <td class="bg-gray" colspan="2"><strong>우선선발반</strong></td>
                  <td colspan="4">1학기</td>
                  <td colspan="4">2학기</td>
                  <td colspan="3">3학기</td>
                  <td>4학기</td>
              </tr>
              <tr>
                  <td class="bg-gray" colspan="2"><strong>국수영탐</strong><br>
                  기본개념학습</td>
                  <td colspan="3">개념정리</td>
                  <td>6평<br>
                  대비</td>
                  <td colspan="3">약점체크<br>
                  (개념 + 문제풀이)</td>
                  <td>9평<br>
                  대비</td>
                  <td colspan="2">핵심체크<br>
                  (실전 문제풀이)</td>
                  <td>수능<br>
                  직전<br>
                  대비</td>
                  <td>정시<br>
                  상담</td>
              </tr>
          </tbody>
        </table>
      </div>
      <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
      <!-- 학습 계획표 -->
      <p class="tit mt0"><img src="<%=img_path_yangji%>/2024/first/cont11_tit01.png" alt="학습 계획표" /></p>
      <div class="tbl-box">
        <div class="tobe">
          <div><img src="<%=img_path_yangji%>/2024/first/ico_tobe.png" alt=" [재수생 우선선발반] 학습 계획표는 추후 공개될 예정입니다." /></div>
          <p><%=txtCampus%><br>
            <strong>[재수생 우선선발반] 학습 계획표</strong>는<br>
            추후 공개될 예정입니다
          </p>
        </div>
      </div>
      <% Else %>
      <!-- 학습 계획표 -->
      <p class="tit mt0"><img src="<%=img_path_yangji%>/2024/first/cont11_tit01.png" alt="학습 계획표" /></p>
      <div class="tab-cont-wrap tbl-box bn">
        <div class="bt-tab t_01 mb50">
            <a href="#" class="on"><strong>국어 / 영어</strong></a>
            <a href="#"><strong>수학</strong></a>
        </div>
        <div class="cont-box t_01 on">
          <table class="tbl-01">
            <colgroup>
              <col style="width:20%">
              <col style="width:40%">
              <col style="width:40%">
            </colgroup>
            <thead>
              <tr class="low">
                <th></th>
                <th>국어</th>
                <th>영어</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">학습목표</th>
                <td>&middot;수능&lt;국어&gt;영역에 대한 전반적인 이해와<br>
                    세부 영역으로서의 ‘문학’, ‘독서’의 원래 이해,<br>
                    이를 바탕으로 한 기본 접근법 학습</td>
                <td>
                    &middot; 절대평가 1등급 독해력 완성을 위한 확립<br>
                    &middot; 수능 필수어휘 끝내기<br>
                    &middot; 길고 복잡한 문장 해석능력 배양<br>
                    &middot; 해석을 위한 핵심 문법 개념 완성<br>
                    &middot; 듣기 청해 능력 및 필수회화 표현 습득
                </td>
              </tr>
              <tr>
                <th class="bg-sky">1주차</th>
                <td>&middot; 문학 : 2024학년도 대학수학능력시험 엿보기, 문학 출제 원리 확인하기<br>
                    &middot; 독서 : 2024학년도 대학수학능력시험 엿보기, 독서 지문의 논리적 흐름 확인하기
                    
                </td>
                <td>
                    &middot; 어휘 : Daily Test<br>
                    &middot; 구문 : 문장의 구성 요소와 문장의 형식<br>
                    &middot; 문법 : 품사와 문장성분 이해<br>
                    &middot; 듣기 : 짧은 대화 뒤에 이어질 말 / 대의파악<br>
                    &middot; 독해 : 기출문제 실전 풀이<br>
                    &middot; 유형 : 지문이해
                </td>
              </tr>
              <tr>
                <th class="bg-sky">2주차</th>
                <td>
                    &middot; 문학 : 현대시 읽기 원리 분석 및 기출 문제 풀이<br>
&middot; 독서 : 문장과 문장 사이에 존재하는 논리 관계 파악

                </td>
                <td>
                    &middot; 어휘 : Daily Test<br>
                    &middot; 구문 : 평가원 기출 구문 분석<br>
                    &middot; 문법 : 수/시제/가정법 개념 이해<br>
                    &middot; 듣기 : 세부내용 파악<br>
                    &middot; 독해 : 기출문제 실전 풀이<br>
                    &middot; 유형 : 주제 / 제목 / 요지
                      
                </td>
              </tr>
              <tr>
                <th class="bg-sky">3주차</th>
                <td>&middot; 문학 : 고전시가 읽기 원리 분석 및 기출 문제 풀이<br>
                    &middot; 독서 : 평가원은 우리에게 어떤 독해력을 요구하는가
                    
                </td>
                <td>&middot; 어휘 : Daily Test<br>
                    &middot; 구문 : 평가원 기출 구문 분석<br>
                    &middot; 문법 : 준동사/수동태 개념 이해<br>
                    &middot; 듣기 : 계산하기<br>
                    &middot; 독해 : 기출문제 실전 풀이<br>
                    &middot; 유형 : 항의추론
                    
                </td>
              </tr>
              <tr>
                <th class="bg-sky">4주차</th>
                <td>&middot; 문학 : 현대소설 읽기 원리 분석 및 기출 문제 풀이<br>
                    &middot; 독서 : 실전 독해 및 요약 연습 Ⅰ
                    
                </td>
                <td>&middot; 어휘 : Daily Test<br>
                    &middot; 구문 : 수능 기출 구문 분석<br>
                    &middot; 문법 : 관계사 개념 이해<br>
                    &middot; 듣기 : 일치/불일치<br>
                    &middot; 독해 : 기출문제 실전 풀이<br>
                    &middot; 유형 : 빈칸추론
                    
                </td>
              </tr>
              <tr>
                <th class="bg-sky">5주차</th>
                <td>&middot; 문학 : 산문 문학 인물의 심리 및 성격 파악 연습<br>
                    &middot; 독서 : 실전 독해 및 요약 연습 Ⅱ 
                    
                </td>
                <td>&middot; 어휘 : Daily Test<br>
                    &middot; 구문 : EBS기출 구문 분석<br>
                    &middot; 문법 : 병렬/생략/도치 개념 이해<br>
                    &middot; 듣기 : 긴 대화 뒤에 이어질 말/복합 문항<br>
                    &middot; 독해 : 기출문제 실전 풀이<br>
                    &middot; 유형 : 순서 &middot; 문삽
                    
                </td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
          </ul>
        </div>

        <div class="cont-box t_01">
          <table class="tbl-01">
            <colgroup>
              <col style="width:20%">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
            </colgroup>
            <thead>
              <tr class="low">
                <th>구분</th>
                <th>필수 수업</th>
                <th colspan="2">추가 선택 수업</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th class="bg-sky">학습목표</th>
                    <td><strong class="txt_center" style="display:inline-block;width:100%">수학1, 수학2</strong><br><br>
                        개념 복습과 모의고사 및 <br>
                        수능 기출 풀이를 통한 실력완성
                        </td>
                    <td><strong class="txt_center" style="display:inline-block;width:100%">미적분</strong> <br><br>
                        개념완성 및  <br>
                        내신, 수능 기출 풀이
                        </td>
                    <td><strong class="txt_center" style="display:inline-block;width:100%">기하</strong> <br><br>
                        개념완성 및 <br>
                        내신, 수능 기출 풀이
                    </td>
                </tr>
                <tr>
                    <th rowspan="4" class="bg-sky">주요 내용</th>
                    <td>수학1 : 지수와 로그~지수함수와 로그함수<br>
                        수학2 : 함수의 극한~함수의 연속성
                        </td>
                    <td>수열의 극한~급수
                    </td>
                    <td>이차곡선
                    </td>
                </tr>
                <tr>
                    <td>수학1 : 삼각함수의 뜻과 정의~삼각함수의 활용<br>
                    수학2 : 미분계수와 도함수~접선의 방정식
                    </td>
                    <td>초월함수의 극한~여러가지 미분법
                    </td>
                    <td>평면벡터</td>
                </tr>
                <tr>
                    <td>수학1 : 등차등비수열~여러 가지 수열<br>
                        수학2 : 도함수의 활용
                        
                    </td>
                    <td>도함수의 활용
                    </td>
                    <td>공간도형</td>
                </tr>
                <tr>
                    <td>수학1 : 여러 가지 수열~수학적 귀납법<br>
                        수학2 : 부정적분과 정적분
                        </td>
                    <td>부정적분과 정적분의 활용
                    </td>
                    <td>공간도형</td>
                </tr>
            </tbody>
          </table>

          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
            <li class="red_txt">수학 추가 선택 수업(미적분, 기하)은 추가 수업료가 발생됩니다.</li>
          </ul>
        </div>
      </div>
      <% End If %>

      <!-- 표준 일과표 -->
      <p class="tit"><img src="<%=img_path_yangji%>/2024/first/cont11_tit02.png" alt="표준 일과표" /></p>
      <% If sCampusCode = "CD0347" Then '서의치기숙 %>
      <div class="tbl-box">
        <table class="tbl-03">
          <colgroup>
            <col style="width:15%;">
            <col style="width:15%;">
            <col style="width:auto;">
            <col style="width:25%;">
          </colgroup>
          <thead>
            <tr>
              <th>교시</th>
              <th>시간</th>
              <th>월~토요일</th>
              <th>일요일</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th class="bg-gray" rowspan="2">0교시</th>
              <td class="bg-gray">AM6:20~AM7:20</td>
              <td colspan="2">기상, 인원파악, 세면, 조식</td>
            </tr>
            <tr>
              <td class="bg-gray">AM7:20~AM8:20</td>
              <td colspan="2">학습계획서 작성, 명상의 시간, 아침체조, 일일TEST</td>
            </tr>
            <tr>
              <th class="bg-gray">1교시</th>
              <td class="bg-gray">AM8:20~AM9:20</td>
              <td rowspan="3">오전수업 및 의무자습</td>
              <td rowspan="3">의무자습</td>
            </tr>
            <tr>
              <th class="bg-gray">2교시</th>
              <td class="bg-gray">AM9:35~AM10:35</td>
            </tr>
            <tr>
              <th class="bg-gray">3교시</th>
              <td class="bg-gray">AM10:50~AM11:50</td>
            </tr>
            <tr>
              <th class="bg-gray">점심식사</th>
              <td class="bg-gray">AM11:50~PM12:50</td>
              <td colspan="2">점심식사 및 체조</td>
            </tr>
            <tr>
              <th class="bg-gray">영어듣기</th>
              <td class="bg-gray">PM12:50~PM13:10</td>
              <td>영어듣기</td>
              <td rowspan="2">의무자습</td>
            </tr>
            <tr>
              <th class="bg-gray">4교시</th>
              <td class="bg-gray">PM13:10~PM14:10</td>
              <td rowspan="3">오후수업 / 의무자습 / 질의응답</td>
            </tr>
            <tr>
              <th class="bg-gray">5교시</th>
              <td class="bg-gray">PM14:25~PM15:25</td>
              <td rowspan="2">Healing Time<br>
              및 종교활동</td>
            </tr>
            <tr>
              <th class="bg-gray">6교시</th>
              <td class="bg-gray">PM15:40~PM16:40</td>
            </tr>
            <tr>
              <th class="bg-gray">담임시간</th>
              <td class="bg-gray">PM16:50~PM17:30</td>
              <td colspan="2">일일TEST 및 담임시간</td>
            </tr>
            <tr>
              <th class="bg-gray">저녁식사</th>
              <td class="bg-gray">PM17:30~PM18:30</td>
              <td colspan="2">저녁식사 및 체조</td>
            </tr>
            <tr>
              <th class="bg-gray">7교시</th>
              <td class="bg-gray">PM18:30~PM19:30</td>
              <td rowspan="3">질의응답 및 의무자습</td>
              <td>주간Test</td>
            </tr>
            <tr>
              <th class="bg-gray">8교시</th>
              <td class="bg-gray">PM19:45~PM20:45</td>
              <td rowspan="2">의무자습</td>
            </tr>
            <tr>
              <th class="bg-gray">9교시</th>
              <td class="bg-gray">PM21:00~PM22:00</td>
            </tr>
            <tr>
              <th class="bg-gray">종료</th>
              <td class="bg-gray">PM22:00~PM23:40</td>
              <td colspan="2">일과종료, 세면, 인원파악, 취침</td>
            </tr>
          </tbody>
        </table>
        <p class="l-txt mt20">※ 2월 정규반부터는 의무 자습이 23시까지 진행됩니다.
        </p>
      </div>
      <% Else %>
      <div class="tbl-box p2 bn">
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
                  <th>월 ~ 토요일</th>
              </tr>
          </thead>
          <tbody>
            <tr>
                <th class="bg-gray row" rowspan="3">0교시</th>
                <th class="bg-gray">06:30 ~ 07:40</th>
                <td>기상,세면,조식<br>자습관 입실</td>
            </tr>
            <tr>
                <th class="bg-gray b-l">07:40 ~ 07:50</th>
                <td>자습관 인원 점검<br>(자리 이동 금지)</td>
            </tr>
            <tr>
                <th class="bg-gray b-l">07:50 ~ 08:30</th>
                <td>학습계획서 작성<br>명상의 시간,수능체조</td>
            </tr>
            <tr>
                <th class="bg-gray">1교시</th>
                <th class="bg-gray">08:40 ~ 09:40</th>
                <td rowspan="3">오전 수업 및 의무자습</td>
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
                <td rowspan="3">오후 수업 / 의무자습<br>질의응답</td>
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
                <td>저녁식사<br>(수능체조)</td>
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

        <table class="tbl-03 ml50">
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
                  <th class="bg-gray">07:00 ~ 08:00</th>
                  <td>기상,세면,조식<br>자습관 입실</td>
              </tr>
              <tr>
                  <th class="bg-gray b-l">08:00 ~ 08:10</th>
                  <td>자습관 인원 점검<br>(자리 이동 금지)</td>
              </tr>
              <tr>
                  <th class="bg-gray b-l">08:10 ~ 08:30</th>
                  <td>학습계획서 작성<br>명상의 시간,수능체조</td>
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
                  <th class="bg-gray">12:10 ~ 13:00</th>
                  <td>점심식사 (수능체조)</td>
              </tr>
              <tr>
                  <th class="bg-gray">4교시</th>
                  <th class="bg-gray">13:10 ~ 14:20</th>
                  <td>의무자습</td>
              </tr>
              <tr style="height:240px !important">
                  <th class="bg-gray">HEALING TIME</th>
                  <th class="bg-gray">14:30 ~ 16:50</th>
                  <td>HEALING TIME 및<br>종교활동</td>
              </tr>
              <tr>
                  <th class="bg-gray">담임시간</th>
                  <th class="bg-gray">17:00 ~ 17:20</th>
                  <td>자습 및 담임시간</td>
              </tr>
              <tr>
                  <th class="bg-gray">저녁식사</th>
                  <th class="bg-gray">17:20 ~ 18:10</th>
                  <td>저녁식사<br>(수능체조)</td>
              </tr>
              <tr>
                  <th class="bg-gray">7교시</th>
                  <th class="bg-gray">18:30 ~ 19:30</th>
                  <td>의무자습 / <br>
                  주간 TEST</td>
              </tr>
              <tr>
                  <th class="bg-gray">8교시</th>
                  <th class="bg-gray">19:45 ~ 20:45</th>
                  <td rowspan="2">의무자습<br>일과 종료</td>
              </tr>
              <tr>
                  <th class="bg-gray">9교시</th>
                  <th class="bg-gray">21:00 ~ 22:00</th>
              </tr>
          </tbody>
        </table>
      </div>
      <% End If %>
    </div>
  </div>
</div>
    

