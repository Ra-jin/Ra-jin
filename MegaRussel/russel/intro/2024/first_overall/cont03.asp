<div class="cont js-cont <%=campusName%>">
    <div class="cont04">
        <% If sCampusCode = "CD0249" Then '영통 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="tit mt0"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit01.png" alt="모집 개요" /></p>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td>2024 N수생(자연계열)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td>
                                1차 개강 : 1/5(금) <br>
                                2차 개강 : 2/5(월)                                
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td>1/8(월)~2/18(일) 6주 과정
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td>국어, 수학, 영어, 과탐(물리Ⅰ, 화학Ⅰ, 생명과학Ⅰ, 지구과학Ⅰ)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td>현장 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td>132만원(4주 기준)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td>* 2024학년도 수능성적 증명서, 6월, 9월 평가원 모의고사 성적표 중 택 1 <br>
                            * 내신성적증명서(1학년 1학기부터 3학년 1학기(중간/기말 포함)까지 성적 반영) 1부<br>
                            ※ 수능 성적표(또는 평가원 모의고사 성적표)와 내신성적표 중 하나 제출<br>
                            ※ 반에 따라 6월 평가원 성적표 적용이 안되는 반이 있으므로 입학기준 확인 필요
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <!-- 입학 절차 안내 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit02.png" alt="입학 절차 안내" /></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담</p>
                    <ul class="list-03">
                        <li> 방문/전화<br>
                        /온라인 1:1 게시판 상담</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인
                        </li>
                        <li> 모집 기준 상 반 편성
                        </li>
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
                        * 미납 시 등록 취소
                    </div>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록
                    </p>
                    <ul class="list-03">
                        <li> 과목별 수업 안내
                        </li>
                        <li> 등록한 수업은 개강<br>
                        전까지 변경 및 취소<br>
                        가능
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 입학 기준 및 장학혜택 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit07.png" alt="입학 기준 및 장학혜택" /></p>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4399
            Else '실서버
                AGM_CD = 1446
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
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="tit mt0"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit01.png" alt="모집 개요" /></p>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td>N수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td>2024년 1월 1일(월)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td>2024년 1월 ~ 2월 (9주 과정)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td>국어, 수학, 영어, 탐구(과학탐구)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td>현장 또는 온라인 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td>1,422,000원(1달 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td>- 6평, 9평, 수능 성적표 1부<br>
                            - 성적증명서 (전체 학년 내신 성적 반영) 1부<br>
                            ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출 
                        </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td>상담 가능 시간 : 오전 10시~오후 8시</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <!-- 입학 절차 안내 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit02.png" alt="입학 절차 안내" /></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 온라인 원서 접수</li>
                        <li> 예약입학금 납부</li>
                    </ul>
                    <a class="bt-apply ml0" href="<%=apply_url%>">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출</p>
                    <ul class="list-03">
                        <li> 성적표 제출</li>
                        <li> 4F 입학처 및 “러셀CORE 광주”<br>
                            카카오 채널 제출
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인
                        </li>
                        <li> 모집 기준 상 반 편성
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록
                    </p>
                    <ul class="list-03">
                        <li> 과목별 선택 수업 선택
                        </li>
                        <li> 선택한 수업은 개강 전까지<br>
                            변경 및 취소 가능<br>
                            <span>※ 강좌 선택 추후 안내
                            </span>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 1/1(월) 개강</li>
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 입학 기준 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit03.png" alt="입학 기준" /></p>
            <div class="tbl-box">
                <table class="tbl-01 tbl-center">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:12%;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:12%;">
                        <col style="width:10%;">
                        <col style="width:10%;">
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th rowspan="2">학년</th>
                            <th rowspan="2">반명</th>
                            <th colspan="2">지원자격</th>
                            <th rowspan="2">종합반 수강료<br>
                            (바자관 전액 지원)</th>
                            <th colspan="2" rowspan="2">장학 혜택</th>
                        </tr>
                        <tr class="low">
                            <th>모의고사<br>
                            (24학년도 평가원 모의고사)</th>
                            <th>내신 전형<br>
                            (전년도 전체 평균 기준)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="5">N수</th>
                            <td>HS</td>
                            <td>
                                국/수/탐(2) 3개 합 4등급 이내 <br>(9월, 수능)
                            </td>
                            <td>
                                일반고 1.4 이내 <br>
                                자사고/특목고 2.2이내
                            </td>
                            <td rowspan="5">1,422,000원<br>
                            (1달 기준)
                            </td>
                            <td>40% 지원</td>
                            <td>853,200원</td>
                        </tr>
                        <tr>
                            <td>서의치반</td>
                            <td>
                                국/수/영 또는 국/수/탐(2) 중 <br>
                                3개 영역 합 5등급 이내 <br>(6월, 9월, 수능)
                            </td>
                            <td>
                                일반고 1.7 이내 <br>
                                자사고/특목고 2.7이내
                            </td>
                            <td>20% 지원</td>
                            <td>1,137,600원</td>
                        </tr>
                        <tr>
                            <td>연고대반</td>
                            <td>
                                국/수/영/탐(1) 중 <br>
                                3개 영역 합 6등급 이내 <br>(6월, 9월, 수능)
                            </td>
                            <td>
                                일반고 2.3 이내 <br>
                                자사고/특목고 3.2이내
                            </td>
                            <td>10% 지원</td>
                            <td>1,279,800원</td>
                        </tr>
                        <tr>
                            <td>블루반 1반</td>
                            <td>
                                국/수/영/탐(1) 중 <br>
                                3개 영역 합 8등급 이내 <br>(6월, 9월, 수능)
                            </td>
                            <td>-</td>
                            <td>-</td>
                            <td rowspan="2">1,422,000원</td>
                        </tr>
                        <tr>
                            <td>블루반 2반</td>
                            <td>
                                국/수/영/탐(1) 중 <br>
                                3개 영역 합 9등급 이내 <br>(6월, 9월, 수능)
                            </td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
                <p class="txt_left mt10">* 종합반이란?<br>
                    - 국어 1강좌, 수학 2강좌, 영어, 과탐 2강좌를 선택하여, 수능까지 체계적으로 관리하는 프로그램입니다.<br>
                    - 메가스터디에서 검증한 선생님이 광주학원에 내려와 현장강의를 진행합니다.<br>
                    - 과목별 강사 추후 공지<br>
                   * 종합반 수강료에는 바른공부 자습전용관 비용이 포함되어 있습니다. <br>
                   * 종합반 학생이 별도 현장 단과 수강도 가능(현장 단과를 종합반 수업으로 대체하여 선택 불가)<br>
                     : 체계적인 커리큘럼의 학습 연속성을 위함<br>
                   * LIVE 또는 현장 단과 수강생의 경우, 종합반 수업의 일부만 수강 불가함<br>
                   * 현장 단과 수업은, 윈터스쿨 종료 후에도 연속하여 진행되는 정규반 커리큘럼입니다.                   
                </p>
                <p class="txt_left mt10">[등록 절차]<br>
                    1. 종합반 예약<br>
                    - 현강 종합반 : 예약금 620,000원 (현장 또는 온라인)<br>
                    - 2025재수생 우선선발 종합반 예약 기간 : ~ 마감일까지<br>
                    <br>
                   2. 성적표(6평, 9평, 수능 또는 내신 증빙서류) 제출<br>
                    - 4층 입학팀 또는 “ 러셀CORE광주 “  카카오채널<br>
                   3. 위 조건을 충족한 경우, 해당 반으로 배정 후 안내<br>
                   4. 종합반 확정 후, 해당 학생/학부모님에게 수업 등록 안내
                </p>
                <p class="txt_left mt10">* 해당 반 정원의 제한으로 입학에 제한이 있는 점 양해 바랍니다.
                </p>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="tit mt0"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit01.png" alt="모집 개요" /></p>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td>2024년 N수생</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td>2024년 1월 1일 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td>2024년 1/1(월)~2/11(일) (6주 과정)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td>국어 , 수학, 영어, 탐구, 논술
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td>온라인 접수
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td>2,100,000원 (6주 기준)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td>* 2024학년도 수능성적 증명서(*필수) 및 평가원 모의고사 (9월 혹은 6월) 성적표(*선택)<br>
                                * 성적증명서(1학년 1학기부터 3학년 2학기(중간/기말 포함)까지 성적 반영) 1부<br>
                                ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출
                                
                        </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td>상담 가능 시간 : 오전 9시30분~오후 8시30분 (식사시간 12:00~13:00, 17:30~18:30 제외)<br>
                                ※ 대표번호 : 053-291-1010 또는 온라인 상담
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <!-- 입학 절차 안내 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit02.png" alt="입학 절차 안내" /></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 온라인 원서 접수</li>
                        <li> 사전예약금 납부</li>
                    </ul>
                    <!-- <a class="bt-apply ml0" href="<%=apply_url%>">원서접수 바로가기</a> -->
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인</li>
                        <li> 모집 기준 상 반 편성
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장/온라인 등록
                    </p>
                    <ul class="list-03">
                        <li> 가상 계좌 발송 / 카드 결제
                        </li>
                        <li> 미납 시 합격 취소
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록
                    </p>
                    <ul class="list-03">
                        <li> 과목별 선택 수업 선택
                        </li>
                        <li> 선택한 수업은 개강 전까지<br>
                            변경 및 취소 가능<br>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 1/1 개강</li>
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 입학 기준 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit03.png" alt="입학 기준" /></p>
            <div class="tobe type02">
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/ico_tobe.png" alt="" /></div>
                <p><%=txtCampus%> <strong>[재수종합반] 입학 기준</strong>은<br>
                    추후 공지 예정입니다
                </p>
            </div>

            <!-- 모집요강 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit06.png" alt="모집 요강" /></p>
            <div class="tbl-box">
                <div class="tab-cont-wrap">
                    <div class="bt-tab">
                        <a href="#" class="on"><strong>자연계열</strong></a>
                        <a href="#"><strong>인문계열</strong></a>
                    </div>
                    <div class="cont-box on" style="border:1px solid #eee;border: 0;">
                        <!-- 모집요강 자동화 시스템 영역 -->
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 4388
                        Else '실서버
                            AGM_CD = 1435
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
                    <div class="cont-box" style="border:1px solid #eee;border: 0;">
                        <!-- 모집요강 자동화 시스템 영역 -->
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 4389
                        Else '실서버
                            AGM_CD = 1436
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
            </div>

            <!-- 장학 혜택 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit04.png" alt="장학 혜택" /></p>
            <div class="tbl-box">
                <div class="tab-cont-wrap">
                    <div class="bt-tab02">
                        <a href="#" class="on"><strong>자연계열</strong></a>
                        <a href="#"><strong>인문계열</strong></a>
                    </div>
                    <div class="cont-box02 on" style="border:1px solid #eee;border: 0;">
                        <!-- 모집요강 자동화 시스템 영역 -->
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 4390
                        Else '실서버
                            AGM_CD = 1437
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
                    <div class="cont-box02" style="border:1px solid #eee;border: 0;">
                        <!-- 모집요강 자동화 시스템 영역 -->
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 4391
                        Else '실서버
                            AGM_CD = 1438
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
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0349" Then '울산 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="tit mt0"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit01.png" alt="모집 개요" /></p>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td>2024년 N수생</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td>2024년 1월 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td>2024년 1월 ~ 2월 (6주 과정)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td>국어, 수학, 영어
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td>현장 또는 온라인 접수
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td>2,010,000원 (6주)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td>2023년 시행 수능 및 9월, 6월 평가원 성적표 중 택 1 (1부)<br>
                                생기부 ( 1부)<br>
                                ※ 생기부는 내신 성적으로 입학 희망자의 경우에만 제출<br>
                                ※  2023년 시행 수능 성적으로 입학하는 경우, 가채점 결과 기준으로 우선 반편성 되며 수능 성적 발표 이후 실물 성적표 제출 필수
                                
                        </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td>상담 가능 시간 : 오전 10시~오후 8시 (식사 시간 12:00~13:30, 17:00~18:30 제외)<br>
                                ※ 대표번호 : 052-913-1010
                                
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- 입학 절차 안내 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit02.png" alt="입학 절차 안내" /></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 온라인 원서 접수</li>
                        <li> 사전예약금 납부</li>
                    </ul>
                    <a class="bt-apply ml0" href="<%=apply_url%>">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인</li>
                        <li> 모집 기준 상 반 편성
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장/온라인 등록
                    </p>
                    <ul class="list-03">
                        <li> 가상 계좌 발송 / 카드 결제
                        </li>
                        <li> 미납 시 합격 취소
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록
                    </p>
                    <ul class="list-03">
                        <li> 과목별 선택 수업 선택
                        </li>
                        <li> 선택한 수업은 개강 전까지<br>
                            변경 및 취소 가능<br>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 2024년 1월 개강</li>
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 모집요강 및 장학혜택 -->
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit05.png" alt="모집요강 및 장학혜택" /></p>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4368
            Else '실서버
                AGM_CD = 1417
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

