<div class="cont js-cont <%=campusName%>">
    <div class="cont04">
        <% If sCampusCode = "CD0249" Then '영통 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="tit mt0">모집 개요</p>
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
                            <td colspan="2">2024 N수생(인문/자연계열)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td colspan="2">인문/자연 : 8/5(월) 개강 </td>
                        </tr>
                        <!-- <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td colspan="2">■ 자연계열 : 2/19(월) ~ 4/28(일) 10주 과정<br>
                                ■ 인문계열 : 3/1(금) ~ 4/28(일) 8주 과정</td>
                        </tr> -->
                        <tr>
                            <th class="bg-gray" rowspan="2">수업 과목</th>
                            <td class="txt_center">자연계열</td>
                            <td>국어, 수학, 영어, 과탐(물리1, 화학1, 생명과학1, 지구과학1)</td>
                        </tr>
                        <tr>
                            <td class="txt_center">인문계열</td>
                            <td>국어, 수학, 영어, 사탐(사회문화, 생활과윤리)<br>
                                ※사회문화 OR 생활과윤리 선택자만 종합반 등록 가능</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td colspan="2">현장 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td colspan="2">132만원 (4주 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td colspan="2">* 2024학년도 수능성적 증명서, 6월, 9월 평가원 모의고사 성적표 중 택 1<br>
                                * 내신성적증명서(1학년 1학기부터 3학년 1학기(중간/기말 포함 학기말)까지 성적 반영) 1부<br>
                                ※ 수능 성적표(또는 평가원 모의고사 성적표)와 내신성적표 중 택 1 제출<br>
                                ※ 반에 따라 6월 평가원 성적표 적용이 안되는 반이 있으므로 입학기준 확인 필요<br>
                                ※ 유시험 전형의 경우, 시험 일정 안내 후 응시가 진행되며, 이후 결과에 따라 등록 가능 여부 안내
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <!-- 입학 절차 안내 -->
            <p class="tit">입학 절차 안내</p>
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
                    <p>현장 등록
                    </p>
                    <ul class="list-0" style="margin: 0 auto; width: fit-content;">
                        <li class="tal">① 입학신청서 작성 <br>
                            ② 성적표 제출<br>
                            ③ 현장 카드 결제 / <br>
                            또는 가상 계좌 발송<br>
                            *미납 시 등록 취소
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록
                    </p>
                    <ul class="list-03">
                        <li>과목별 수업 안내
                        </li>
                        <li>등록한 수업은 개강 <br>
                            전까지 변경 및 취소 가능                            
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li>2/19 개강</li>
                        <li>개강 전 등원 관련 안내</li>
                    </ul>
                </li>
            </ul>

            <!-- 입학 기준 -->
            <% If sCampusCode = "CD0249" Then '영통 %>
            <p class="tit">입학 기준</p>
            <div class="tab-cont-wrap">
                <div class="bt-tab">
                    <a href="#" class="on"><strong>자연계열</strong></a>
                    <a href="#"><strong>인문계열</strong></a>
                </div>
                <div class="cont-box on">
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 4457
                    Else '실서버
                        AGM_CD = 1506
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
                <div class="cont-box">
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 4458
                    Else '실서버
                        AGM_CD = 1507
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
            <% Else %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont10_tit03.png" alt="입학 기준" /></p>
            <div class="tobe type02">
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/ico_tobe.png" alt="" /></div>
                <p><%=txtCampus%> <strong>[재수종합반] 입학 기준</strong>은<br>
                    추후 공지 예정입니다.
                </p>
            </div>
            <% End If %>
        </div>
        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <div class="tab-cont-wrap">
                <div class="bt-tab type02 mb80">
                    <a href="javascript:void(0)" class="on">최상위권 이과전문관N</a>
                    <a href="javascript:void(0)">서&middot;연&middot;고 문과전문관</a>
                </div>
                <div class="cont-box on">
                    <p class="tit mt0">모집 개요</p>
                    <div class="tbl-box">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:12%;">
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-gray">모집 대상</th>
                                    <td class="txt-left">의대 입학을 희망하는 학생들을 위한 특별관리 프로그램</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">개강일</th>
                                    <td class="txt-left">매월 초 개강
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">수업 과목</th>
                                    <td class="txt-left">국어, 수학, 영어, 과학탐구Ⅰ, 수리논술</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">접수 방법</th>
                                    <td class="txt-left">학원 방문 접수</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">수강료</th>
                                    <td class="txt-left">반별로 수강료 상이 (하단 확인 필수) </td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">제출 서류</th>
                                    <td class="txt-left">2024학년도 수능 또는 9월 평가원 모의고사 성적표<span class="red_txt">(하단 확인 필수)</span></td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">상담 안내
                                    </th>
                                    <td class="txt-left">상담 가능 시간 : 오전 10시 ~ 오후 8시 (식사시간 11:50~12:30, 17:00~17:40 제외) <br>
                                        ※ 대표번호 : 02-6316-1010 또는 온라인 상담 <a href="/russel/info/qna/qna.asp" class="btn-gray-r">온라인 상담 바로가기</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    
                    <!-- 입학 절차 안내 -->
                    <!-- <p class="tit">입학 절차 안내</p>
                    <ul class="a-process">
                        <li>
                            <div class="flag">STEP 1</div>
                            <p>입학 상담/전형 확인</p>
                            <ul class="list-03">
                                <li>전형 자격요건 확인</li>
                            </ul>
                        </li>
                        <li>
                            <div class="flag">STEP 2</div>
                            <p>반 편성/성적표 제출</p>
                            <ul class="list-03">
                                <li>모집 기준 상 반 편성</li>
                                <li>최종 등록 시, 학원 방문하여<br>
                                    <strong class="red_txt">성적표 사본(출력물) 제출 필수</strong></li>
                            </ul>
                        </li>
                        <li>
                            <div class="flag">STEP 3</div>
                            <p>수업 선택 및 등록</p>
                            <ul class="list-03">
                                <li>등록 방법 : 현장 접수</li>
                                <li>등록 비용 : 반 편성에 따라 상이</li>
                            </ul>
                        </li>
                        <li>
                            <div class="flag">STEP 4</div>
                            <p>입학 및 개강</p>
                            <ul class="list-03">
                                <li>개강 <br>
                                    - 1차 : 2/5(월) <br>
                                    - 2차 : 2/19(월)
                                </li>
                                <li>개강 전 OT 진행 예정</li>
                            </ul>
                        </li>
                    </ul> -->

                    <!-- 모집요강 및 지원혜택-->
                    <p class="tit">모집요강 및 지원혜택</p>
                    
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 4474
                    Else '실서버
                        AGM_CD = 1523
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
                <div class="cont-box">
                    <p class="tit mt0">모집 개요</p>
                    <div class="tbl-box">
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:12%;">
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-gray">모집 대상</th>
                                    <td class="txt-left"> 서&middot;연&middot;고 입학을 희망하는 학생들을 위한 특별관리 프로그램
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">개강일</th>
                                    <td class="txt-left">매월 초 개강
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">수업 과목</th>
                                    <td class="txt-left"> 국어, 수학, 영어, 사회탐구, 인문논술
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">접수 방법</th>
                                    <td class="txt-left">학원 방문 접수</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">수강료</th>
                                    <td class="txt-left">반별로 수강료 상이 (하단 확인 필수) </td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">제출 서류</th>
                                    <td class="txt-left"> 2024학년도 수능 또는 9월 평가원 모의고사 성적표<span class="red_txt">(하단 확인 필수)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-gray">상담 안내
                                    </th>
                                    <td class="txt-left">상담 가능 시간 : 오전 10시 ~ 오후 8시 (식사시간 11:50~12:30, 17:00~17:40 제외) <br>
                                        ※ 대표번호 : 02-6316-1010 또는 온라인 상담  <a href="/russel/info/qna/qna.asp" class="btn-gray-r">온라인 상담 바로가기</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- 모집요강 및 지원혜택-->
                    <p class="tit">모집요강 및 지원혜택</p>
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 4483
                    Else '실서버
                        AGM_CD = 1533
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
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="tit mt0">모집 개요</p>

            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td>2024년 N수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td>매월 초 순차 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td>2024년 수능일까지</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td>국어, 수학, 영어, 탐구(과학탐구)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td>현장 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td>1,422,000원(1달 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td>- 6평, 9평, 수능 성적표 1부<br>
                            - 성적증명서 (고등학교 전체 성적 평균 반영) 1부<br>
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
            <p class="tit">입학 절차 안내</p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
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
                    <p>현장 등록</p>
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
                        <li> 선택한 수업은 개강 전까지<br>
                            변경 및 취소 가능<br>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 4월 순차 개강</li>
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 입학 기준 -->
            <p class="tit">입학 기준</p>
            <div class="tbl-box">
                <table class="tbl-01 tbl-center">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:8%;">
                        <col style="width:auto;">
                        <col style="width:12%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">반명</th>
                            <th colspan="4">지원자격</th>
                            <th rowspan="2">종합반 수강료 <br> (지원혜택)</th>
                        </tr>
                        <tr>
                            <th>모의고사 전형<br>(24학년도 평가원 모의고사)</th>
                            <th>내신 전형<br>(전년도 전체 평균 기준)</th>
                            <th colspan="2">대학교 재학생 전형</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="2" class="bg-gray">HS</th>
                            <td rowspan="2">국/수/탐(2) 3개 합 4등급 이내 <br>(9월, 수능)
                            </td>
                            <td rowspan="2">일반고 1.4 이내 <br>자사고/특목고 2.2이내</td>
                            <td>인문</td>
                            <td>서울대, 연세대, 고려대,<br> 성균관대, 서강대, 한양대</td>
                            <td rowspan="2">853,200 <br>(40%지원) </td>
                        </tr>
                        <tr>
                            <td>자연</td>
                            <td>의/치/한/약/수, 카이스트, 포항공대,<br> 서울대, 연세대, 고려대</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-gray">서울대<br>의치대반</th>
                            <td rowspan="2">국/수/영 또는 국/수/탐(2) 중 <br>3개 영역 합 5등급 이내 <br>(6월, 9월, 수능)
                            </td>
                            <td rowspan="2">일반고 1.7 이내 <br>자사고/특목고 2.7이내</td>
                            <td>인문</td>
                            <td>이화여대, 중앙대, 경희대,<br> 한국외대, 서울시립대</td>
                            <td rowspan="2">1,137,600 <br>(20%지원) </td>
                        </tr>
                        <tr>
                            <td>자연</td>
                            <td>성균관대, 서강대, 한양대</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-gray">연고대반</th>
                            <td rowspan="2">국/수/영/탐(1) 중 <br>3개 영역 합 6등급 이내 <br>(6월, 9월, 수능)
                            </td>
                            <td rowspan="2">일반고 2.3 이내<br>자사고/특목고 3.2이내</td>
                            <td>인문</td>
                            <td>건국대, 동국대, 홍익대,<br> 숙명여대, 인하대, 아주대</td>
                            <td rowspan="2">1,279,800<br>(10%지원) </td>
                        </tr>
                        <tr>
                            <td>자연</td>
                            <td>중앙대, 경희대, 이화여대 <br>서울시립대, 건국대, 동국대 <br>홍익대, 숙명여대, 인하대, 아주대</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">블루 1반</th>
                            <td>국/수/영/탐(1) 중 <br>3개 영역 합 8등급 이내 <br>(6월, 9월, 수능)
                            </td>
                            <td>-</td>
                            <td colspan="2">-</td>
                            <td rowspan="2">1,422,000</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">블루 2반</th>
                            <td>국/수/영/탐(1) 중 <br>3개 영역 합 9등급 이내 <br>(6월, 9월, 수능)
                            </td>
                            <td>-</td>
                            <td colspan="2">-</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="tit mt0">모집 개요</p>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td>2025학년도 수능 재도전 학생</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td><%=txt01%></td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목
                            </th>
                            <td>국어, 수학, 영어, 탐구(과학탐구 I, 사회탐구), 논술(수리논술, 인문논술)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td>온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169'>원서접수 바로가기</a>
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td>1,400,000원 (4주 과정)
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
                            <td>상담 가능 시간 : 오전 9시30분~오후 8시30분 (식사시간 12:00~13:00, 17:30~18:30 제외) <a class='bt-apply' href='https://russeldg.megastudy.net/russel/info/qna/qna.asp'>온라인 상담 바로가기</a><br>
                                ※ 대표번호 : 053-291-1010 또는 온라인 상담
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <!-- 입학 절차 안내 -->
            <p class="tit">입학 절차 안내</p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 온라인 원서 접수</li>
                        <li> 사전예약금 납부</li>
                    </ul>
                    <a class="bt-apply ml0" href="https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>반 편성</p>
                    <ul class="list-03">
                        <li> 성적표 제출</li>
                        <li> 모집 기준 상 반 편성
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>온라인/현장 등록
                    </p>
                    <ul class="list-03">
                        <li> 온라인 결제링크 발송
                        </li>
                        <li> 미납 시 합격 취소
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>선택과목 선택</p>
                    <ul class="list-03">
                        <li> 과목별 선택과목 선택
                        </li>
                        <li> 선택수업 선택<br>
                            (국어특강, 영어, 논술)
                        </li>
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
            <p id="tabScroll" class="tit">입학기준</p>
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
                            AGM_CD = 4435
                        Else '실서버
                            AGM_CD = 1482
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
                            AGM_CD = 4436
                        Else '실서버
                            AGM_CD = 1483
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
            <p class="tit">장학 혜택</p>
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
                            AGM_CD = 4437
                        Else '실서버
                            AGM_CD = 1486
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
                            AGM_CD = 4438
                        Else '실서버
                            AGM_CD = 1487
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
            <p class="tit mt0">모집 개요</p>
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
                            <td>10월 7일(월)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td>2024년 10월 7일(월) ~ 2024년 11월 10일(일), 5주 과정
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td>국어, 수학, 영어, 탐구(과학탐구), 논술
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td>온라인 접수 <a class="bt-apply" href="<%=apply_url%>">원서접수 바로가기</a>
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td>1,675,000원 (5주)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td>2023년 시행 수능 및 9월, 6월 평가원 성적표 중 택 1 (1부)<br>
                                생기부 (1부)<br>
                                ※ 생기부는 내신 성적으로 입학 희망자의 경우에만 제출                                
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
            <p class="tit">입학 절차 안내</p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 온라인 원서 접수</li>
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
                        <li> 10월 7일(월) 개강</li>
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 모집요강 및 장학혜택 -->
            <p class="tit">입학기준</p>

            <div class="tbl-box">
                <table class="tbl-01 tbl-center">
                    <colgroup>
                        <col style="width:10%;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>반명</th>
                            <th>모의고사 전형</th>
                            <th>내신 전형</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">HS반</th>
                            <td>[수능/9평] 국수(미/기)영 또는 국수(미/기)과탐(1)<br />
                            전 과목  <b>1</b>등급</td>
                            <td>일반고 <b>1.4</b> 이내<br />
                            <span>(특목고/자사고 자체심사)</span></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">서의치반</th>
                            <td>[수능/9평] 국수(미/기)영 또는 국수(미/기)과탐(1)<br />
                            합 <b>4</b>등급 이내</td>
                            <td>일반고 <b>1.6</b> 이내<br />
                            <span>(특목고/자사고 자체심사)</span></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">연고대반</th>
                            <td>[수능/9평] 국수(미/기)영 또는 국수(미/기)과탐(1)<br />
                            합 <b>5</b>등급 이내</td>
                            <td>일반고 <b>2.0</b> 이내<br />
                            <span>(특목고/자사고 자체심사)</span></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">블루1반</th>
                            <td>[수능/9평/6평] 국수(미/기)영 또는 국수(미/기)과탐(1)<br />
                            합 <b>7</b>등급 이내</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">블루2반</th>
                            <td>[수능/9평/6평] 국수(미/기)영 또는 국수(미/기)과탐(1)<br />
                            합 <b>10</b>등급 이내</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>                
                
                <table class="tbl-01 tbl-center mt20">
                    <colgroup>
                        <col style="width:10%;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>반명</th>
                            <th>대학교 전형</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">HS반</th>
                            <td>의/치/한/약/수, 카이스트, 포항공대,
                            서울대, 연세대, 고려대</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">서의치반</th>
                            <td>서강대, 성균관대, 한양대, 과학기술원</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">연고대반</th>
                            <td>중앙대, 경희대, 서울시립대, 이화여대,
                            경북대, 부산대</td>
                        </tr>
                    </tbody>
                </table>                       

            </div>

            <p class="tit">장학혜택</p>
            <div class="tbl-box">
                <table class="tbl-01 mt20">
                    <colgroup>
                        <col style="width:20%;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>수강료 지원</th>
                            <th>지원 조건</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky" rowspan="2">50% 지원</th>
                            <td>[2024수능] 국수(미/기)영 또는 국수과탐(1) 합 <b>3</b>등급 이내</td>
                        </tr>
                        <tr>
                            <td>[내신] 일반고 1.2 이내</td>
                        </tr>
                        <tr>
                            <th class="bg-sky" rowspan="2">30% 지원</th>
                            <td>[2024수능] 국수(미/기)영 또는 국수과탐(1) 합 <b>4</b>등급 이내</td>
                        </tr>
                        <tr>
                            <td>[내신] 일반고 1.5 이내</td>
                        </tr>
                        <tr>
                            <th class="bg-sky" rowspan="2">20% 지원</th>
                            <td>[2024수능] 국수(미/기)영 또는 국수과탐(1) 합 <b>5</b>등급 이내</td>
                        </tr>
                        <tr>
                            <td>[2024수능] 국, 수(미/기), 과(2) 중 1등급 <span>*과탐은 2과목 모두 1등급</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
                
        </div>
        <% End If %>
    </div>
</div>



