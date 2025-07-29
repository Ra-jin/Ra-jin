<div class="cont js-cont">
    <div class="cont01">
        <% If sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>모집 개요</h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td class="align-l">2024년 반수생</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="align-l">매월 초 순차 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td class="align-l">2024년 수능일까지</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td class="align-l">국어, 수학, 영어, 탐구</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="align-l">현장 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="align-l">1,422,000원(1달 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>  
                            <td class="align-l">성적표 (2023년 전국 모의고사 또는 내신 증빙서류) 제출<br>
                                ※ 대학 재학생 전형에 해당하는 경우 재학증명서 제출
                        </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td class="align-l">전화 문의 (☎ 062-462-1010 ) 또는 온라인 상담 게시판 문의</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //모집 개요 -->

            <!-- 입학 절차 안내 -->
            <h3 class="mt100">입학 절차 안내</h3>
            <ul class="step-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인</li>
                        <li> 모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장/온라인 등록</p>
                    <ul class="list-03">
                        <li> 가상계좌 발송/카드 결제</li>
                        <li> 미납 시 등록 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li> 과목별 선택 수업 선택</li>
                        <li> 선택한 수업은 개강 전까지<br>
                            변경 및 취소 가능</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 매월 초 순차 개강</li>
                        <li> 개강 전 OT 별도 안내</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 입학 기준 -->
            <h3>입학 기준</h3>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4498
                Else '실서버
                    AGM_CD = 1547
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
            </div>
            <!-- // 입학 기준 -->
        </div>
        <% ElseIf sCampusCode = "CD0249" Then '영통 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>모집 개요</h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:8%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td class="align-l" colspan="2">2024 반수생(인문/자연계열)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="align-l" colspan="2">인문/자연 : 9/9(월) 개강
                            </td>
                        </tr>
                        <!-- <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td class="align-l" colspan="2">
                                ■ 자연계열 : 4/1(월)~4/28(일) 4주 과정<br>
                                ■ 인문계열 : 4/1(월)~4/28(일) 4주 과정

                            </td>
                        </tr> -->
                        <tr>
                            <th class="bg-gray" rowspan="2">수업 과목</th>
                            <td class="align-l">자연계열</td>
                            <td class="align-l">국어, 수학, 영어, 과탐(물리Ⅰ, 화학Ⅰ, 생명과학Ⅰ, 지구과학Ⅰ)</td>
                        </tr>
                        <tr>
                            <td class="align-l">인문계열</td>
                            <td class="align-l">국어, 수학, 영어, 사탐(사회문화, 생활과윤리)<br>
                                ※사회문화 OR 생활과윤리 선택자만 종합반 등록 가능</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="align-l" colspan="2">현장 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="align-l" colspan="2">132만원 (4주 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>  
                            <td class="align-l" colspan="2">
                                * 2024학년도 수능성적 증명서, 6월, 9월 평가원 모의고사 성적표 중 택 1<br>
                                * 내신성적증명서(1학년 1학기부터 3학년 1학기(중간/기말 포함 학기말)까지 성적 반영) 1부<br>
                                ※ 수능 성적표(또는 평가원 모의고사 성적표)와 내신성적표 중 택 1 제출<br>
                                ※ 반에 따라 6월 평가원 성적표 적용이 안되는 반이 있으므로 입학기준 확인 필요<br>
                                ※ 유시험 전형의 경우, 시험 일정 안내 후 응시가 진행되며, 이후 결과에 따라 등록 가능 여부 안내
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //모집 개요 -->

            <!-- 입학 절차 안내 -->
            <h3 class="mt100">입학 절차 안내</h3>
            <ul class="step-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화<br>
                            /온라인 1:1 게시판 상담</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인</li>
                        <li> 모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장 등록</p>
                    <div class="fz16 txt_left" style="color:#555;width:fit-content;margin:0 auto">
                        ① 입학신청서 작성<br>
                        ② 성적표 제출<br>
                        ③ 현장 카드 결제/<br>
                        또는 가상 계좌 발송<br>
                        *미납 시 등록 취소
                    </div>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li> 과목별 수업 안내</li>
                        <li> 등록한 수업은 개강 전<br>
                            까지 변경 및 취소 가능</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 개강 전 등원 관련 안내</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 입학 기준 및 장학혜택 -->
            <h3>입학 기준 및 장학혜택</h3>
            <div class="tab-cont-wrap">
                <div class="bt-tab type02">
                    <a href="javascript:void(0)" class="on">자연계열</a>
                    <a href="javascript:void(0)">인문계열</a>
                </div>
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4496
                Else '실서버
                    AGM_CD = 1545
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
            </div>
        </div>

        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <div class="inner">
            <div class="tab-cont-wrap">
                <div class="bt-tab type02">
                    <a href="javascript:void(0)" class="on">최상위권 이과전문관N</a>
                    <a href="javascript:void(0)">서&middot;연&middot;고 문과전문관</a>
                </div>
                
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4506
                Else '실서버
                    AGM_CD = 1556
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
            </div>
        </div>

        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <div class="inner">
            <div class="tab-cont-wrap">
                <div class="bt-tab type02">
                    <a href="javascript:void(0)" class="on">최상위권 이과전문관N</a>
                    <a href="javascript:void(0)">서&middot;연&middot;고 문과전문관</a>
                </div>
                
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4509
                Else '실서버
                    AGM_CD = 1559
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
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>모집 개요</h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td class="align-l">2025학년도 수능 재도전 학생</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="align-l"><%=txt01%></td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td class="align-l">국어, 수학, 영어, 탐구<strong class="blue_txt">(과학탐구Ⅰ, 사회탐구Ⅰ)</strong>, 논술(인문논술, 수리논술)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="align-l">온라인 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="align-l"><strong class="blue_txt">1,400,000(4주 과정)</strong></td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td class="align-l">* 2024학년도 수능성적 증명서(*필수) 및 평가원 모의고사 9월 성적표 (*선택) 
                                <br>
                                * 성적증명서(1학년 1학기부터 3학년 2학기(중간/기말 포함)까지 성적 반영) 1부<br>
                                ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td class="align-l">상담 가능 시간 : 오전 9시30분 ~ 오후 8시30분(식사시간: 11:30~12:30, 17:30~18:30 제외)<br>
                                ※ 대표번호 : 053-291-1010 또는 온라인 상담</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- 입학 절차 안내 -->
            <h3 class="mt100">입학 절차 안내</h3>
            <ul class="step-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                        <li>사전예약금 납부</li>
                    </ul>
                    <a class="bt-apply ml0" href="https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=171">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>반 편성</p>
                    <ul class="list-03">
                        <li> 성적표 제출</li>
                        <li> 모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장/온라인 등록</p>
                    <ul class="list-03">
                        <li> 온라인 결제링크 발송</li>
                        <li> 미납 시 합격 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li> 과목별 선택 수업 선택</li>
                        <li> 선택한 수업은<br>
                            개강 전까지 변경 및<br> 
                            취소 가능</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <!-- <li> <%=txt01%></li> -->
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 모집요강 -->
            <h3>2025 반수종합반 <strong>모집요강</strong></h3>
            <div class="tab-cont-wrap">
                <div class="bt-tab type02">
                    <a href="javascript:void(0)" class="on">자연계열</a>
                    <a href="javascript:void(0)">인문계열</a>
                </div>

                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4525
                Else '실서버
                    AGM_CD = 1569
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
            </div>

            <!-- 장학혜택 -->
            <h3 class="mt100">2025 반수종합반 <strong>장학혜택</strong></h3>
            <div class="tab-cont-wrap">
                <div class="bt-tab02">
                    <a href="javascript:void(0)" class="on">자연계열</a>
                    <a href="javascript:void(0)">인문계열</a>
                </div>
                
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4526
                Else '실서버
                    AGM_CD = 1570
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
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0349" Then '울산 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>모집 개요</h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="align-l">10월 7일(월)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td class="align-l">2024년 10월 7일(월) ~ 2024년 11월 10일(일), 5주 과정
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td class="align-l">국어, 수학, 영어, 탐구(과학탐구), 논술
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="align-l">온라인 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="align-l">1,675,000원 (5주)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td class="align-l">2023년 시행 수능 및 9월, 6월 평가원 성적표 중 택 1 (1부)<br>
                                생기부 (1부)<br>
                                ※ 생기부는 내신 성적으로 입학 희망자의 경우에만 제출</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td class="align-l">상담 가능 시간 : 오전 10시~오후 8시 (식사 시간 12:00~13:30, 17:00~18:30 제외)<br>
                                ※ 대표번호 : 052-913-1010</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- 입학 절차 안내 -->
            <h3 class="mt100">입학 절차 안내</h3>
            <ul class="step-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                    </ul>
                    <a class="bt-apply ml0" href="javascript:alert('추후 오픈 예정입니다.');">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인</li>
                        <li> 모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장/온라인 등록</p>
                    <ul class="list-03">
                        <li> 가상 계좌 발송/카드 결제</li>
                        <li> 미납 시 합격 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li> 과목별 선택 수업 선택</li>
                        <li> 선택한 수업은 개강 전<br>
                            까지변경 및 취소 가능</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 10월 7일(월) 개강</li>
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 입학 기준 및 장학혜택-->
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5527
            Else '실서버
                AGM_CD = 1603
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
        </div>
        <% End If %>
    </div>
</div>
