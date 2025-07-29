
<div class="js-cont">
    <div class="cont04">
        <div class="inner">
            <p class="tit mt0">입학 기준</p>
            <div class="c-box">
                <% If sCampusCode = "CD0258" Then '남자기숙 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width:15%">
                        <col style="width:15%">
                        <col style="width:auto">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th colspan="2">입학일</th>
                            <td colspan="2">1차 : 6월 25일(일)<br>2차 : 7월 1일 (토)</td>
                        </tr>
                        <tr>
                            <th rowspan="7" class="bd-r">일반 전형<br><div class="ico-end-s" style="margin:0 0 0 -5px">마감 임박</div></th>
                            <th>HS반</th>
                            <td colspan="2">2023학년도 수능성적 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 4등급 이내<br>또는 2023학년도 9평 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 3등급 이내</td>
                        </tr>
                        <tr>
                            <th>서울대<br>의치대</th>
                            <td colspan="2">2023학년도 수능성적 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 5등급 이내<br>또는 9평 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 4등급 이내</td>
                        </tr>
                        <tr>
                            <th rowspan="2">
                                연고대
                            </th>
                            <td colspan="2">2023학년도 수능성적 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 6등급 이내<br>또는 9평 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 5등급 이내</td>
                        </tr>
                        <tr>
                            <td colspan="2">내신 일반고 1.6등급 이내 (특목고/자사고 학원 자체심사)</td>
                        </tr>
                        <tr>
                            <th rowspan="3">
                                블루반
                            </th>
                            <td>미적분 / 기하</td>
                            <td>2023학년도 수능성적 국&middot;수&middot;영&middot;탐(1) 중 상위 3개 영역 합 8등급 이내<br>또는 9평 국&middot;수&middot;영&middot;탐(1) 중 상위 3개 영역 합 7등급 이내</td>
                        </tr>
                        <tr>
                            <td>확률과 통계</td>
                            <td>2023학년도 수능성적 국&middot;수&middot;영&middot;탐(1) 중 상위 3개 영역 합 9등급 이내<br>또는 9평 국&middot;수&middot;영&middot;탐(1) 중 상위 3개 영역 합 8등급 이내</td>
                        </tr>
                        <tr>
                            <td colspan="2">내신 일반고 2등급 이내 (특목고/자사고 학원 자체심사)</td>
                        </tr>
                        <tr>
                            <th colspan="2">특별 전형 Ⅰ<br><div class="ico-end-s">마감</div></th>
                            <td colspan="2">본원지정 특목고 및 자사고<br><br>
                                &lt;지정 고교&gt;<br>
                                과학고, 영재고, 외고, 국제고<br>
                                공주사대부고, 공주한일고, 광양제철고, 김천고, 민사고, 북일고, 상산고, 외대부고, 인천하늘고, 포항제철고, 하나고, 현대청운고
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">특별 전형 Ⅱ<br></th>
                            <td colspan="2">2024학년도 6월 평가원 국+수+탐(1) 백분위 합 280 이상<br>( * 영어 2등급 미만 시 등급 당 백분위 3점씩 감점 적용 )</td>
                        </tr>
                    </tbody>
                </table>
                <ul class="txt_left mt10">
                    <li>* 공통 : 성적에 따라 대기번호가 부여될 수 있습니다.</li>
                    <li>* 재원생 전원 QUEL 모의고사 전 영역 의무 응시입니다.</li>
                </ul>
                <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width:15%">
                        <col style="width:15%">
                        <col style="width:auto">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th colspan="2">입학일</th>
                            <td colspan="2">1차 : 6월 25일(일)<br>2차 : 7월  1일(토)</td>
                        </tr>
                        <tr>
                            <th colspan="2">모집 대상</th>
                            <td colspan="2">2024학년도 대입 지원 자격을 갖춘 남·여 수험생</td>
                        </tr>
                        <tr>
                            <th rowspan="7" class="bd-r">무시험<br>전형</th>
                            <th>HS반</th>
                            <td colspan="2">2023학년도 수능 성적 국·수·영 혹은 국·수·탐(1) 합 4등급 이내<br>또는 2023학년도 9평 국·수·영 혹은 국·수·탐(1) 합 3등급 이내</td>
                        </tr>
                        <tr>
                            <th>서울대<br>의치대</th>
                            <td colspan="2">2023학년도 수능성적 국·수·영 혹은 국·수·탐(1) 합 5등급 이내<br>또는 9평 국·수·영 혹은 국·수·탐(1) 합 4등급 이내</td>
                        </tr>
                        <tr>
                            <th rowspan="2">
                                연고대
                            </th>
                            <td colspan="2">2023학년도 수능성적 국·수·영 혹은 국·수·탐(1) 합 6등급 이내<br>또는 9평 국·수·영 혹은 국·수·탐(1) 합 5등급 이내</td>
                        </tr>
                        <tr>
                            <td colspan="2">내신 일반고 1.6등급 이내 (특목고/자사고 학원 자체심사)</td>
                        </tr>
                        <tr>
                            <th rowspan="3">
                                블루반
                            </th>
                            <td>미적분·기하</td>
                            <td>2023학년도 수능성적 국·수·영·탐(1) 중 상위 3개 영역 합 8등급 이내<br>또는 6 / 9평 국·수·영·탐(1) 중 상위 3개 영역 합 7등급 이내<br>*2024학년도 6평 국·수·영·탐(1) 중 상위 3개 영역 합 7등급 이내</td>
                        </tr>
                        <tr>
                            <td>확률과 통계</td>
                            <td>2023학년도 수능성적 국·수·영·탐(1) 중 상위 3개 영역 합 9등급 이내<br>또는 6 / 9평 국·수·영·탐(1) 중 상위 3개 영역 합 8등급 이내<br>*2024학년도 6평 국·수·영·탐(1) 중 상위 3개 영역 합 8등급 이내</td>
                        </tr>
                        <tr>
                            <td colspan="2">내신 일반고 2등급 이내 (특목고/자사고 학원 자체심사)</td>
                        </tr>
                        <tr>
                            <th colspan="2">특별(면접)전형</th>
                            <td colspan="2">본원지정 특목고 및 자사고<br><br><지정 고교><br>과학고, 영재고, 외고, 국제고<br>공주사대부고, 공주한일고, 광양제철고, 김천고, 민사고, 북일고, 상산고, 외대부고, 인천하늘고, 포항제철고, 하나고, 현대청운고
                            </td>
                        </tr>
                    </tbody>
                </table>
                <% ElseIf sCampusCode = "CD0348" Then '여자기숙 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th colspan="2">개강일</th>
                            <td colspan="6">6월 24일(토)</td>
                        </tr>
                        <tr>
                            <th rowspan="7" class="bd-r">무시험<br>전형</th>
                            <th>HS반<br><div class="ico-end-s">마감 임박</div></th>
                            <td colspan="6">2023학년도 수능성적 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 4등급 이내<br>또는 2023학년도 9평 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 3등급 이내</td>
                        </tr>
                        <tr>
                            <th>서울대<br>의치대<br><div class="ico-end-s">마감 임박</div></th>
                            <td colspan="6">2023학년도 수능성적 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 5등급 이내<br>또는 9평 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 4등급 이내</td>
                        </tr>
                        <tr>
                            <th rowspan="2">
                                연고대<br><div class="ico-end-s">마감 임박</div>
                            </th>
                            <td colspan="6">2023학년도 수능성적 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 6등급 이내<br>또는 9평 국&middot;수&middot;영 혹은 국&middot;수&middot;탐(1) 합 5등급 이내</td>
                        </tr>
                        <tr>
                            <td colspan="6">내신 일반고 1.6등급 이내 (특목고/자사고 학원 자체심사)</td>
                        </tr>
                        <tr>
                            <th rowspan="3">
                                블루반<br><div class="ico-end-s">마감 임박</div>
                            </th>
                            <td>미적분 / 기하</td>
                            <td colspan="5">2023학년도 수능성적 국&middot;수&middot;영&middot;탐(1) 중 상위 3개 영역 합 8등급 이내<br>또는 6평/9평 국&middot;수&middot;영&middot;탐(1) 중 상위 3개 영역 합 7등급 이내</td>
                        </tr>
                        <tr>
                            <td>확률과 통계</td>
                            <td colspan="5">2023학년도 수능성적 국&middot;수&middot;영&middot;탐(1) 중 상위 3개 영역 합 9등급 이내<br>또는 6평/9평 국&middot;수&middot;영&middot;탐(1) 중 상위 3개 영역 합 8등급 이내</td>
                        </tr>
                        <tr>
                            <td colspan="6">내신 일반고 2등급 이내 (특목고/자사고 학원 자체심사)</td>
                        </tr>
                        <tr>
                            <th colspan="2">특별(면접)전형</th>
                            <td colspan="6">본원지정 특목고 및 자사고<br><br>
                                &lt;지정 고교&gt;<br>
                                과학고, 영재고, 외고, 국제고<br>
                                공주사대부고, 공주한일고, 광양제철고, 김천고, 민사고, 북일고, 상산고, 외대부고, 인천하늘고, 포항제철고, 하나고, 현대청운고
                            </td>
                        </tr>
                    </tbody>
                </table>
                <% End If %>
            </div>
            <p class="tit">등록 안내</p>
            <div class="c-box">
                <% If sCampusCode = "CD0258" Then '남자기숙 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width:auto">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수강료</th>
                            <td colspan="2">
                                <div class="td-wrap">
                                    <p class="tbl-stit mt10 mb60">등록예약금 : 50만원 (수강료 포함 금액)</p>
                                    <div class="tbl-wrap wrap01">
                                        <div class="left-box">
                                            <p class="tbl-stit">필수 수업(공통 2과목 + 선택 2과목)</p>
                                            <p class="tbl-sstit">&lt;1T=1시간&gt;</p>
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
                                                        <th>수학</th>
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
                                            <p class="remark">※ 선택 수업은 최소한 2과목 이상 선택하여야 합니다.</p>
                                        </div>
                                        <div class="right-box">
                                            <p class="tbl-stit">공통 필수(TEST)</p>
                                            <p class="tbl-sstit">&lt;1T=1시간&gt;</p>
                                            <table class="tbl-02">
                                                <colgroup>
                                                    <col style="width:20%">
                                                    <col style="width:30%">
                                                    <col style="width:auto">
                                                    <col style="width:auto">
                                                </colgroup>
                                                <thead style="height: 75px;">
                                                    <tr>
                                                        <th>과목</th>
                                                        <th>국어/수학/영어<br>TEST(일간/주간)</th>
                                                        <th>영어 듣기</th>
                                                        <th>체육</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>주간<br>수업시간</th>
                                                        <td>총 8T</td>
                                                        <td>2.5T</td>
                                                        <td>1T</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tbl-wrap wrap02">
                                        <p class="tbl-stit">선택 수업</p>
                                        <p class="tbl-sstit">&lt;1T=1시간&gt;</p>
                                        <table class="tbl-02">
                                            <colgroup>
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th rowspan="2" colspan="2">영어</th>
                                                    <th rowspan="2" class="bd-r">사회/과학 탐구</th>
                                                    <th colspan="2">논술</th>
                                                    <th rowspan="2">한국사</th>
                                                </tr>
                                                <tr>
                                                    <th>인문</th>
                                                    <th>수리</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th colspan="2">3.5T</th>
                                                    <th>과목당 3.5T</th>
                                                    <td colspan="2">3.5T</td>
                                                    <td>3.5T</td>
                                                </tr>
                                                <tr>
                                                    <th style="line-height: 46px;">탐구과목</th>
                                                    <td colspan="5" style="text-align: left;"> 사회탐구(5과목) : 생활과 윤리, 사회문화, 한국지리, 세계지리, 윤리와 사상 <br>
                                                        과학탐구(8과목) : 물리학I, 화학I, 생명과학I, 지구과학I, 물리학II, 화학II, 생명과학II, 지구과학II
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="tbl-wrap wrap03">
                                        <p class="tbl-stit">수강료 안내<span class="txt-red">(30일 기준)</span></p>
                                        <ul class="tax">
                                            <li class="tag tag01">필수수업</li>
                                            <li class="sign">+</li>
                                            <li class="tag">선택수업<br><span class="txt-red">2 과목</span></li>
                                            <li class="sign">=</li>
                                            <li class="price"><span class="txt-red">3,140,000원</span></li>
                                            <li class="tag tag01">필수수업</li>
                                            <li class="sign">+</li>
                                            <li class="tag">선택수업<br><span class="txt-red">3 과목</span></li>
                                            <li class="sign">=</li>
                                            <li class="price"><span class="txt-red">3,265,000원</span></li>
                                            <li class="tag tag01">필수수업</li>
                                            <li class="sign">+</li>
                                            <li class="tag">선택수업<br><span class="txt-red">4 과목</span></li>
                                            <li class="sign">=</li>
                                            <li class="price"><span class="txt-red">3,390,000원</span></li>
                                            <li class="tag tag01">필수수업</li>
                                            <li class="sign">+</li>
                                            <li class="tag">선택수업<br><span class="txt-red">5 과목</span></li>
                                            <li class="sign">=</li>
                                            <li class="price"><span class="txt-red">3,515,000원</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>입금 방법</th>
                            <td colspan="2">가상계좌로 입금 (등록예약금 50만원 가상계좌에 입금)<br>
                                ※ 가상계좌는 서류심사 후 합격자에 한하여 신청자 휴대폰에 문자(카카오톡)로 발송합니다.
                            </td>
                        </tr>
                        <tr>
                            <th>입학준비물</th>
                            <td colspan="2">
                                <div class="enter-btn"><a href="/russel_yj/school/supply.asp">입학준비물 확인하기</a></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 18%;">
                        <col style="width:auto">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수강료</th>
                            <td colspan="2">
                                <div class="td-wrap">
                                    <p class="tbl-stit mt10 mb60">등록예약금 : 50만원 (수강료 포함 금액)</p>
                                    <div class="tbl-wrap wrap02">
                                        <p class="full-tit-sq">강좌 안내</p>
                                        <p class="tbl-stit">공통 필수 I</p>
                                        <p class="tbl-sstit">&lt;1T=1시간&gt;</p>
                                        <table class="tbl-02">
                                            <colgroup>
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th>과목</th>
                                                    <th colspan="2">국어</th>
                                                    <th colspan="2">수학</th>
                                                    <th>영어</th>
                                                    <th>탐구 1</th>
                                                    <th>탐구 2</th>
                                                    <th>논술</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>수업 구분</th>
                                                    <td>현강</td>
                                                    <td>대치동 현장 강의</td>
                                                    <td>현강</td>
                                                    <td>대치동 현장 강의</td>
                                                    <td>현강<br>or 대치동 현장 강의</td>
                                                    <td>현강</td>
                                                    <td>현강</td>
                                                    <td>현강</td>
                                                </tr>
                                                <tr>
                                                    <th>주간 수업시간</th>
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
                                    </div>
                                    <div class="tbl-wrap wrap02 mt30">
                                        <p class="tbl-stit">공통 필수 II</p>
                                        <p class="tbl-sstit">&lt;1T=1시간&gt;</p>
                                        <table class="tbl-02">
                                            <colgroup>
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th>과목</th>
                                                    <th>국어/수학/영어<br>TEST(일일/주간)</th>
                                                    <th>영어듣기</th>
                                                    <th>체육</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>주간 수업시간</th>
                                                    <td>8T</td>
                                                    <td>2.5T</td>
                                                    <td>2T</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="tbl-wrap wrap02 mt30">
                                        <p class="tbl-stit">탐구 과목</p>
                                        <table class="tbl-02">
                                            <colgroup>
                                                <col style="width:15%">
                                                <col style="width:auto">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>탐구과목</th>
                                                    <td class="txt_left">
                                                        - 사회탐구(9과목) : 생활과 윤리, 사회문화, 한국지리, 세계지리, 윤리와 사상, <br>
                                                        동아시아사, 세계사, 정치와법, 경제<br>
                                                        <br>
                                                        - 과학탐구(8과목) : 물리학I, 화학I, 생명과학I, 지구과학I, 물리학Ⅱ, 화학Ⅱ, <br>
                                                        생명과학Ⅱ, 지구과학Ⅱ
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <ul class="list-03">
                                        <li>※ 과탐 Ⅱ , 경제 과목은 선택인원에 따라 수업 개설 여부가 결정됩니다.
                                        </li>
                                    </ul>
    
                                    <p class="full-tit-sq">수강료 안내 (30일 기준 : 3,400,000원)</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>입금 방법</th>
                            <td colspan="2">가상계좌로 입금 (등록예약금 50만원 가상계좌에 입금)<br>
                                ※ 가상계좌는 서류심사 후 합격자에 한하여 신청자 휴대폰에 문자(카카오톡)로 발송합니다.
                            </td>
                        </tr>
                        <tr>
                            <th>입학준비물</th>
                            <td colspan="2">
                                <div class="enter-btn"><a href="/russel_sm/school/supply.asp#tab2">입학준비물 확인하기</a></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <% ElseIf sCampusCode = "CD0348" Then '여자기숙 %>
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width:auto">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>수강료</th>
                            <td colspan="2">
                                <div class="td-wrap">
                                    <p class="tbl-stit mt10 mb60">등록예약금 : 50만원 (수강료 포함 금액)</p>
                                    <div class="tbl-wrap wrap01">
                                        <div class="left-box">
                                            <p class="tbl-stit">필수 수업(공통 2과목 + 선택 2과목)</p>
                                            <p class="tbl-sstit">&lt;1T=1시간&gt;</p>
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
                                                        <th>수학</th>
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
                                            <p class="remark">※ 선택 수업은 최소한 2과목 이상 선택하여야 합니다.</p>
                                        </div>
                                        <div class="right-box">
                                            <p class="tbl-stit">공통 필수(TEST)</p>
                                            <p class="tbl-sstit">&lt;1T=1시간&gt;</p>
                                            <table class="tbl-02">
                                                <colgroup>
                                                    <col style="width:20%">
                                                    <col style="width:30%">
                                                    <col style="width:auto">
                                                    <col style="width:auto">
                                                </colgroup>
                                                <thead style="height: 75px;">
                                                    <tr>
                                                        <th>과목</th>
                                                        <th>국어/수학/영어<br>TEST(일간/주간)</th>
                                                        <th>영어 듣기</th>
                                                        <th>체육</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>주간<br>수업시간</th>
                                                        <td>총 8T</td>
                                                        <td>2.5T</td>
                                                        <td>1T</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tbl-wrap wrap02">
                                        <p class="tbl-stit">선택 수업</p>
                                        <p class="tbl-sstit">&lt;1T=1시간&gt;</p>
                                        <table class="tbl-02">
                                            <colgroup>
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                                <col style="width:auto">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th rowspan="2" colspan="2">영어</th>
                                                    <th rowspan="2" class="bd-r">사회/과학 탐구</th>
                                                    <th colspan="2">논술</th>
                                                    <th rowspan="2">한국사</th>
                                                    <th rowspan="2">제2외국어</th>
                                                </tr>
                                                <tr>
                                                    <th>인문</th>
                                                    <th>수리</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th colspan="2">3.5T</th>
                                                    <th>과목당 3.5T</th>
                                                    <td colspan="2">3.5T</td>
                                                    <td>3.5T</td>
                                                    <td>3.5T</td>
                                                </tr>
                                                <tr>
                                                    <th style="line-height: 46px;">탐구과목</th>
                                                    <td colspan="6" style="text-align: left;"> 사회탐구(5과목) : 생활과 윤리, 사회문화, 한국지리, 세계지리, 윤리와 사상 <br>
                                                        과학탐구(8과목) : 물리학I, 화학I, 생명과학I, 지구과학I, 물리학II, 화학II, 생명과학II, 지구과학II
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="tbl-wrap wrap03">
                                        <p class="tbl-stit">수강료 안내<span class="txt-red">(30일 기준)</span></p>
                                        <ul class="tax">
                                            <li class="tag tag01">필수수업</li>
                                            <li class="sign">+</li>
                                            <li class="tag">선택수업<br><span class="txt-red">2 과목</span></li>
                                            <li class="sign">=</li>
                                            <li class="price"><span class="txt-red">3,140,000원</span></li>
                                            <li class="tag tag01">필수수업</li>
                                            <li class="sign">+</li>
                                            <li class="tag">선택수업<br><span class="txt-red">3 과목</span></li>
                                            <li class="sign">=</li>
                                            <li class="price"><span class="txt-red">3,265,000원</span></li>
                                            <li class="tag tag01">필수수업</li>
                                            <li class="sign">+</li>
                                            <li class="tag">선택수업<br><span class="txt-red">4 과목</span></li>
                                            <li class="sign">=</li>
                                            <li class="price"><span class="txt-red">3,390,000원</span></li>
                                            <li class="tag tag01">필수수업</li>
                                            <li class="sign">+</li>
                                            <li class="tag">선택수업<br><span class="txt-red">5 과목</span></li>
                                            <li class="sign">=</li>
                                            <li class="price"><span class="txt-red">3,515,000원</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>입금 방법</th>
                            <td colspan="2">가상계좌로 입금 (등록예약금 50만원 가상계좌에 입금)<br>
                                ※ 가상계좌는 서류심사 후 합격자에 한하여 신청자 휴대폰에 문자(카카오톡)로 발송합니다.
                            </td>
                        </tr>
                        <tr>
                            <th>입학준비물</th>
                            <td colspan="2">
                                <div class="enter-btn"><a href="/russel_w/school/supply.asp">입학준비물 확인하기</a></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <% End If %>
            </div>
        </div>
    </div>
    <div class="cont05">
        <p class="tit mt0">입학 절차</p>
        <div class="mt60"><img src="<%=img_path_yangji%>/2023/half/cont05_img.jpg" alt="" /></div>
    </div>
</div>