<!-- 윈터스쿨 프로그램 -->
<div class="cont js-cont">
  <div class="cont09">
    <div class="inner">
      <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont09_tit.png" alt="올바른 학습 습관 및 탄탄한 실력 형성 최상위권 재원생이 추천하는 윈터스쿨 프로그램" /></p>
      <div class="rbox mb70">
        <% If sCampusCode = "CD0347" Then '서의치기숙 %>
        <p class="txt"><img src="<%=img_path_russelsm%>/2023/winter/cont09_stxt.png" alt="약 2배 차이"></p>
        <p class="arrow"><img src="<%=img_path_yangji%>/2023/winter/cont09_arr.png" alt=""></p>
        <p><img src="<%=img_path_russelsm%>/2023/winter/cont09_img.jpg" alt=""></p>
        <% Else %>
        <p class="txt"><img src="<%=img_path_yangji%>/2023/winter/cont09_stxt.png" alt="약 3배 차이"></p>
        <p class="arrow"><img src="<%=img_path_yangji%>/2023/winter/cont09_arr.png" alt=""></p>
        <p><img src="<%=img_path_yangji%>/2023/winter/cont09_img.jpg" alt=""></p>
        <% End If %>
        <p class="r-txt mt40">* 평일(월~금요일) 바자관 표준 시간표 기준으로 작성하였으며.  학원별 운영 및 상세 시간은 다를 수 있습니다.</p>
      </div>
      <div class="rbox mb70">
        <p><img src="<%=img_path_yangji%>/2023/winter/cont09_img02.jpg" alt=""></p>
        <p class="r-txt mt40">※ 해당 콘텐츠는 러셀 기숙 윈터스쿨 재원생 대상으로 ‘전액지원‘ 되는 콘텐츠입니다.</p>
      </div>
      <div class="rbox mb70">
        <p><img src="<%=img_path_yangji%>/2023/winter/cont09_img03.jpg" alt=""></p>
        <p class="r-txt mt40">※ 해당 콘텐츠는 러셀 기숙 윈터스쿨 재원생 대상으로 ‘전액지원‘ 되는 콘텐츠입니다.</p>
      </div>
      <div class="rbox">
        <% If sCampusCode = "CD0348" Then '여기숙 %>
        <p><img src="<%=img_path_russelw%>/2023/winter/cont09_teach_img.png" alt=""></p>
        <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
        <p><img src="<%=img_path_russelsm%>/2023/winter/cont09_teach_img.png" alt=""></p>
        <% Else %>
        <p><img src="<%=img_path_yangji%>/2023/winter/cont09_teach_img.jpg" alt=""></p>
        <% End If %>
      </div>
    </div>
  </div>
</div>
<div class="cont js-cont">
  <div class="cont10">
    <div class="inner">
      <p class="tit mt0"><img src="<%=img_path_yangji%>/2023/winter/cont10_tit01.png" alt="입학 기준" /></p>
      <% If sCampusCode = "CD0348" Then '여기숙 %>
      <div class="tbl-box">
        <table class="tbl-01">
          <colgroup>
            <col style="width:15%;">
            <col style="width:15%;">
            <col style="width:13%;">
            <col style="width:auto;">
          </colgroup>
          <tbody>
            <tr>
              <th class="bg-sky">모집대상</th>
              <td colspan="3">고3(현 고2) 중 수학(미적분 / 기하) + 과학탐구 선택한 여학생</td>
            </tr>
            <tr>
              <th class="bg-sky">개강일</th>
              <td colspan="3">2023년 12월 30일(토)</td>
            </tr>
            <tr>
              <th class="bg-sky">수업기간</th>
              <td colspan="3">2023. 12. 30(토) ~ 2024. 2. 3(토) [5주 완성]</td>
            </tr>
            <tr>
              <th rowspan="3" class="bg-sky">입학기준</th>
              <td rowspan="3" class="txt-center">고3(현 고2)<p class="ico-end-balloon">전반 마감</p></td>
              <td class="txt-center">HS반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 3이내 또는<br>
                *국&middot;수&middot;영&middot;탐 내신 평균 1.3등급 이내</td>
            </tr>
            <tr>
              <td class="txt-center">서울대/의&middot;치대반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 4이내 또는<br>*국&middot;수&middot;영&middot;탐 내신 평균 1.5등급 이내</td>
            </tr>
            <tr>
              <td class="txt-center">연&middot;고대반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 6이내 또는<br>*국&middot;수&middot;영&middot;탐 내신 평균 2등급 이내</td>
            </tr>
            <tr>
              <th class="bg-sky">특별전형</th>
              <td colspan="3">*본원지정 특목고 및 자사고<br><br>

                &lt;지정 고교 &gt;<br>
                <ul class="list-04">
                  <li>과학고, 영재고, 외고, 국제고</li>
                  <li>공주사대부고, 공주한일고, 광양제철고, 김천고, 민사고, 북일고, 상산고, 외대부고, 인천하늘고, 포항제철고, 하나고, 현대청운고</li>
                </ul>
              </td>
            </tr>
            <tr>
              <th class="bg-sky">제출서류</th>
              <td colspan="3">*전국 모의고사(3월.6월.9월 중 택 1) 성적표 1부<br>
                *성적증명서(현재 학년 1학기까지 성적 반영) 1부<br>
                ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출<br>
                *결핵검진확인서(병원/보건소 발급)</td>
            </tr>
          </tbody>
        </table>
      </div>
      <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
      <div class="tbl-box">
        <table class="tbl-01">
          <colgroup>
            <col style="width:12%;">
            <col style="width:12%;">
            <col style="width:20%;">
            <col style="width:auto">
          </colgroup>
          <tbody>
            <tr>
              <th class="bg-sky">모집대상</th>
              <td colspan="3">*고3(현 고2), 고2(현 고1) 선발 기준에 해당되는 남&middot;여 학생<br>
                *고2(현 고1) 미적 + 과탐 선택자<br>
                *고3(현 고2) 인문/자연계열 선택자<br>
                <strong>전 숙소 2인 1실</strong>
              </td>
            </tr>
            <tr>
              <th class="bg-sky">개강일</th>
              <td colspan="3">2023년 12월 30일(토)</td>
            </tr>
            <tr>
              <th class="bg-sky">수업기간</th>
              <td colspan="3">2023년 12월 30일(토) ~ 2024년 2월 3일(토) 5주 과정 (35일)</td>
            </tr>
            <tr>
              <th class="bg-sky" rowspan="5">입학기준</th>
              <td rowspan="2" class="txt-center">고2(현 고1)<p class="ico-end-balloon">전반 마감</p></td>
              <td>HS반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 3이내<br>
                또는 국&middot;수&middot;영&middot;탐 내신 평균 1.3등급 이내</td>
            </tr>
            <tr>
              <td>서울대/의&middot;치대반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 4이내<br>
                또는 국&middot;수&middot;영&middot;탐 내신 평균 1.6등급 이내</td>
            </tr>
            <tr>
              <td rowspan="3" class="txt-center">고3(현 고2)<p class="ico-end-balloon">전반 마감</p></td>
              <td>HS반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 3이내<br>
                또는 국·수·영·탐 내신 평균 1.3등급 이내</td>
            </tr>
            <tr>
              <td>서울대/의&middot;치대반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 4이내<br>
                또는 국&middot;수&middot;영&middot;탐 내신 평균 1.6등급 이내</td>
            </tr>
            <tr>
              <td>연&middot;고대반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 6이내<br>
                또는 국&middot;수&middot;영&middot;탐 내신 평균 2등급 이내</td>
            </tr>
            <tr>
              <th class="bg-sky">특별전형</th>
              <td colspan="3">*본원지정 특목고 및 자사고<br><br>

                &lt;지정 고교&gt;<br>
                과학고, 영재고, 외고, 국제고<br>
                공주사대부고, 공주한일고, 광양제철고, 김천고, 민사고, 북일고, 상산고, 외대부고, 인천하늘고, 포항제철고, 하나고, 현대청운고</td>
            </tr>
            <tr>
              <th class="bg-sky">제출서류</th>
              <td colspan="3">*전국 모의고사(3월.6월.9월 중 택 1) 성적표 1부<br>
                *결핵검진확인서(병원/보건소 발급)</td>
            </tr>
            <tr>
              <th class="bg-sky">성적표 제출방법</th>
              <td colspan="3">*온라인 원서접수 - 접수 시 사진파일 첨부<br>
                *카카오톡 채널 - ‘서연고·의치대 전문관’ 채널로 성적표 사진파일 전송<br>
                *팩스 전송 : 031) 513-1011 (연락처 필수 기재)</td>
            </tr>
          </tbody>
        </table>
      </div>
      <% Else %>
      <div class="tbl-box">
        <table class="tbl-01">
          <colgroup>
            <col style="width:12%;">
            <col style="width:12%;">
            <col style="width:20%;">
            <col style="width:auto;">
          </colgroup>
          <tbody>
            <tr>
              <th class="bg-sky">모집대상</th>
              <td colspan="3">고3(현 고2) : 수학(미적분 / 기하), 과학탐구 개설<br>
                고2(현 고1) : 수학(미적분), 과학탐구 개설</td>
            </tr>
            <tr>
              <th class="bg-sky">개강일</th>
              <td colspan="3">2023년 12월 30일(토)(학교 학사일정에 따라 변경될 수 있습니다)</td>
            </tr>
            <tr>
              <th class="bg-sky">수업기간</th>
              <td colspan="3">2023년 12월 30일(토) ~ 2024년 2월 3일(토) 5주 과정 (35일)(학교 학사일정에 따라 변경될 수 있습니다)</td>
            </tr>
            <tr>
              <th class="bg-sky" rowspan="5">입학기준</th>
              <td rowspan="3" class="tac">고3(현 고2)<p class="ico-end-s">마감</p></td>
              <td class="tac">HS반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 3이내<br>또는 국&middot;수&middot;영&middot;탐 내신 평균 1.2등급 이내</td>
            </tr>
            <tr>
              <td class="tac">서울대/의&middot;치대반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 4이내<br>또는 국&middot;수&middot;영&middot;탐 내신 평균 1.4등급 이내</td>
            </tr>
            <tr>
              <td class="tac">연&middot;고대반</td>
              <td>*전국모의고사 국&middot;수&middot;영 or 국&middot;수&middot;탐 등급 합 6이내<br>또는 국&middot;수&middot;영&middot;탐 내신 평균 1.6등급 이내</td>
            </tr>
            <tr>
              <td rowspan="2" class="tac">고2(현 고1)<p class="ico-end-s">마감</p></td>
              <td class="tac">HS반</td>
              <td>*전국모의고사 국&middot;수&middot;영&middot;탐구 중 상위 3개 영역 등급 합 3이내<br>또는 국&middot;수&middot;영&middot;탐 내신 평균 1.2등급 이내</td>
            </tr>
            <tr>
              <td class="tac">서울대/의&middot;치대반</td>
              <td>*전국모의고사 국&middot;수&middot;영&middot;탐구 중 상위 3개 영역 등급 합 4이내<br>또는 국&middot;수&middot;영&middot;탐 내신 평균 1.4등급 이내</td>
            </tr>
            <tr>
              <th class="bg-sky">특별전형</th>
              <td colspan="3">▷ 과학고. 영재고<br>※ 개별 면접 후 입학 여부 승인</td>
            </tr>
            <tr>
              <th class="bg-sky">제출서류</th>
              <td colspan="3">*전국 모의고사(3월.6월.9월 중 택 1) 성적표 1부<br>*결핵검진확인서(병원/보건소 발급)</td>
            </tr>
            <tr>
              <th class="bg-sky">성적표 제출방법</th>
              <td colspan="3">*온라인 원서접수 - 접수 시 사진파일 첨부<br>*카카오톡 채널 - ‘최상위권 남학생 의대전문관’ 채널로 성적표 사진파일 전송<br>*팩스 전송 : 031) 512-1013 (연락처 필수 기재)</td>
            </tr>
          </tbody>
        </table>
      </div>
      <% End If %>

      <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont10_tit02.png" alt="등록 안내" /></p>
      <% If sCampusCode = "CD0348" Then '여기숙 %>
      <div class="tbl-box">
        <table class="tbl-01">
          <colgroup>
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:auto">
          </colgroup>
          <tbody>
            <tr>
              <th rowspan="3" class="bg-sky">상담 및 접수</th>
              <td class="txt-center">전화 상담</td>
              <td>상담 후 입학이 가능하면 온라인 원서접수 후 예약금을 지정 계좌로 입금</td>
            </tr>
            <tr>
              <td class="txt-center">방문 상담</td>
              <td>성적표 지참하시어 본원 방문 (원본 지참 필수)<br>
                상담 후 온라인 원서접수 등록 예약 → 예약금 납부</td>
            </tr>
            <tr>
              <td class="txt-center">온라인 상담</td>
              <td>학원 홈페이지에서 온라인 접수<br>
                상담 후 등록 절차 진행</td>
            </tr>
            <tr>
              <th class="bg-sky">수강료</th>
              <td class="t_left" colspan="2">
                <p class="pb10"><strong>&middot; 강좌 안내</strong><br>등록예약금 : 60만원 (수강료 포함 금액)</p>

                <div class="tbl-wrap wrap01">
                  <div class="left-box">
                      <p class="tbl-stit">- 필수 수업</p>
                      <table class="tbl-02">
                          <colgroup>
                              <col style="width:auto">
                              <col style="width:auto">
                              <col style="width:auto">
                              <col style="width:auto">
                              <col style="width:auto">
                          </colgroup>
                          <thead>
                              <tr>
                                  <th rowspan="2" class="bd-r">과목</th>
                                  <th colspan="2">공통</th>
                                  <th rowspan="2">필수선택1</th>
                                  <th rowspan="2">필수선택2</th>
                              </tr>
                              <tr>
                                  <th>국어</th>
                                  <th>수학 (Ⅰ/Ⅱ) </th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <th>주간<br>수업시간</th>
                                  <td>7T</td>
                                  <td>7T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                              </tr>
                          </tbody>
                      </table>
                  </div>
                  <div class="right-box">
                      <p class="tbl-stit">- 공통 필수(TEST)</p>
                      <table class="tbl-02">
                          <colgroup>
                              <col style="width:20%">
                              <col style="width:30%">
                              <col style="width:auto">
                          </colgroup>
                          <thead style="height: 75px;">
                              <tr>
                                  <th>과목</th>
                                  <th>국어/수학/영어<br>TEST(일간/주간)</th>
                                  <th>영어 듣기</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <th>주간<br>수업시간</th>
                                  <td>총 8T</td>
                                  <td>2.5T</td>
                              </tr>
                          </tbody>
                      </table>
                  </div>
                </div>

                
                <div class="tbl-wrap wrap02">
                  <p class="tbl-stit">- 선택 수업 (최소 2과목 이상 필수 선택)</p>
                  <table class="tbl-01">
                    <colgroup>
                      <col style="width:15%;">
                      <col style="width:15%;">
                      <col style="width:15%;">
                      <col style="width:15%;">
                      <col style="width:auto">
                      <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th>과목</th>
                            <th>수학<br>(미적분/기하)</th>
                            <th>영어</th>
                            <th>과학탐구</th>
                            <th>논술</th>
                            <th>한국사</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="tal">주간<br>수업시간</th>
                            <td>과목당 3.5T</td>
                            <td>3.5T</td>
                            <td>과목당 3.5T</td>
                            <td>3.5T</td>
                            <td>3.5T</td>
                        </tr>
                    </tbody>
                  </table>
                  <ul class="list-03">
                    <li>과학탐구 : 물리학Ⅰ, 화학 Ⅰ, 생명과학 Ⅰ, 지구과학 Ⅰ, 물리학Ⅱ , 화학Ⅱ , 생명과학Ⅱ , 지구과학Ⅱ</li>
                    <li>논술 : 수리 논술 진행</li>
                    <li>기하 과목의  경우, 수강 희망자 인원에 따라 개설될 수 있습니다</li>
                  </ul>
                </div>
                <div class="tbl-wrap">
                  <p class="mt10"><strong class="mt10">▶ 수강료</strong></p>
                  <table class="tbl-01">
                    <thead>
                      <tr class="low">
                        <th>구성</th>
                        <th>윈터스쿨 총 수강료</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th>필수 수업+선택 수업 2과목</th>
                        <td>3,655,000원</td>
                      </tr>
                      <tr>
                        <th>필수 수업+선택 수업 3과목</th>
                        <td>3,810,000원</td>
                      </tr>
                      <tr>
                        <th>필수 수업+선택 수업 4과목</th>
                        <td>3,965,000원</td>
                      </tr>
                      <tr>
                        <th>필수 수업+선택 수업 5과목</th>
                        <td>4,120,000원</td>
                      </tr>
                      <tr>
                        <th>필수 수업+선택 수업 6과목</th>
                        <td>4,275,000원</td>
                      </tr>
                    </tbody>
                  </table>
                </얖>
              </td>
            </tr>
            <tr>
              <th class="bg-sky">입금 방법</th>
              <td colspan="2">가상계좌로 입금 (등록예약금 60만원)<br>
                ※ 가상계좌는 서류심사 후 합격자에 한하여 신청자 휴대폰에 문자(카카오톡)로 발송합니다.</td>
            </tr>
            <tr>
              <th class="bg-sky">입학준비물</th>
              <td colspan="2"><div class="enter-btn"><a href="/russel_w/school/supply.asp#tab2">입학준비물 확인하기</a></div></td>
            </tr>
          </tbody>
        </table>
        <p class="txt_left mt10">※ 대기자 충원의 경우, 성적에 따라 우선순위가 부여될 수 있습니다.</p>
      </div>
      <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
      <div class="tbl-box">
        <table class="tbl-01">
            <colgroup>
                <col style="width:15%;">
                <col style="width:15%;">
                <col style="width:70%;">
            </colgroup>
            <tbody>
              <tr>
                <th class="bg-sky" rowspan="3">상담 및 접수</th>
                <td>전화 상담</td>
                <td>&middot; 상담 후 입학이 가능하면 온라인 원서접수 후 예약금을 지정계좌로 입금</td>
              </tr>
              <tr>
                <td>방문 상담</td>
                <td>&middot; 성적표 지참하시어 본원 방문 (원본 지참 필수)<br>
                  &middot; 상담 후 온라인 원서접수 등록예약 -> 예약금납부</td>
              </tr>
              <tr>
                <td>온라인 상담</td>
                <td>&middot; 학원 홈페이지에서 온라인 접수<br>
                  &middot; 상담 후 등록 절차 진행</td>
              </tr>
              <tr>
                  <th class="bg-sky">강좌안내 및 수강료</th>
                  <td class="t_left" colspan="2">
                      <strong>공통 필수 I </strong><br>
                      <p class="mt10 mb5"><strong class="red_txt">- 고3</strong></p>
                      <table class="tbl-01 s-tbl">
                          <thead>
                              <tr>
                                  <th>과목</th>
                                  <th colspan="2">국어</th>
                                  <th colspan="2">수학</th>
                                  <th>영어</th>
                                  <th>탐구1</th>
                                  <th>탐구2</th>
                                  <th>논술<br>
                                  (선택)</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td class="b-l-n">수업 구분</td>
                                  <td>현강<br>
                                  (독서)</td>
                                  <td>대치동<br>현장 강의</td>
                                  <td>현강<br>
                                    (수II)</td>
                                  <td>대치동<br>현장 강의</td>
                                  <td>현강 or<br>대치동<br>현장 강의</td>
                                  <td>현강</td>
                                  <td>현강</td>
                                  <td>현강</td>
                              </tr>
                              <tr>
                                  <td class="b-l-n">주간<br>수업시간</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                              </tr>
                          </tbody>
                      </table>
                      <p class="mt20 mb5"><strong class="red_txt mt10">- 고2</strong></p>
                      <table class="tbl-01 s-tbl">
                          <tbody>
                              <tr class="low">
                                  <th rowspan="2" class="bg-gray">과목</th>
                                  <th class="bg-gray">국어</th>
                                  <th class="bg-gray">수학</th>
                                  <th class="bg-gray">영어</th>
                                  <th class="bg-gray">탐구1</th>
                                  <th class="bg-gray">탐구2</th>
                                  <th class="bg-gray">논술<br>
                                  (선택)</th>
                              </tr>
                              <tr>
                                  <td>7T</td>
                                  <td>7T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                                  <td>3.5T</td>
                              </tr>
                          </tbody>
                      </table>
                      <p>※ 고2의 경우는 학원 현강수업만 진행</p>
                      <p class="mt20 mb5"><strong class="black">공통 필수 II</strong> <strong class="red_txt mt10">(고2, 고3 공통)</strong></p>
                      <table class="tbl-01 s-tbl">
                          <thead>
                              <tr class="low">
                                  <th>과목</th>
                                  <th>국어/수학/영어 TEST<br>(일일/주간)</th>
                                  <th>영어듣기</th>
                                  <th>체육</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td class="b-l-n">주간 수업시간</td>
                                  <td>8T</td>
                                  <td>2.5T</td>
                                  <td>2T</td>
                              </tr>
                          </tbody>
                      </table>
                      <p class="mt20 mb5"><strong class="black">탐구 과목</strong> <strong class="red_txt mt10">(고3)</strong></p>
                      <table class="tbl-01">
                          <colgroup>
                            <col style="width: 10%;">
                            <col style="width: ;">
                          </colgroup>
                          <tbody>
                              <tr>
                                  <th class="bg-gray">과학 탐구</th>
                                  <td>물리학Ⅰ, 화학Ⅰ, 생명과학Ⅰ, 지구과학Ⅰ</td>
                              </tr>
                              <tr>
                                <th class="bg-gray">사회 탐구</th>
                                <td>생활과윤리, 사회문화, 윤리와사상, 정치와법, 한국지리, 세계지리, 세계사, 동아시아사</td>
                              </tr>
                          </tbody>
                      </table>
                      <p>*과탐 Ⅱ 과목 및 사탐 경제 과목 등은 수강 희망자 인원에 따라 개설될 수 있습니다.</p>
                      <p class="mt20 mb5"><strong class="black">탐구 과목</strong> <strong class="red_txt mt10">(고2)</strong></p>
                      <table class="tbl-01">
                          <colgroup>
                            <col style="width: 10%;">
                            <col style="width: ;">
                          </colgroup>
                          <tbody>
                              <tr>
                                  <th class="bg-gray">과학 탐구</th>
                                  <td>물리학Ⅰ, 화학Ⅰ, 생명과학Ⅰ, 지구과학Ⅰ</td>
                              </tr>
                          </tbody>
                      </table>
                      <p>*과탐 Ⅱ 과목은 수강 희망자 인원에 따라 개설될 수 있습니다.</p>
                      <p class="mt10"><strong class="mt10">▶예약금 : 60만원(입금만 가능)<br>
                        ▶수강료 : 추후 안내
                        </strong></p>
                  </td>
              </tr>
              <tr>
                  <th class="bg-sky">결제 방법</th>
                  <td class="t_left" colspan="2">카드 결제 또는 가상 계좌로 입금<br>※ 가상 계좌는 서류심사 후 합격자에 한하여 문자(카카오톡)로 발송합니다.</td>
              </tr>
              <tr>
                  <th class="bg-sky">입학 준비물</th>
                  <td colspan="2">
                      <p class="enter-btn"><a href="/russel_sm/school/supply.asp#tab1">입학준비물 확인하기</a></p>
                  </td>
              </tr>
            </tbody>
        </table>
        <p class="txt_left mt10">※ 대기자 충원의 경우, 성적에 따라 우선순위가 부여될 수 있습니다.</p>
      </div>
      <% Else %>
      <div class="tbl-box">
        <table class="tbl-01">
          <colgroup>
              <col style="width:10%;">
              <col style="width:10%;">
              <col style="width:auto">
          </colgroup>
          <tbody>
              <tr>
                <th class="bg-sky" rowspan="3">상담 및 접수</th>
                <td class="tac">전화 상담</td>
                <td>온라인 원서접수 → 전화상담 → 예약금 납부</td>
              </tr>
              <tr>
                <td class="tac">방문 상담</td>
                <td>온라인 원서접수 → 방문상담예약(전화문의) → 방문상담진행 → 예약금 납부</td>
              </tr>
              <tr>
                <td class="tac">온라인 상담</td>
                <td>학원 홈페이지에서 온라인 접수<br>
                  상담 후 등록 절차 진행</td>
              </tr>
              <tr>
                  <th class="bg-sky">강좌안내</th>
                  <td colspan="2">
                    <div class="c-wrap">
                      <ul class="c_list">
                        <li>공통<br>필수</li>
                        <li>
                          <p>국어 공통 3.5T + 3.5T<br>(문학/독서)</p>
                          <p>수학 공통 3.5T + 3.5T<br>(수Ⅰ/수Ⅱ)</p>
                        </li>
                        <li class="m0">
                          <p>일일/주간 TEST 8T<br>(국 + 수 + 영)</p>
                          <p class="sbx">영어듣기 2.5T + 체육 1T</p>
                        </li>
                      </ul>
                      <p><img src="<%=img_path_yangji%>/2023/winter/ico_plus.png" alt="" /></p>
                      <ul class="c_list type2">
                        <li>선택<br>필수</li>
                        <li class="c-box">
                          <p>고2</p>
                          <p>고3</p>
                        </li>
                        <li class="m0">
                          <p>2과목 필수(과목당 3.5T)<br>
                            (고2 미적 / 영어 / 수리논술 / 한국사 / 과탐)</p>
                          <p>2과목 필수(과목당 3.5T)<br>
                            (고3 미적/ 기하 / 영어 / 수리논술 / 한국사 / 과탐)</p>
                        </li>
                      </ul>
                    </div>
                      <ul>
                        <li>* 과학탐구 : 물리학Ⅰ, 화학 Ⅰ, 생명과학 Ⅰ, 지구과학 Ⅰ, 물리학Ⅱ , 화학Ⅱ , 생명과학Ⅱ , 지구과학Ⅱ</li>
                        <li>* 기하 과목의  경우, 수강 희망자 인원에 따라 개설될 수 있습니다</li>
                      </ul>
                  </td>
              </tr>
              <tr>
                  <th class="bg-sky">수강료 안내</th>
                  <td colspan="2">* 예약금  60만원 (지정 계좌로 입금)<br>
                    * 수강료 안내 <span class="txt red_txt">(35일 기준)</span>
                    <table class="tbl-01 mt10">
                      <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto">
                      </colgroup>
                      <thead>
                        <tr>
                          <th class="bg-sky">구성</th>
                          <th class="bg-sky">윈터스쿨 총 수강료</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="txt-center">필수 수업+선택 수업 2과목</td>
                          <td class="txt-center">3,655,000원</td>
                        </tr>
                        <tr>
                          <td class="txt-center">필수 수업+선택 수업 3과목</td>
                          <td class="txt-center">3,810,000원</td>
                        </tr>
                        <tr>
                          <td class="txt-center">필수 수업+선택 수업 4과목</td>
                          <td class="txt-center">3,965,000원</td>
                        </tr>
                        <tr>
                          <td class="txt-center">필수 수업+선택 수업 5과목</td>
                          <td class="txt-center">4,120,000원</td>
                        </tr>                       
                      </tbody>
                    </table>
                  </td>
              </tr>
              <tr>
                  <th class="bg-sky">입학준비물</th>
                  <td colspan="2">
                      <div class="enter-btn"><a href="/russel_yj/school/supply.asp#tab2">입학준비물 확인하기</a></div>
                  </td>
              </tr>
          </tbody>
        </table>
        <p class="txt_left mt10">※ 대기자 충원의 경우, 성적에 따라 우선순위가 부여될 수 있습니다.</p>
      </div>
      <% End If %>

      <!-- 입학 절차 -->
      <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont10_tit03.png" alt="입학 절차" /></p>
      <p><img src="<%=img_path_yangji%>/2023/winter/cont10_img.jpg" alt="" /></p>
    </div>
  </div>
</div>
<div class="cont js-cont">
  <div class="cont11">
    <div class="inner">
      <!-- 윈터스쿨 학습계획표 [고3 과정] -->
      <p class="tit mt0"><img src="<%=img_path_yangji%>/2023/winter/cont11_tit01.png" alt="윈터스쿨 학습계획표 [고3 과정]" /></p>
      <% If sCampusCode = "CD0348" Then '여기숙 %>
      <div class="tab-cont-wrap tbl-box bn">
        <div class="bt-tab t_01">
            <a href="#" class="on"><strong>국어 / 수학 / 영어</strong></a>
            <a href="#"><strong>과학탐구 / 수리논술</strong></a>
        </div>
        <div class="cont-box t_01 on">
          <p class="tbl-tit">국어/수학/영어</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:10%;">
              <col style="width:auto">
              <col style="width:15%;">
              <col style="width:13%;">
              <col style="width:13%;">
              <col style="width:19%;">
            </colgroup>
            <thead>
              <tr class="low">
                <th rowspan="2">구분</th>
                <th rowspan="2">국어</th>
                <th colspan="3">수학</th>
                <th rowspan="2">영어</th>
              </tr>
              <tr>
                <th>필수 수업</th>
                <th colspan="2">추가 선택 수업</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">학습목표</th>
                <td><strong>수능&lt;국어&gt;영역에 대한 전반적인 이해와<br>
                  세부 영역으로서의 ‘문학‘,’독서’의 원래 이해,<br>
                  이를 바탕으로 한 기본 접근법 학습</strong></td>
                <td><strong>수학1, 수학2</strong><br>
                  개념 복습과 모의고사<br>
                  및 수능 기출 풀이를<br>
                  통한 실력완성</td>
                <td><strong>미적분</strong><br>
                  개념완성 및<br>
                  내신, 수능 기출 풀이</td>
                <td><strong>기하</strong><br>
                  개념완성 및<br>내신, 수능 기출 풀이</td>
                <td> &middot; 절대평가 1등급을 위한<br> 
                  기출 어휘 끝내기<br>
                  &middot; 심화구문 해석능력 배양<br>
                  &middot; 문제 해결능력 확립</td>
              </tr>
              <tr>
                <th class="bg-sky">1주차</th>
                <td><strong>&middot; 문학 :</strong> 2024학년도 대학수학능력시험 엿보기,<br>
                  문학 출제 원리 확인하기<br>
                  <strong>&middot; 독서 :</strong> 2024학년도 대학수학능력시험 엿보기,<br>
                  독서 지문의 논리적 흐름 확인하기</td>
                <td><strong>수학1</strong><br>
                  지수와 로그<br>
                  ~ 지수함수와 로그함수<br><br>
                  <strong>수학2</strong><br> 
                  함수의 극한<br>
                  ~ 함수의 연속성</td>
                <td>수열의 극한 ~ 급수</td>
                <td>이차곡선</td>
                <td><strong>&middot; 구문 : </strong> 문장의 형식과 구조<br>
                  <strong>&middot; 독해 :</strong> 대의 파악 유형<br>
                  <strong>&middot; 듣기 :</strong> 짧은 대화 후 이어질 말
                  </td>
              </tr>
              <tr>
                <th class="bg-sky">2주차</th>
                <td><strong>&middot; 문학 :</strong> 현대시 읽기 원리 분석 및 기출 문제 풀이<br>
                  <strong>&middot; 독서 :</strong> 문장과 문장 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br> 
                  삼각함수의 뜻과 정의<br>
                  ~ 삼각함수의 활용<br><br>
                  <strong>수학2</strong><br>
                  미분계수와 도함수<br>
                  ~ 접선의 방정식
                  </td>
                <td>초월함수의 극한<br>
                  ~ 여러가지 미분법</td>
                <td>이차곡선-평면벡터</td>
                <td><strong>&middot; 구문 : </strong> 강조구문/병렬구문<br>
                  <strong>&middot; 독해 :</strong> 간접쓰기(순서/삽입)<br>
                  <strong>&middot; 듣기 :</strong> 계산문제<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(1) 
                  </td>
              </tr>
              <tr>
                <th class="bg-sky">3주차</th>
                <td><strong>&middot; 문학 :</strong> 현대시 읽기 원리 분석 및<br>기출 문제 풀이Ⅰ<br>
                  <strong>&middot; 독서 :</strong> 단락과 단락 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br>
                  등차등비수열<br>
                  ~ 여러 가지 수열<br><br>
                  <strong>수학2</strong><br>
                  도함수의 활용</td>
                <td>도함수의 활용</td>
                <td>평면벡터</td>
                <td><strong>&middot; 구문 :</strong> 도치구문/생략구문<br>
                  <strong>&middot; 독해 : </strong>빈칸완성(1)<br>
                  <strong>&middot; 듣기 :</strong> 일치하지 않는 것<br>고르기<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(2) </td>
              </tr>
              <tr>
                <th class="bg-sky">4주차</th>
                <td><strong>&middot; 문학 :</strong> 고전시가 읽기 원리 분석 및<br>기출 문제 풀이Ⅱ<br>
                  <strong>&middot; 독서 :</strong> 서론을 토대로 글 분석</td>
                <td><strong>수학1</strong><br>
                  여러 가지 수열<br>
                  ~ 수학적 귀납법<br><br>
                  <strong>수학2</strong><br>
                  부정적분과 정적분</td>
                <td>부정적분과 정적분</td>
                <td>공간도형</td>
                <td><strong>&middot; 구문 : </strong> 부정구문<br>
                  <strong>&middot; 독해 :</strong> 빈칸완성(2)<br>
                  <strong>&middot; 듣기 :</strong> 1지문 2문항<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(3)</td>
              </tr>
              <tr>
                <th class="bg-sky">5주차</th>
                <td><strong>&middot; 문학 :</strong> 소설 문학 읽기 원리 분석 및 기출문제 풀이<br>
                  <strong>&middot; 작문&middot;화법 :</strong> 반복되는 문제 유형<br>
                  <strong>&middot; 문법 :</strong> 문법 개념</td>
                <td><strong>수학1</strong><br>
                  수학적 귀납법<br><b>
                  <strong>수학2</strong><br>
                  정적분의 활용</td>
                <td>정적분의 활용</td>
                <td>공간좌표</td>
                <td><strong>&middot; 구문 : </strong> 특수구문<br>
                  <strong>&middot; 독해 :</strong> 무관한 문장찾기<br>
                  <strong>&middot; 듣기 :</strong> 1지문 2문항 (2)<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(4)</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습 진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
          </ul>
        </div>

        <div class="cont-box t_01">
          <!-- 수리논술 -->
          <p class="tbl-tit">수리 논술</p>
          <table class="tbl-01">
            <colgroup>
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
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">수리논술</th>
                <td>&middot; 수능 VS 수리논술<br>
                  &middot; 직접 논증법<br>
                  &middot; 간접 논증법</td>
                <td>&middot; 대수 일반</td>
                <td>&middot; 등식이론</td>
                <td>&middot; 부등식 이론</td>
                <td>&middot; 함수 일반</td>
              </tr>
            </tbody>
          </table>

          <!-- 과학탐구 -->
          <p class="tbl-tit">과학탐구</p>
          <table class="tbl-01">
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
                <th class="bg-sky">물리학Ⅰ</th>
                <td>&middot; 등가속도 운동</td>
                <td>&middot; Newton의 운동 법칙①</td>
                <td>&middot; Newton의 운동 법칙 ②</td>
                <td>&middot; 운동량과 충격량<br>
                  &middot; 일과 에너지</td>
                <td>&middot; 역학적에너지 보존과 비보존</td>
              </tr>
              <tr>
                <th class="bg-sky">화학Ⅰ</th>
                <td>&middot; 화학식량과 물</td>
                <td>&middot; 화학 반응식<br>
                  &middot; 질량 보존의 법칙</td>
                <td>&middot; 화학 반응식과 양적관계<br>
                  &middot; 용액의 농도</td>
                <td>&middot; 원자의 구조<br>
                  &middot; 현대적 원자 모형과 전자 배치</td>
                <td>&middot; 원소의 주기적 성질</td>
              </tr>
              <tr>
                <th class="bg-sky">생명과학Ⅰ</th>
                <td>&middot; 자극전달, 근 수축</td>
                <td>&middot; 신경계,항상성,방어</td>
                <td>&middot; 핵상,핵형,세포분열</td>
                <td>&middot; 사람의 유전</td>
                <td>&middot; 염색체,유전자 이상</td>
              </tr>
              <tr>
                <th class="bg-sky">지구과학Ⅰ</th>
                <td>&middot; 판구조론<br>
                  &middot; 고지자기<br>
                  &middot; 플룸 구조론<br>
                  &middot; 마그마의 생성</td>
                <td>&middot; 퇴적암<br>
                  &middot; 퇴적구조<br>
                  &middot; 지질구조<br>
                  &middot; 상대연대/절대연대</td>
                <td>&middot; 기단과 전선<br>
                  &middot; 온대저기압<br>
                  &middot; 태풍/악기상</td>
                <td>&middot; 해수의 성질<br>
                  &middot; 대기 대순환<br>
                  &middot; 표층 순환</td>
                <td>&middot; 심층 순환<br>
                  &middot; 대기와 해양의 상호 작용</td>
              </tr>
              <tr>
                <th class="bg-sky">물리학Ⅱ</th>
                <td>&middot; 힘의 합성, 힘의 평형</td>
                <td>&middot; 등가속도 운동, 포물선 운동</td>
                <td>&middot; 원운동, 케플러 법칙</td>
                <td>&middot; 일반 상대성 이론, 일과 에너지</td>
                <td>&middot; 열역학</td>
              </tr>
              <tr>
                <th class="bg-sky">화학Ⅱ</th>
                <td>&middot; 물질의 세가지 상태</td>
                <td>&middot; 용액</td>
                <td>&middot; 반응 엔탈피</td>
                <td>&middot; 화학평형과 평형상수</td>
                <td>&middot; 평형이동과 상평형</td>
              </tr>
              <tr>
                <th class="bg-sky">생명과학Ⅱ</th>
                <td>&middot; 세포막을 통한 물질이동<br>
                  &middot; 효소</td>
                <td>&middot; 세포 호흡</td>
                <td>&middot; 광합성</td>
                <td>&middot; 유전물질과 유전자 발현</td>
                <td>&middot; 유전자 발현 조절</td>
              </tr>
              <tr>
                <th class="bg-sky">지구과학Ⅱ</th>
                <td>&middot; 천체의 좌표계<br>
                  &middot; 지구의 자전</td>
                <td>&middot; 지구의 공전<br>
                  &middot; 행성의 운동</td>
                <td>&middot; 케플러 법칙</td>
                <td>&middot; 별까지의 거리</td>
                <td>&middot; 은하의 운동</td>
              </tr>
            </tbody>
          </table>

          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
          </ul>
        </div>
      </div>

      <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
      <div class="tab-cont-wrap tbl-box bn">
        <div class="bt-tab t_01">
            <a href="#" class="on"><strong>국어 / 수학 / 영어</strong></a>
            <a href="#"><strong>과학탐구 / 사회탐구 / 수리논술 / 인문논술</strong></a>
        </div>
        <div class="cont-box t_01 on">
          <p class="tbl-tit">고3 과정 학습계획표 (국어/수학/영어)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:10%;">
              <col style="width:auto">
              <col style="width:15%;">
              <col style="width:13%;">
              <col style="width:13%;">
              <col style="width:11%;">
              <col style="width:19%;">
            </colgroup>
            <thead>
              <tr class="low">
                <th rowspan="2">구분</th>
                <th rowspan="2">국어</th>
                <th colspan="4">수학</th>
                <th rowspan="2">영어</th>
              </tr>
              <tr class="low">
                <th>필수 수업</th>
                <th colspan="3">추가 선택 수업</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">학습목표</th>
                <td><strong>수능&lt;국어&gt;영역에 대한 전반적인 이해와
                  세부 영역으로서의 ‘문학‘,’독서’의 원래 이해,
                  이를 바탕으로 한 기본 접근법 학습</strong></td>
                <td><strong>수학1, 수학2</strong><br>
                  개념 복습과 모의고사<br>
                  및 수능 기출 풀이를<br>
                  통한 실력완성</td>
                <td><strong>미적분</strong><br>
                  개념완성 및<br>
                  내신, 수능 기출 풀이</td>
                <td><strong>기하</strong><br>
                  개념완성 및<br>내신, 수능 기출 풀이</td>
                <td>확률과통계</td>
                <td> &middot; 절대평가 1등급을 위한<br> 
                  기출 어휘 끝내기<br>
                  &middot; 심화구문 해석능력 배양<br>
                  &middot; 문제 해결능력 확립</td>
              </tr>
              <tr>
                <th class="bg-sky">1주차<br>12/30 ~ 1/5</th>
                <td><strong>&middot; 문학 :</strong> 2024학년도 대학수학능력시험 엿보기,<br>
                  문학 출제 원리 확인하기<br>
                  <strong>&middot; 독서 :</strong> 2024학년도 대학수학능력시험 엿보기,<br>
                  독서 지문의 논리적 흐름 확인하기</td>
                <td><strong>수학1</strong><br>
                  지수와 로그<br>~ 지수함수와 로그함수<br><br>
                  <strong>수학2</strong><br> 
                  함수의 극한<br>~ 함수의 연속성</td>
                <td>수열의 극한 ~ 급수</td>
                <td>이차곡선</td>
                <td>여러 가지 순열</td>
                <td><strong>&middot; 구문 : </strong> 3줄 이상의 긴 지문 구조해석<br>
                  <strong>&middot; 독해 :</strong> 정보연결 (대의파악)<br>
                  <strong>&middot; 듣기 :</strong> 짧은 대화 후 이어질 말
                  </td>
              </tr>
              <tr>
                <th class="bg-sky">2주차<br>1/6 ~ 1/12</th>
                <td><strong>&middot; 문학 :</strong> 현대시 읽기 원리 분석 및 기출 문제 풀이<br>
                  <strong>&middot; 독서 :</strong> 문장과 문장 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br> 
                  삼각함수의 뜻과 정의<br>~ 삼각함수의 활용<br><br>
                  <strong>수학2</strong><br>
                  미분계수와 도함수<br>~ 접선의 방정식</td>
                <td>초월함수의 극한<br>~ 여러가지 미분법</td>
                <td>이차곡선-평면벡터</td>
                <td>중복조합과 이항 정리</td>
                <td><strong>&middot; 구문 : </strong> 강조구문/병렬구문<br>
                  <strong>&middot; 독해 :</strong> 간접쓰기(순서/삽입)<br>
                  <strong>&middot; 듣기 :</strong> 계산문제<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(1) 
                  </td>
              </tr>
              <tr>
                <th class="bg-sky">3주차<br>1/13 ~ 1/19</th>
                <td><strong>&middot; 문학 :</strong> 고전시가 읽기 원리 분석 및<br>기출 문제 풀이<br>
                  <strong>&middot; 독서 :</strong> 단락과 단락 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br>
                  등차등비수열<br>~ 여러 가지 수열<br><br>
                  <strong>수학2</strong><br>
                  도함수의 활용</td>
                <td>도함수의 활용</td>
                <td>평면벡터</td>
                <td>확률의 뜻과 활용<br>
                  조건부확률(1)</td>
                <td><strong>&middot; 구문 :</strong> 도치구문/생략구문<br>
                  <strong>&middot; 독해 : </strong>빈칸완성<br>
                  <strong>&middot; 듣기 :</strong> 일치하지 않는 것<br>고르기<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(2) </td>
              </tr>
              <tr>
                <th class="bg-sky">4주차<br>1/20 ~ 1/26</th>
                <td><strong>&middot; 문학 :</strong> 고전시가 읽기 원리 분석 및<br>기출 문제 풀이Ⅱ<br>
                  <strong>&middot; 독서 :</strong> 서론을 토대로 글 분석</td>
                <td><strong>수학1</strong><br>
                  여러 가지 수열<br>~ 수학적 귀납법<br><br>
                  <strong>수학2</strong><br>
                  부정적분과 정적분</td>
                <td>부정적분과 정적분</td>
                <td>공간도형</td>
                <td>조건부확률(2)<br>
                  확률분포<br>(이산확률분포)</td>
                <td><strong>&middot; 구문 : </strong> 부정구문<br>
                  <strong>&middot; 독해 :</strong> 항의추론<br>
                  <strong>&middot; 듣기 :</strong> 1지문 2문항<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(3)</td>
              </tr>
              <tr>
                <th class="bg-sky">5주차<br>1/27 ~ 2/3</th>
                <td><strong>&middot; 문학 :</strong> 소설 문학 읽기 원리 분석 및 기출문제 풀이<br>
                  <strong>&middot; 작문&middot;화법 :</strong> 반복되는 문제 유형<br>
                  <strong>&middot; 문법 :</strong> 문법 개념</td>
                <td><strong>수학1</strong><br>
                  수학적 귀납법<br><b>
                  <strong>수학2</strong><br>
                  정적분의 활용</td>
                <td>정적분의 활용</td>
                <td>공간좌표</td>
                <td>확률분포<br>(연속확률분포)<br>
                  통계적 추정</td>
                <td><strong>&middot; 구문 : </strong> 특수구문<br>
                  <strong>&middot; 독해 :</strong> 고난도장문 / 어휘 PART<br>
                  <strong>&middot; 듣기 :</strong> 1지문 2문항 (2)<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(4)</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
          </ul>
        </div>

        <div class="cont-box t_01">
          <p class="tbl-tit">고3 과정 학습계획표 (과학탐구)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:8%">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:15%">
              <col style="width:auto">
            </colgroup>
            <thead>
              <tr class="low">
                <th>구분</th>
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">물리학Ⅰ</th>
                <td>&middot; 등가속도 운동</td>
                <td>&middot; Newton의 운동 법칙①</td>
                <td>&middot; Newton의 운동 법칙 ②</td>
                <td>&middot; 운동량과 충격량<br>
                  &middot; 일과 에너지</td>
                <td>&middot; 역학적에너지 보존과 비보존</td>
              </tr>
              <tr>
                <th class="bg-sky">화학Ⅰ</th>
                <td>&middot; 원자 &middot; 분자 양적관계
                  &middot; 화학반응 양적관계</td>
                <td>&middot; 용액<br>
                  &middot; 동위원소</td>
                <td>&middot; 오비탈과 전자배치<br>
                  &middot; 주기적 성질</td>
                <td>&middot; 화학결함<br>
                  &middot; 분자구조</td>
                <td>&middot; PH<br>
                  &middot; 산 &middot; 염기 양적관계<br>
                  &middot; 산화 &middot; 환원</td>
              </tr>
              <tr>
                <th class="bg-sky">생명과학Ⅰ</th>
                <td>&middot; 자극전달, 근 수축</td>
                <td>&middot; 신경계,항상성,방어</td>
                <td>&middot; 핵상,핵형,세포분열</td>
                <td>&middot; 사람의 유전</td>
                <td>&middot; 염색체,유전자 이상</td>
              </tr>
              <tr>
                <th class="bg-sky">지구과학Ⅰ</th>
                <td>&middot; 판구조론<br>
                  &middot; 고지자기<br>
                  &middot; 플룸 구조론<br>
                  &middot; 마그마의 생성</td>
                <td>&middot; 퇴적암<br>
                  &middot; 퇴적구조<br>
                  &middot; 지질구조<br>
                  &middot; 상대연대/절대연대</td>
                <td>&middot; 기단과 전선<br>
                  &middot; 온대저기압<br>
                  &middot; 태풍/악기상</td>
                <td>&middot; 해수의 성질<br>
                  &middot; 대기 대순환<br>
                  &middot; 표층 순환</td>
                <td>&middot; 심층 순환<br>
                  &middot; 대기와 해양의 상호 작용</td>
              </tr>
            </tbody>
          </table>
          <p class="tbl-tit">고3 과정 학습계획표 (사회탐구)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:8%;">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
            </colgroup>
            <thead>
              <tr class="low">
                <th></th>
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">생활과윤리</th>
                <td>윤리학의 분류 & 윤리 이론</td>
                <td>동서양의 윤리 이론</td>
                <td>사회정의 윤리</td>
                <td>자연과 윤리</td>
                <td>지구촌 평화 윤리</td>
              </tr>
              <tr>
                <th class="bg-sky">사회문화</th>
                <td>사회문화 현상의 탐구<br>
                  대상으로서 사회문화 현상(1)</td>
                <td>사회문화 현상의 탐구<br>
                  대상으로서 사회문화 현상(2)</td>
                <td>개인과 사회구조(1)</td>
                <td>개인과 사회구조(2)</td>
                <td>공동체 생활과 지역사회</td>
              </tr>
              <tr>
                <th class="bg-sky">윤리와사상</th>
                <td>동양 윤리의 연원과 전개</td>
                <td>동양 윤리 집중 정리</td>
                <td>서양 윤리 집중 정리</td>
                <td>한국 윤리 집중 정리</td>
                <td>사회 윤리 집중 정리</td>
              </tr>
              <tr>
                <th class="bg-sky">한국지리</th>
                <td>국토 인식과 지리 정보<br>
                  지역적 위치 학습</td>
                <td>지형 환경과 인간 생활</td>
                <td>기후 환경과 인간 생활</td>
                <td>거주 공간의 변화와 지역 개발</td>
                <td>교통, 통신의 발달과<br>
                  서비스업의 변화</td>
              </tr>
              <tr>
                <th class="bg-sky">세계지리</th>
                <td>세계화와 지역 이해<br>
                  대륙별 위치 학습</td>
                <td>세계의 자연 환경과 인간 생활</td>
                <td>세계의 인문 환경과 인문 경관</td>
                <td>세계의 인문 환경과 인문 경관</td>
                <td>몬순 아시아와 오세아니아</td>
              </tr>
              <tr>
                <th class="bg-sky">세계사</th>
                <td>서아시아 역사</td>
                <td>인도 역사</td>
                <td>중세 유럽</td>
                <td>근대 유럽1</td>
                <td>근대 유럽2</td>
              </tr>
              <tr>
                <th class="bg-sky">동아시아사</th>
                <td>동아시아사의 흐름<br>
                  -중국사,일본사,한국사의 개관</td>
                <td>1~3 단원 핵심 개념과<br>
                  기출문제(수능/평가원)분석(1)</td>
                <td>1~3 단원 핵심 개념과<br>
                  기출문제(수능/평가원)분석(2)</td>
                <td>4단원 핵심 개념과<br>
                  기출문제(수능/평가원)분석</td>
                <td>5단원 핵심 개념과<br>
                  기출문제(수능/평가원)분석<br>
                  +실전모의고사 풀이</td>
              </tr>
              <tr>
                <th class="bg-sky">정치와법</th>
                <td>* 민주주의의 이념<br>
                  * 민주주의의 원리</td>
                <td>* 정부형태<br>
                  * 선거제도</td>
                <td>* 국회<br>
                  * 사법부<br>
                  * 헌법재판제도</td>
                <td>* 계약과 미성년자의 권리보호<br>
                  * 가족관계와 법</td>
                <td>* 범죄와 형벌<br>
                  * 청소년범죄<br>
                  * 근로기준법</td>
              </tr>
            </tbody>
          </table>
          <p class="tbl-tit">고 3과정 학습계획표 (수리 논술 / 인문논술)</p>
          <table class="tbl-01">
            <colgroup>
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
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">수리논술</th>
                <td>&middot; 수능 VS 수리논술<br>
                  &middot; 직접 논증법<br>
                  &middot; 간접 논증법</td>
                <td>&middot; 대수 일반</td>
                <td>&middot; 등식이론</td>
                <td>&middot; 부등식 이론</td>
                <td>&middot; 함수 일반</td>
              </tr>
              <tr>
                <th class="bg-sky">인문논술</th>
                <td>&middot; 짧은 글쓰기</td>
                <td>&middot; 비교와 대조</td>
                <td>&middot; 분류와 분석</td>
                <td>&middot; 단락쓰기</td>
                <td>&middot; 종합 완성형</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
          </ul>
        </div>
      </div>
      <% Else %>
      <div class="tab-cont-wrap tbl-box bn">
        <div class="bt-tab t_01">
            <a href="#" class="on"><strong>국어 / 수학 / 영어</strong></a>
            <a href="#"><strong>과학탐구 / 수리논술</strong></a>
        </div>
        <div class="cont-box t_01 on">
          <p class="tbl-tit">고3 과정 학습계획표 (국어/수학/영어)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:10%;">
              <col style="width:auto">
              <col style="width:15%;">
              <col style="width:13%;">
              <col style="width:13%;">
              <col style="width:19%;">
            </colgroup>
            <thead>
              <tr class="low">
                <th rowspan="2">구분</th>
                <th rowspan="2">국어</th>
                <th colspan="3">수학</th>
                <th rowspan="2">영어</th>
              </tr>
              <tr>
                <th>필수 수업</th>
                <th colspan="2">추가 선택 수업</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">학습목표</th>
                <td><strong>수능&lt;국어&gt;영역에 대한 전반적인 이해와<br>
                  세부 영역으로서의 ‘문학‘,’독서’의 원래 이해,<br>
                  이를 바탕으로 한 기본 접근법 학습</strong></td>
                <td><strong>수학1, 수학2</strong><br>
                  개념 복습과 모의고사<br>
                  및 수능 기출 풀이를<br>
                  통한 실력완성</td>
                <td><strong>미적분</strong><br>
                  개념완성 및<br>
                  내신, 수능 기출 풀이</td>
                <td><strong>기하</strong><br>
                  개념완성 및<br>내신, 수능 기출 풀이</td>
                <td> &middot; 절대평가 1등급을 위한<br> 
                  기출 어휘 끝내기<br>
                  &middot; 심화구문 해석능력 배양<br>
                  &middot; 문제 해결능력 확립</td>
              </tr>
              <tr>
                <th class="bg-sky">1주차<br>12/30 ~ 1/5</th>
                <td><strong>&middot; 문학 :</strong> 2024학년도 대학수학능력시험 엿보기,<br>
                  문학 출제 원리 확인하기<br>
                  <strong>&middot; 독서 :</strong> 2024학년도 대학수학능력시험 엿보기,<br>
                  독서 지문의 논리적 흐름 확인하기</td>
                <td><strong>수학1</strong><br>
                  지수와 로그<br>
                  ~ 지수함수와 로그함수<br><br>
                  <strong>수학2</strong><br> 
                  함수의 극한<br>
                  ~ 함수의 연속성</td>
                <td>수열의 극한 ~ 급수</td>
                <td>이차곡선</td>
                <td><strong>&middot; 구문 : </strong> 문장의 형식과 구조<br>
                  <strong>&middot; 독해 :</strong> 대의 파악 유형<br>
                  <strong>&middot; 듣기 :</strong> 짧은 대화 후 이어질 말
                  </td>
              </tr>
              <tr>
                <th class="bg-sky">2주차<br>1/6 ~ 1/12</th>
                <td><strong>&middot; 문학 :</strong> 현대시 읽기 원리 분석 및 기출 문제 풀이<br>
                  <strong>&middot; 독서 :</strong> 문장과 문장 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br> 
                  삼각함수의 뜻과 정의<br>
                  ~ 삼각함수의 활용<br><br>
                  <strong>수학2</strong><br>
                  미분계수와 도함수<br>
                  ~ 접선의 방정식
                  </td>
                <td>초월함수의 극한<br>
                  ~ 여러가지 미분법</td>
                <td>이차곡선-평면벡터</td>
                <td><strong>&middot; 구문 : </strong> 강조구문/병렬구문<br>
                  <strong>&middot; 독해 :</strong> 간접쓰기(순서/삽입)<br>
                  <strong>&middot; 듣기 :</strong> 계산문제<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(1) 
                  </td>
              </tr>
              <tr>
                <th class="bg-sky">3주차<br>1/13 ~ 1/19</th>
                <td><strong>&middot; 문학 :</strong> 고전시가 읽기 원리 분석 및<br>기출 문제 풀이Ⅰ<br>
                  <strong>&middot; 독서 :</strong> 단락과 단락 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br>
                  등차등비수열<br>
                  ~ 여러 가지 수열<br><br>
                  <strong>수학2</strong><br>
                  도함수의 활용</td>
                <td>도함수의 활용</td>
                <td>평면벡터</td>
                <td><strong>&middot; 구문 :</strong> 도치구문/생략구문<br>
                  <strong>&middot; 독해 : </strong>빈칸완성(1)<br>
                  <strong>&middot; 듣기 :</strong> 일치하지 않는 것<br>고르기<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(2) </td>
              </tr>
              <tr>
                <th class="bg-sky">4주차<br>1/20 ~ 1/26</th>
                <td><strong>&middot; 문학 :</strong> 고전시가 읽기 원리 분석 및<br>기출 문제 풀이Ⅱ<br>
                  <strong>&middot; 독서 :</strong> 서론을 토대로 글 분석</td>
                <td><strong>수학1</strong><br>
                  여러 가지 수열<br>
                  ~ 수학적 귀납법<br><br>
                  <strong>수학2</strong><br>
                  부정적분과 정적분</td>
                <td>부정적분과 정적분</td>
                <td>공간도형</td>
                <td><strong>&middot; 구문 : </strong> 부정구문<br>
                  <strong>&middot; 독해 :</strong> 빈칸완성(2)<br>
                  <strong>&middot; 듣기 :</strong> 1지문 2문항<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(3)</td>
              </tr>
              <tr>
                <th class="bg-sky">5주차<br>1/27 ~ 2/3</th>
                <td><strong>&middot; 문학 :</strong> 소설 문학 읽기 원리 분석 및 기출문제 풀이<br>
                  <strong>&middot; 작문&middot;화법 :</strong> 반복되는 문제 유형<br>
                  <strong>&middot; 문법 :</strong> 문법 개념</td>
                <td><strong>수학1</strong><br>
                  수학적 귀납법<br><b>
                  <strong>수학2</strong><br>
                  정적분의 활용</td>
                <td>정적분의 활용</td>
                <td>공간좌표</td>
                <td><strong>&middot; 구문 : </strong> 특수구문<br>
                  <strong>&middot; 독해 :</strong> 무관한 문장찾기<br>
                  <strong>&middot; 듣기 :</strong> 1지문 2문항 (2)<br>
                  <strong>&middot; 과제 :</strong> 기출 모의고사 풀이(4)</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
            <li class="red_txt">수학 추가 선택 수업 (미적분, 기하)은 추가 수업료가 발생됩니다.</li>
          </ul>
        </div>

        <div class="cont-box t_01">
          <p class="tbl-tit">고3 과정 학습계획표 (과학탐구)</p>
          <table class="tbl-01">
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
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">물리학Ⅰ</th>
                <td>&middot; 등가속도 운동</td>
                <td>&middot; Newton의 운동 법칙①</td>
                <td>&middot; Newton의 운동 법칙 ②</td>
                <td>&middot; 운동량과 충격량<br>
                  &middot; 일과 에너지</td>
                <td>&middot; 역학적에너지 보존과 비보존</td>
              </tr>
              <tr>
                <th class="bg-sky">화학Ⅰ</th>
                <td>&middot; 원자 &middot; 분자 양적관계<br>
                  &middot; 화학반응 양적관계</td>
                <td>&middot; 용액<br>
                  &middot; 동위원소</td>
                <td>&middot; 오비탈과 전자배치<br>
                  &middot; 주기적 성질</td>
                <td>&middot; 화학결합<br>
                  &middot; 분자구조</td>
                <td>&middot; PH<br>
                  &middot; 산 &middot; 염기 양적관계<br>
                  &middot; 산화 &middot; 환원</td>
              </tr>
              <tr>
                <th class="bg-sky">생명과학Ⅰ</th>
                <td>&middot; 자극전달, 근 수축</td>
                <td>&middot; 신경계,항상성,방어</td>
                <td>&middot; 핵상,핵형,세포분열</td>
                <td>&middot; 사람의 유전</td>
                <td>&middot; 염색체,유전자 이상</td>
              </tr>
              <tr>
                <th class="bg-sky">지구과학Ⅰ</th>
                <td>&middot; 판구조론<br>
                  &middot; 고지자기<br>
                  &middot; 플룸 구조론<br>
                  &middot; 마그마의 생성</td>
                <td>&middot; 퇴적암<br>
                  &middot; 퇴적구조<br>
                  &middot; 지질구조<br>
                  &middot; 상대연대/절대연대</td>
                <td>&middot; 기단과 전선<br>
                  &middot; 온대저기압<br>
                  &middot; 태풍/악기상</td>
                <td>&middot; 해수의 성질<br>
                  &middot; 대기 대순환<br>
                  &middot; 표층 순환</td>
                <td>&middot; 심층 순환<br>
                  &middot; 대기와 해양의 상호 작용</td>
              </tr>
              <tr>
                <th class="bg-sky">물리학Ⅱ</th>
                <td>&middot; 힘의 합성, 힘의 평형</td>
                <td>&middot; 등가속도 운동, 포물선 운동</td>
                <td>&middot; 원운동, 케플러 법칙</td>
                <td>&middot; 일반 상대성 이론, 일과 에너지</td>
                <td>&middot; 열역학</td>
              </tr>
              <tr>
                <th class="bg-sky">화학Ⅱ</th>
                <td>&middot; 물질의 세가지 상태</td>
                <td>&middot; 용액</td>
                <td>&middot; 반응 엔탈피</td>
                <td>&middot; 화학평형과 평형상수</td>
                <td>&middot; 평형이동과 상평형</td>
              </tr>
              <tr>
                <th class="bg-sky">생명과학Ⅱ</th>
                <td>&middot; 세포막을 통한 물질이동<br>
                  &middot; 효소</td>
                <td>&middot; 세포 호흡</td>
                <td>&middot; 광합성</td>
                <td>&middot; 유전물질과 유전자 발현</td>
                <td>&middot; 유전자 발현 조절</td>
              </tr>
              <tr>
                <th class="bg-sky">지구과학Ⅱ</th>
                <td>&middot; 천체의 좌표계<br>
                  &middot; 지구의 자전</td>
                <td>&middot; 지구의 공전<br>
                  &middot; 행성의 운동</td>
                <td>&middot; 케플러 법칙</td>
                <td>&middot; 별까지의 거리</td>
                <td>&middot; 은하의 운동</td>
              </tr>
            </tbody>
          </table>

          <p class="tbl-tit">고 3과정 학습계획표 (수리 논술)</p>
          <table class="tbl-01">
            <colgroup>
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
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">수리논술</th>
                <td>&middot; 수능 VS 수리논술<br>
                  &middot; 직접 논증법<br>
                  &middot; 간접 논증법</td>
                <td>&middot; 대수 일반</td>
                <td>&middot; 등식이론</td>
                <td>&middot; 부등식 이론</td>
                <td>&middot; 함수 일반</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
          </ul>
        </div>
      </div>
      <% End If %>

      <% If sCampusCode <> "CD0348" Then '여기숙 제외 %>
      <!-- 윈터스쿨 학습계획표 [고2 과정] -->
      <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont11_tit02.png" alt="윈터스쿨 학습계획표 [고2 과정]" /></p>
      <div class="tab-cont-wrap tbl-box bn">
        <div class="bt-tab t_02">
          <a href="#" class="on"><strong>국어 / 수학 / 영어</strong></a>
          <a href="#"><strong>과학탐구 / 수리논술</strong></a>
        </div>
        <% If sCampusCode = "CD0347" Then '서의치기숙 %>
        <div class="cont-box t_02 on">
          <p class="tbl-tit">고2 과정 학습계획표 (국어/수학/영어)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:10%;">
              <col style="width:auto;">
              <col style="width:17%;">
              <col style="width:17%;">
              <col style="width:25%;">
            </colgroup>
            <thead>
              <tr class="low">
                <th rowspan="2">구분</th>
                <th rowspan="2">국어</th>
                <th colspan="2">수학</th>
                <th rowspan="2">영어</th>
              </tr>
              <tr>
                <th>필수수업</th>
                <th>추가 선택 수업</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">학습목표</th>
                <td><strong>수능<국어>영역에 대한 전반적인 이해와<br>
                  세부 영역으로서의 ‘문학‘,’독서’의 원래 이해,<br>
                  이를 바탕으로 한 기본 접근법을 학습한다.</strong></td>
                <td><strong>수학1, 수학2</strong><br>
                  개념완성 및 내신, 수능 기출 풀이</td>
                <td><strong>미적분</strong><br>
                  개념완성 및<br>
                  내신, 수능 기출 풀이</td>
                <td>&middot; 절대평가 1등급을 위한 
                기출 어휘 끝내기<br>
                &middot; 심화구문 해석능력 배양<br>
                &middot; 문제 해결능력 확립</td>
              </tr>
              <tr>
                <th class="bg-sky">1주차<br>12/30 ~ 1/5</th>
                <td><strong>&middot; 문학 : </strong>2024학년도 대학수학능력시험 엿보기,<br>
                  문학 출제 원리 확인하기<br>
                  <strong>&middot; 독서 : </strong>2024학년도 대학수학능력시험 엿보기,<br>
                  독서 지문의 논리적 흐름 확인하기</td>
                <td><strong>수학1</strong><br> 
                  지수와 로그<br>~ 지수함수와 로그함수<br><br>
                  <strong>수학2</strong><br>
                  함수의 극한~함수의 연속성</td>
                <td>수열의 극한~급수</td>
                <td><strong>&middot; 구문 : </strong>3줄 이상의 긴 지문 구조해석<br>
                  <strong>&middot; 독해 : </strong>정보연결(대의파악)<br>
                  <strong>&middot; 듣기 : </strong>짧은 대화 후 이어질 말</td>
              </tr>
              <tr>
                <th class="bg-sky">2주<br>1/6 ~ 1/12</th>
                <td><strong>&middot; 문학 : </strong>현대시 읽기 원리 분석 및 기출 문제 풀이<br>
                  <strong>&middot; 독서 : </strong>문장과 문장 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br> 
                  삼각함수의 뜻과 정의<br>~ 삼각함수의 활용<br><br>
                  <strong>수학2</strong><br>
                  미분계수와 도함수<br>~ 접선의 방정식</td>
                <td>초월함수의 극한<br>~ 여러가지 미분법</td>
                <td><strong>&middot; 구문 : </strong>강조구문/병렬구문<br>
                  <strong>&middot; 독해 : </strong>간접쓰기(순서/삽입)<br>
                  <strong>&middot; 듣기 : </strong>계산문제<br>
                  <strong>&middot; 과제 : </strong>기출 모의고사 풀이(1)</td>
              </tr>
              <tr>
                <th class="bg-sky">3주차<br>1/13 ~ 1/19</th>
                <td><strong>&middot; 문학 : </strong>고전시가 읽기 원리 분석 및 기출 문제 풀이<br>
                  <strong>&middot; 독서 : </strong>단락과 단락 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br>
                  등차등비수열<br>~ 여러 가지 수열<br><br>
                  <strong>수학2</strong><br>
                  도함수의 활용</td>
                <td>도함수의 활용</td>
                <td><strong>&middot; 구문 : </strong>도치구문/생략구문<br>
                  <strong>&middot; 독해 : </strong>빈칸완성<br>
                  <strong>&middot; 듣기 : </strong>일치하지 않는 것 고르기<br>
                  <strong>&middot; 과제 : </strong>기출 모의고사 풀이(2)</td>
              </tr>
              <tr>
                <th class="bg-sky">4주차<br>1/20 ~ 1/26</th>
                <td><strong>&middot; 문학 : </strong>고전시가 읽기 원리 분석 및 기출 문제 풀이Ⅱ<br>
                  <strong>&middot; 독서 : </strong>서론을 토대로 글 분석</td>
                <td><strong>수학1</strong><br>
                  여러 가지 수열의 합<br><br>
                  <strong>수학2</strong><br>
                  부정적분과 정적분</td>
                <td>부정적분과 정적분</td>
                <td><strong>&middot; 구문 : </strong>부정구문<br>
                  <strong>&middot; 독해 : </strong>항의추론<br>
                  <strong>&middot; 듣기 : </strong>1지문 2문항<br>
                  <strong>&middot; 과제 : </strong>기출 모의고사 풀이(3)</td>
              </tr>
              <tr>
                <th class="bg-sky">5주차<br>1/27 ~ 2/3</th>
                <td><strong>&middot; 문학 : </strong>소설 문학 읽기 원리 분석 및 기출문제 풀이<br>
                  <strong>&middot; 작문&middot;화법 : </strong>반복되는 문제 유형<br>
                  <strong>&middot; 문법 : </strong>문법 개념</td>
                <td><strong>수학1</strong><br>
                  수학적 귀납법<br><br>
                  <strong>수학2</strong><br>
                  정적분의 활용</td>
                <td>정적분의 활용</td>
                <td><strong>&middot; 구문 : </strong>특수구문<br>
                  <strong>&middot; 독해 : </strong>고난도 장문 / 어휘 PART<br>
                  <strong>&middot; 듣기 : </strong>1지문 2문항 (2)<br>
                  <strong>&middot; 과제 : </strong>기출 모의고사 풀이(4)</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다</li>
          </ul>
        </div>
        <div class="cont-box t_02">
          <p class="tbl-tit">고2 과정 학습계획표 (과학탐구)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:8%">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
            </colgroup>
            <thead>
              <tr class="low">
                <th>구분</th>
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">물리학Ⅰ</th>
                <td>&middot; 등가속도 운동</td>
                <td>&middot; Newton의 운동 법칙 ①</td>
                <td>&middot; Newton의 운동 법칙 ②</td>
                <td>&middot; 운동량과 충격량<br>
                  &middot; 일과 에너지</td>
                <td>&middot; 역학적에너지 보존과 비보존</td>
              </tr>
              <tr>
                <th class="bg-sky">화학Ⅰ</th>
                <td>&middot; 화학식량과 몰</td>
                <td>&middot; 화학 반응식<br>
                  &middot; 질량 보존의 법칙</td>
                <td>&middot; 화학 반응식과 양적관계<br>
                  &middot; 용액의 농도</td>
                <td>&middot; 원자의 구조<br>
                  &middot; 현대적 원자 모형과 전자 배치</td>
                <td>&middot; 원소의 주기적 성질</td>
              </tr>
              <tr>
                <th class="bg-sky">생명과학Ⅰ</th>
                <td>&middot; 흥분의 전도와 전달</td>
                <td>&middot; 근수축, 신경계</td>
                <td>&middot; 항상성 유지<br>
                  &middot; 방어작용과 혈액형</td>
                <td>&middot; 염색체와 유전물질<br>
                  &middot; 생식세포의 형성</td>
                <td>&middot; 사람의 유전</td>
              </tr>
              <tr>
                <th class="bg-sky">지구과학Ⅰ</th>
                <td>&middot; 판구조론<br>
                  &middot; 고지자기<br>
                  &middot; 플룸 구조론<br>
                  &middot; 마그마의 생성</td>
                <td>&middot; 퇴적암<br>
                  &middot; 퇴적구조<br>
                  &middot; 지질구조<br>
                  &middot; 상대연령/절대연령</td>
                <td>&middot; 기단과 전선<br>
                  &middot; 온대저기압<br>
                  &middot; 태풍/악기상</td>
                <td>&middot; 해수의 성질<br>
                  &middot; 대기 대순환<br>
                  &middot; 표층 순환</td>
                <td>&middot; 심층 순환<br>
                  &middot; 대기와 해양의 상호 작용</td>
              </tr>
            </tbody>
          </table>

          <p class="tbl-tit">고2 과정 학습계획표 (수리 논술)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:8%">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
            </colgroup>
            <thead>
              <tr class="low">
                <th>구분</th>
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">수리논술</th>
                <td>&middot; 수능 VS 수리논술<br>
                  &middot; 직접 논증법<br>
                  &middot; 간접 논증법</td>
                <td>&middot; 대수 일반</td>
                <td>&middot; 등식이론</td>
                <td>&middot; 부등식 이론</td>
                <td>&middot; 함수 일반</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
          </ul>
        </div>
        <% Else %>
        <div class="cont-box t_02 on">
          <p class="tbl-tit">고2 과정 학습계획표 (국어/수학/영어)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:10%;">
              <col style="width:auto;">
              <col style="width:17%;">
              <col style="width:17%;">
              <col style="width:25%;">
            </colgroup>
            <thead>
              <tr class="low">
                <th rowspan="2">구분</th>
                <th rowspan="2">국어</th>
                <th colspan="2">수학</th>
                <th rowspan="2">영어</th>
              </tr>
              <tr class="low">
                <th>필수수업</th>
                <th>추가 선택 수업</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">학습목표</th>
                <td><strong>수능<국어>영역에 대한 전반적인 이해와<br>
                  세부 영역으로서의 ‘문학‘,’독서’의 원래 이해,<br>
                  이를 바탕으로 한 기본 접근법을 학습한다.</strong></td>
                <td><strong>수학1, 수학2</strong><br>
                  개념완성 및 내신, 수능 기출 풀이</td>
                <td><strong>미적분</strong><br>
                  개념완성 및<br>
                  내신, 수능 기출 풀이</td>
                <td>&middot; 절대평가 1등급을 위한 
                기출 어휘 끝내기<br>
                &middot; 심화구문 해석능력 배양<br>
                &middot; 문제 해결능력 확립</td>
              </tr>
              <tr>
                <th class="bg-sky">1주차<br>12/30 ~ 1/5</th>
                <td><strong>&middot; 문학 : </strong>2024학년도 대학수학능력시험 엿보기,<br>
                  문학 출제 원리 확인하기<br>
                  <strong>&middot; 독서 : </strong>2024학년도 대학수학능력시험 엿보기,<br>
                  독서 지문의 논리적 흐름 확인하기</td>
                <td><strong>수학1</strong><br> 
                  지수와 로그<br>~ 지수함수와 로그함수<br><br>
                  <strong>수학2</strong><br>
                  함수의 극한~함수의 연속성</td>
                <td>수열의 극한~급수</td>
                <td><strong>&middot; 구문 : </strong>문장의 형식과 구조<br>
                  <strong>&middot; 독해 : </strong>대의 파악 유형<br>
                  <strong>&middot; 듣기 : </strong>짧은 대화 후 이어질 말</td>
              </tr>
              <tr>
                <th class="bg-sky">2주<br>1/6 ~ 1/12</th>
                <td><strong>&middot; 문학 : </strong>현대시 읽기 원리 분석 및 기출 문제 풀이<br>
                  <strong>&middot; 독서 : </strong>문장과 문장 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br> 
                  삼각함수의 뜻과 정의<br>~ 삼각함수의 활용<br><br>
                  <strong>수학2</strong><br>
                  미분계수와 도함수<br>~ 접선의 방정식</td>
                <td>초월함수의 극한<br>~ 여러가지 미분법</td>
                <td><strong>&middot; 구문 : </strong>강조구문/병렬구문<br>
                  <strong>&middot; 독해 : </strong>간접쓰기(순서/삽입)<br>
                  <strong>&middot; 듣기 : </strong>계산문제<br>
                  <strong>&middot; 과제 : </strong>기출 모의고사 풀이(1)</td>
              </tr>
              <tr>
                <th class="bg-sky">3주차<br>1/13 ~ 1/19</th>
                <td><strong>&middot; 문학 : </strong>고전시가 읽기 원리 분석 및 기출 문제 풀이Ⅰ<br>
                  <strong>&middot; 독서 : </strong>단락과 단락 사이에 존재하는 논리 관계 파악</td>
                <td><strong>수학1</strong><br>
                  등차등비수열<br>~ 여러 가지 수열<br><br>
                  <strong>수학2</strong><br>
                  도함수의 활용</td>
                <td>도함수의 활용</td>
                <td><strong>&middot; 구문 : </strong>도치구문/생략구문<br>
                  <strong>&middot; 독해 : </strong>빈칸완성(1)<br>
                  <strong>&middot; 듣기 : </strong>일치하지 않는 것 고르기<br>
                  <strong>&middot; 과제 : </strong>기출 모의고사 풀이(2)</td>
              </tr>
              <tr>
                <th class="bg-sky">4주차<br>1/20 ~ 1/26</th>
                <td><strong>&middot; 문학 : </strong>고전시가 읽기 원리 분석 및 기출 문제 풀이Ⅱ<br>
                  <strong>&middot; 독서 : </strong>서론을 토대로 글 분석</td>
                <td><strong>수학1</strong><br>
                  여러 가지 수열의 합<br><br>
                  <strong>수학2</strong><br>
                  부정적분과 정적분</td>
                <td>부정적분과 정적분</td>
                <td><strong>&middot; 구문 : </strong>부정구문<br>
                  <strong>&middot; 독해 : </strong>빈칸완성(2)<br>
                  <strong>&middot; 듣기 : </strong>1지문 2문항<br>
                  <strong>&middot; 과제 : </strong>기출 모의고사 풀이(3)</td>
              </tr>
              <tr>
                <th class="bg-sky">5주차<br>1/27 ~ 2/3</th>
                <td><strong>&middot; 문학 : </strong>소설 문학 읽기 원리 분석 및 기출문제 풀이<br>
                  <strong>&middot; 작문&middot;화법 : </strong>반복되는 문제 유형<br>
                  <strong>&middot; 문법 : </strong>문법 개념</td>
                <td><strong>수학1</strong><br>
                  수학적 귀납법<br><br>
                  <strong>수학2</strong><br>
                  정적분의 활용</td>
                <td>정적분의 활용</td>
                <td><strong>&middot; 구문 : </strong>특수구문<br>
                  <strong>&middot; 독해 : </strong>무관한 문장찾기<br>
                  <strong>&middot; 듣기 : </strong>1지문 2문항 (2)<br>
                  <strong>&middot; 과제 : </strong>기출 모의고사 풀이(4)</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
            <li class="red_txt">수학 추가 선택 수업 (미적분)은 추가 수업료가 발생됩니다.</li>
          </ul>
        </div>

        <div class="cont-box t_02">
          <p class="tbl-tit">고2 과정 학습계획표 (과학탐구)</p>
          <table class="tbl-01">
            <colgroup>
              <col style="width:8%">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
              <col style="width:auto">
            </colgroup>
            <thead>
              <tr class="low">
                <th>구분</th>
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">물리학Ⅰ</th>
                <td>&middot; 등가속도 운동</td>
                <td>&middot; Newton의 운동 법칙 ①</td>
                <td>&middot; Newton의 운동 법칙 ②</td>
                <td>&middot; 운동량과 충격량<br>
                  &middot; 일과 에너지</td>
                <td>&middot; 역학적에너지 보존과 비보존</td>
              </tr>
              <tr>
                <th class="bg-sky">화학Ⅰ</th>
                <td>&middot; 화학식량과 몰</td>
                <td>&middot; 화학 반응식<br>
                  &middot; 질량 보존의 법칙</td>
                <td>&middot; 화학 반응식과 양적관계<br>
                  &middot; 용액의 농도</td>
                <td>&middot; 원자의 구조<br>
                  &middot; 현대적 원자 모형과 전자 배치</td>
                <td>&middot; 원소의 주기적 성질</td>
              </tr>
              <tr>
                <th class="bg-sky">생명과학Ⅰ</th>
                <td>&middot; 흥분의 전도와 전달</td>
                <td>&middot; 근수축, 신경계</td>
                <td>&middot; 항상성 유지<br>
                  &middot; 방어작용과 혈액형</td>
                <td>&middot; 염색체와 유전물질<br>
                  &middot; 생식세포의 형성</td>
                <td>&middot; 사람의 유전</td>
              </tr>
              <tr>
                <th class="bg-sky">지구과학Ⅰ</th>
                <td>&middot; 판구조론<br>
                  &middot; 고지자기<br>
                  &middot; 플룸 구조론<br>
                  &middot; 마그마의 생성</td>
                <td>&middot; 퇴적암<br>
                  &middot; 퇴적구조<br>
                  &middot; 지질구조<br>
                  &middot; 상대연대/절대연대</td>
                <td>&middot; 기단과 전선<br>
                  &middot; 온대저기압<br>
                  &middot; 태풍/악기상</td>
                <td>&middot; 해수의 성질<br>
                  &middot; 대기 대순환<br>
                  &middot; 표층 순환</td>
                <td>&middot; 심층 순환<br>
                  &middot; 대기와 해양의 상호 작용</td>
              </tr>
            </tbody>
          </table>

          <p class="tbl-tit">고2 과정 학습계획표 (수리 논술)</p>
          <table class="tbl-01">
            <colgroup>
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
                <th>1주차(12/30 ~ 1/5)</th>
                <th>2주차(1/6 ~ 1/12)</th>
                <th>3주차(1/13 ~ 1/19)</th>
                <th>4주차(1/20 ~ 1/26)</th>
                <th>5주차(1/27 ~ 2/3)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="bg-sky">수리논술</th>
                <td>&middot; 수능 VS 수리논술<br>
                  &middot; 직접 논증법<br>
                  &middot; 간접 논증법</td>
                <td>&middot; 대수 일반</td>
                <td>&middot; 등식이론</td>
                <td>&middot; 부등식 이론</td>
                <td>&middot; 함수 일반</td>
              </tr>
            </tbody>
          </table>
          <ul class="list-02">
            <li>학습진도 계획표는 학원 사정에 의해 변경될 수 있습니다.</li>
          </ul>
        </div>
        <% End If %>
      </div>
      <% End If %>
      

      <!-- 윈터스쿨 표준 일과표 -->
      <p class="tit"><img src="<%=img_path_yangji%>/2023/winter/cont11_tit03.png" alt="윈터스쿨 표준 일과표" /></p>
      <% If sCampusCode = "CD0347" Then '서의치기숙 %>
      <div class="tbl-box">
        <table class="tbl-03">
          <colgroup>
            <col style="width:10%;">
            <col style="width:auto;">
            <col style="width:25%;">
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
              <td>AM6:20~AM7:20</td>
              <td colspan="2">기상, 인원파악, 세면, 조식</td>
            </tr>
            <tr>
              <td>AM7:20~AM8:20</td>
              <td colspan="2">학습계획서 작성, 명상의 시간, 아침체조, 일일TEST</td>
            </tr>
            <tr>
              <th class="bg-gray">1교시</th>
              <td>AM8:20~AM9:20</td>
              <td rowspan="3">오전수업 및 의무자습</td>
              <td rowspan="3">의무자습</td>
            </tr>
            <tr>
              <th class="bg-gray">2교시</th>
              <td>AM9:35~AM10:35</td>
            </tr>
            <tr>
              <th class="bg-gray">3교시</th>
              <td>AM10:50~AM11:50</td>
            </tr>
            <tr>
              <th class="bg-gray">점심식사</th>
              <td>AM11:50~PM12:50</td>
              <td colspan="2">점심식사 및 체조</td>
            </tr>
            <tr>
              <th class="bg-gray">영어듣기</th>
              <td>PM12:50~PM13:10</td>
              <td>영어듣기</td>
              <td rowspan="2">의무자습</td>
            </tr>
            <tr>
              <th class="bg-gray">4교시</th>
              <td>PM13:10~PM14:10</td>
              <td rowspan="3">오후수업 / 의무자습 / 질의응답</td>
            </tr>
            <tr>
              <th class="bg-gray">5교시</th>
              <td>PM14:25~PM15:25</td>
              <td rowspan="2">Healing Time 및 종교활동</td>
            </tr>
            <tr>
              <th class="bg-gray">6교시</th>
              <td>PM15:40~PM16:40</td>
            </tr>
            <tr>
              <th class="bg-gray">담임시간</th>
              <td>PM16:50~PM17:30</td>
              <td>일일TEST 및 담임시간</td>
              <td></td>
            </tr>
            <tr>
              <th class="bg-gray">저녁식사</th>
              <td>PM17:30~PM18:30</td>
              <td>저녁식사 및 체조</td>
              <td></td>
            </tr>
            <tr>
              <th class="bg-gray">7교시</th>
              <td>PM18:30~PM19:30</td>
              <td rowspan="3">질의응답 및 의무자습</td>
              <td>주간TEST</td>
            </tr>
            <tr>
              <th class="bg-gray">8교시</th>
              <td>PM19:45~PM20:45</td>
              <td rowspan="2">의무자습</td>
            </tr>
            <tr>
              <th class="bg-gray">9교시</th>
              <td>PM21:00~PM22:00</td>
            </tr>
            <tr>
              <th class="bg-gray">종료</th>
              <td>PM22:00~PM23:40</td>
              <td colspan="2">일과종료, 세면, 인원파악, 취침</td>
            </tr>
          </tbody>
        </table>
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
    

