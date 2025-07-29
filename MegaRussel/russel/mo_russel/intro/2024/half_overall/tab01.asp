<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont00">
        <% If campus_code = "CD0340" Then '코어광주 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="recruit-tit"><strong>모집 개요</strong></p>
            <div class="tbl-box">
                <table class="tbl-type01">
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-sky">모집 대상</th>
                            <td class="text-align-left">2024년 반수생</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">개강일</th>
                            <td class="text-align-left">매월 초 순차 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수업 기간</th>
                            <td class="text-align-left">2024년 수능일까지</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수업 과목</th>
                            <td class="text-align-left">국어, 수학, 영어, 탐구</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">접수 방법</th>
                            <td class="text-align-left">현장 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수강료</th>
                            <td class="text-align-left">1,422,000원(1달 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">제출 서류</th>
                            <td class="text-align-left">
                                성적표 (2023년 전국 모의고사 또는 내신 증빙서류) 제출<br>
                                ※ 대학 재학생 전형에 해당하는 경우 재학증명서 제출

                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">상담 안내</th>
                            <td class="text-align-left">전화 문의 (☎ 062-462-1010 )  또는 온라인 상담 게시판 문의</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- <div class="tbl-box tobe">추후 공지</div> -->
            
            <!-- 입학 절차 안내 -->
            <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
            <ul class="setp-diagram">
                <li>
                    <div><strong>1</strong></div>
                    <span>입학상담/<br>
                    원서접수</span>
                </li>
                <li>
                    <div><strong>2</strong></div>
                    <span>전형확인/<br>반 편성</span>
                </li>
            </ul>
            <ul class="setp-diagram">
                <li>
                    <div><strong>3</strong></div>
                    <span>현장/<br>
                    온라인 등록</span>
                </li>
                <li>
                    <div><strong>4</strong></div>
                    <span>강좌 선택<br>
                    및 등록</span>
                </li>
                <li>
                    <div><strong>5</strong></div>
                    <span>입학 및 개강</span>
                </li>
            </ul>
            <div class="step-txt-wrap">
                <div class="step-txt">
                    <p class="step-tit">1) 입학상담/원서접수
                        <!-- <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')" class="bt-sky-s ml10">원서접수 바로가기</a> -->
                    </p>
                    <ul class="list-dot m0 f14">
                        <li>방문/전화/온라인 상담</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 전형확인/반 편성</p>
                    <ul class="list-dot m0 f14">
                        <li>전형 자격요건 확인</li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 현장/온라인 등록</p>
                    <ul class="list-dot m0 f14">
                        <li>가상 계좌 발송/카드 결제</li>
                        <li>미납 시 등록 취소</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit">4) 강좌 선택 및 등록</p>
                    <ul class="list-dot m0 f14">
                        <li>과목별 선택 수업 선택</li>
                        <li>
                            선택한 수업은 개강 전까지
                            변경 및 취소 가능
                        </li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit">5) 입학 및 개강</p>
                    <ul class="list-dot m0 f14">
                        <li>매월 초 순차 개강</li>
                        <li>개강 전 OT 별도 안내</li>
                    </ul>
                </div>
            </div>

            <!-- 입학 기준 -->
            <p class="recruit-tit"><strong>입학 기준</strong></p>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4491
            Else '실서버
                AGM_CD = 1540
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
        
        <% ElseIf campus_code = "CD0249" Then '영통 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="recruit-tit">모집 개요</p>
            <div class="tbl-box">
                <table class="tbl-type01">
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-sky">모집 대상</th>
                            <td class="text-align-left" colspan="2">2024 반수생(인문/자연계열)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">개강일</th>
                            <td class="text-align-left" colspan="2">인문/자연 : 9/9(월) 개강
                            </td>
                        </tr>
                        <!-- <tr>
                            <th class="bg-sky">수업 기간</th>
                            <td class="text-align-left" colspan="2">
                                ■ 자연계열 : 4/1(월)~4/28(일) 4주 과정<br>
                                ■ 인문계열 : 4/1(월)~4/28(일) 4주 과정
                            </td>
                        </tr> -->
                        <tr>
                            <th class="bg-sky" rowspan="2">수업 과목</th>
                            <td>자연<br>계열</td>
                            <td class="text-align-left">국어, 수학, 영어, 과탐(물리Ⅰ, 화학Ⅰ, 생명과학Ⅰ, 지구과학Ⅰ)</td>
                        </tr>
                        <tr>
                            <td>인문<br>계열</td>
                            <td class="text-align-left">국어, 수학, 영어, 사탐(사회문화, 생활과윤리)<br>
                                ※사회문화 OR 생활과윤리 선택자만 종합반 등록 가능</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">접수 방법</th>
                            <td class="text-align-left" colspan="2">현장 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수강료</th>
                            <td class="text-align-left" colspan="2">132만원 (4주 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">제출 서류</th>
                            <td class="text-align-left" colspan="2">* 2024학년도 수능성적 증명서, 6월, 9월 평가원 모의고사 성적표 중 택 1<br>
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
            <p class="recruit-tit">입학 절차 안내</p>
            <ul class="setp-diagram">
                <li>
                    <div><strong>1</strong></div>
                    <span>입학 상담/<br>
                    원서접수</span>
                </li>
                <li>
                    <div><strong>2</strong></div>
                    <span>전형확인/<br>
                    반 편성</span>
                </li>
            </ul>
            <ul class="setp-diagram">
                <li>
                    <div><strong>3</strong></div>
                    <span>현장 등록</span>
                </li>
                <li>
                    <div><strong>4</strong></div>
                    <span>강좌 선택<br>
                    및 등록</span>
                </li>
                <li>
                    <div><strong>5</strong></div>
                    <span>입학 및 개강</span>
                </li>
            </ul>
            <div class="step-txt-wrap">
                <div class="step-txt">
                    <p class="step-tit">1) 입학 상담/원서접수</p>
                    <ul class="list-dot m0 f14">
                        <li>방문/전화/온라인 1:1 게시판 상담</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 전형확인/반 편성</p>
                    <ul class="list-dot m0 f14">
                        <li>전형 자격요건 확인</li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit">3) 현장 등록</p>
                    <div class="f14" style="color:#626262">
                        ① 입학신청서 작성<br>
                        ② 성적표 제출<br>
                        ③ 현장 카드 결제/ 또는 가상 계좌 발송<br>
                        * 미납 시 등록 취소
                    </div>
                </div>
                <div class="step-txt">
                    <p class="step-tit" style="display: inline-block;margin-right: 5px;">4) 강좌 선택 및 등록</p>
                    <ul class="list-dot m0 f14">
                        <li> 과목별 수업 안내
                        </li>
                        <li> 등록한 수업은 개강 전까지 변경 및 취소 가능
                        </li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit">5) 입학 및 개강</p>
                    <ul class="list-dot m0 f14">
                        <li>개강 전 등원 관련 안내</li>
                    </ul>
                </div>
            </div>

            <!-- 입학 기준 및 장학혜택 -->
            <p class="recruit-tit">입학 기준 및 장학혜택</p>
            <div class="tab-cont-wrap">
                <!-- btn-tab -->
                <div class="btn-tab">
                    <a href="javascript:void(0)" class="on"><strong>자연계열</strong></a>
                    <a href="javascript:void(0)"><strong>인문계열</strong></a>
                </div>
                <!-- //btn-tab -->
        
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4489
                Else '실서버
                    AGM_CD = 1538
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
        <% ElseIf campus_code = "CD0250" Then '부천 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <div class="tab-cont-wrap pt60">
                <div class="btn-tab type03">
                    <a href="javascript:void(0)" class="on">최상위권 이과전문관N</a>
                    <a href="javascript:void(0)">서&middot;연&middot;고 문과전문관</a>
                </div>
                <!-- 최상위권이과전문관N -->
                <div class="contents-box type03 on">

                    <p class="recruit-tit pt20"><strong>모집 개요</strong></p>
                    <div class="tbl-box">
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width:20%;">
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-sky">모집 대상</th>
                                    <td class="text-align-left">   2025 최상위권 이과전문관N (자연계열) = “의대 입학을 희망하는 학생들을 위한 특별관리 프로그램”
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">개강일</th>
                                    <td class="text-align-left">매월 초 순차 개강</td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">수업 과목</th>
                                    <td class="text-align-left"> *필수 : 국어, 수학, 영어  (*선택과목 : 과학탐구,  수리논술)
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">접수 방법</th>
                                    <td class="text-align-left">현장 접수</td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">수강료</th>
                                    <td class="text-align-left"> 반별로 수강료 상이 <span class="color-red">(하단 확인 필수)</span> 
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">제출 서류</th>
                                    <td class="text-align-left">
                                        *2024학년도 수능성적 증명서, 6월&middot;9월 평가원 모의고사 성적표 중 택1<br>
                                        
                                        *내신성적증명서 [1학년 1학기부터 3학년 2학기 (중간/기말 포함)까지 성적 반영] 1부<br>
                                        
                                        ※수능 성적표 (또는 평가원 모의고사 성적표)와 내신성적표 중 하나 제출<br>
                                        
                                        ※HS반은 6월 평가원 성적표 적용이 안됨으로 입학기준 확인 필요 
                                       
        
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">상담 안내</th>
                                    <td class="text-align-left">① 방문상담 : 상담일시 예약 필수<br>
                                        ② 온라인 상담 <a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s'>바로가기</a><br>
                                        ③ 유선상담 032.265.1010
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- <div class="tbl-box tobe">추후 공지</div> -->
                    
                    <!-- 입학 절차 안내 -->
                    <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
                    <ul class="setp-diagram">
                        <li>
                            <div><strong>1</strong></div>
                            <span>입학상담</span>
                        </li>
                        <li>
                            <div><strong>2</strong></div>
                            <span>등록</span>
                        </li>
                        <li>
                            <div><strong>3</strong></div>
                            <span>입학</span>
                        </li>
                    </ul>
                    <div class="step-txt-wrap">
                        <div class="step-txt">
                            <p class="step-tit">1) 입학상담
                                <!-- <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')" class="bt-gray-s ml10">원서접수 바로가기</a> -->
                            </p>
                            <ul class="m0 f14">
                                <li>① 방문상담 : 상담일시 예약 필수
                                </li>
                                <li>② 온라인 상담 <a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s'>바로가기</a>
                                </li>
                                <li>③ 유선상담 032.265.1010
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 등록</p>
                            <ul class="m0 f14">
                                <li>① 모집요강 확인
                                </li>
                                <li>② 성적표 제출 (현장 또는 상담 채널 제출)  <a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s'>성적표 제출하기</a>
                                </li>
                                <li>③ 단과 수업 선택 및 등록 (현장/온라인/링크 결제 中 택1)
                                </li>
                                <li>④ 바른공부 자습전용관 등록 (현장/링크 결제 中 택1)
                                </li>
                                <li class="mt20">※ 성적표 제출 방법 : 성적표 제출하기 버튼 클릭 > 러셀 부천학원 채널 추가 > 상담원 채팅 > 성적표 이미지 파일 전송
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 입학</p>
                            <ul class="m0 f14">
                                <li>신규생 오리엔테이션 참석 필수
                                </li>
                                <li>※ 등록생에게 별도 안내
                                </li>
                            </ul>
                        </div>
                    </div>
        
                    <!-- 입학 기준 및 장학혜택 -->
                    <p class="recruit-tit"><strong>입학 기준 및 장학혜택</strong></p>
                    
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 4510
                    Else '실서버
                        AGM_CD = 1560
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
                
                <!-- 서연고문과전문관 -->
                <div class="contents-box type03">

                    <p class="recruit-tit pt20"><strong>모집 개요</strong></p>
                    <div class="tbl-box">
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width:20%;">
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-sky">모집 대상</th>
                                    <td class="text-align-left"> 서&middot;연&middot;고 입학을 희망하는 학생들을 위한 특별관리 프로그램
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">개강일</th>
                                    <td class="text-align-left">매월 초 순차 개강</td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">수업 과목</th>
                                    <td class="text-align-left"> *필수 : 국어, 수학, 영어  (*선택과목 : 사회탐구,  인문논술)

                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">접수 방법</th>
                                    <td class="text-align-left">현장 접수</td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">수강료</th>
                                    <td class="text-align-left"> 반별로 수강료 상이 <span class="color-red">(하단 확인 필수)</span> 
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">제출 서류</th>
                                    <td class="text-align-left">
                                        *2024학년도 수능성적 증명서, 6월&middot;9월 평가원 모의고사 성적표 중 택1<br>
                                        *내신성적증명서 [1학년 1학기부터 3학년 2학기 (중간/기말 포함)까지 성적 반영] 1부<br>
                                        ※수능 성적표 (또는 평가원 모의고사 성적표)와 내신성적표 중 하나 제출<br>
                                        ※HS반은 6월 평가원 성적표 적용이 안됨으로 입학기준 확인 필요 
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">상담 안내</th>
                                    <td class="text-align-left">① 방문상담 : 상담일시 예약 필수<br>
                                        ② 온라인 상담 <a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s'>바로가기</a><br>
                                        ③ 유선상담 032.265.1010
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- <div class="tbl-box tobe">추후 공지</div> -->
                    
                    <!-- 입학 절차 안내 -->
                    <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
                    <ul class="setp-diagram">
                        <li>
                            <div><strong>1</strong></div>
                            <span>입학상담</span>
                        </li>
                        <li>
                            <div><strong>2</strong></div>
                            <span>등록</span>
                        </li>
                        <li>
                            <div><strong>3</strong></div>
                            <span>입학</span>
                        </li>
                    </ul>
                    <div class="step-txt-wrap">
                        <div class="step-txt">
                            <p class="step-tit">1) 입학상담
                                <!-- <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')" class="bt-sky-s ml10">원서접수 바로가기</a> -->
                            </p>
                            <ul class="m0 f14">
                                <li>① 방문상담 : 상담일시 예약 필수
                                </li>
                                <li>② 온라인 상담 <a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s'>바로가기</a>
                                </li>
                                <li>③ 유선상담 032.265.1010
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 등록</p>
                            <ul class="m0 f14">
                                <li>① 모집요강 확인
                                </li>
                                <li>② 성적표 제출 (현장 또는 상담 채널 제출)  <a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s ml10'>성적표 제출하기</a>
                                </li>
                                <li>③ 단과 수업 선택 및 등록 (현장/온라인/링크 결제 中 택1)
                                </li>
                                <li>④ 바른공부 자습전용관 등록 (현장/링크 결제 中 택1)
                                </li>
                                <li class="mt20">※ 성적표 제출 방법 : 성적표 제출하기 버튼 클릭 > 러셀 부천학원 채널 추가 > 상담원 채팅 > 성적표 이미지 파일 전송
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 입학</p>
                            <ul class="m0 f14">
                                <li>신규생 오리엔테이션 참석 필수
                                </li>
                                <li>※ 등록생에게 별도 안내
                                </li>
                            </ul>
                        </div>
                    </div>
        
                    <!-- 입학 기준 및 장학혜택 -->
                    <p class="recruit-tit"><strong>입학 기준 및 장학혜택</strong></p>
                    
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 4511
                    Else '실서버
                        AGM_CD = 1561
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
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <div class="tab-cont-wrap pt60">
                <div class="btn-tab type03">
                    <a href="javascript:void(0)" class="on">최상위권 이과전문관N</a>
                    <a href="javascript:void(0)">서&middot;연&middot;고 문과전문관</a>
                </div>
                <!-- 최상위권이과전문관N -->
                <div class="contents-box type03 on">

                    <p class="recruit-tit pt20"><strong>모집 개요</strong></p>
                    
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5517
                    Else '실서버
                        AGM_CD = 1587
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
                    <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
                    <ul class="setp-diagram">
                        <li>
                            <div><strong>1</strong></div>
                            <span>입학상담/<br>
                            방문접수</span>
                        </li>
                        <li>
                            <div><strong>2</strong></div>
                            <span>전형확인/<br>
                                반편성
                            </span>
                        </li>
                        <li>
                            <div><strong>3</strong></div>
                            <span>현장등록</span>
                        </li>
                        <li>
                            <div><strong>4</strong></div>
                            <span>입학 및<br>
                            개강</span>
                        </li>
                    </ul>
                    <div class="step-txt-wrap">
                        <div class="step-txt">
                            <p class="step-tit">1) 입학상담/방문접수
                            </p>
                            <ul class="m0 f14">
                                <li>① 방문/전화/온라인 상담
                                </li>
                                <li>② 방문접수
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 전형확인/반 편성
                            </p>
                            <ul class="m0 f14">
                                <li>① 전형 자격요건 확인
                                </li>
                                <li>② 모집 기준 상 반 편성
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 현장 등록
                            </p>
                            <ul class="m0 f14">
                                <li>서류 제출 및 등록
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">4) 입학 및 개강

                            </p>
                            <ul class="m0 f14">
                                <li>OT : 추후 안내
                                </li>
                            </ul>
                        </div>
                    </div>
        
                    <!-- 모집요강 및 지원혜택 -->
                    <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>
                    
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 4514
                    Else '실서버
                        AGM_CD = 1564
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
                
                <!-- 서연고문과전문관 -->
                <div class="contents-box type03">

                    <p class="recruit-tit pt20"><strong>모집 개요</strong></p>
                    
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5518
                    Else '실서버
                        AGM_CD = 1588
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
                    <!-- <div class="tbl-box tobe">추후 공지</div> -->
                    
                    <!-- 입학 절차 안내 -->
                    <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
                    <ul class="setp-diagram">
                        <li>
                            <div><strong>1</strong></div>
                            <span>입학상담/<br>
                            방문접수</span>
                        </li>
                        <li>
                            <div><strong>2</strong></div>
                            <span>전형확인/<br>
                                반편성
                            </span>
                        </li>
                        <li>
                            <div><strong>3</strong></div>
                            <span>현장등록</span>
                        </li>
                        <li>
                            <div><strong>4</strong></div>
                            <span>입학 및<br>
                            개강</span>
                        </li>
                    </ul>
                    <div class="step-txt-wrap">
                        <div class="step-txt">
                            <p class="step-tit">1) 입학상담/방문접수
                                <!-- <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')" class="bt-sky-s ml10">원서접수 바로가기</a> -->
                            </p>
                            <ul class="m0 f14">
                                <li>① 방문/전화/온라인 상담
                                </li>
                                <li>② 방문접수
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 전형확인/반 편성
                            </p>
                            <ul class="m0 f14">
                                <li>① 전형 자격요건 확인
                                </li>
                                <li>② 모집 기준 상 반 편성
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 현장 등록
                            </p>
                            <ul class="m0 f14">
                                <li>서류 제출 및 등록
                                </li>
                            </ul>
                        </div>
                        <div class="step-txt">
                            <p class="step-tit" style="display: inline-block;margin-right: 5px;">4) 입학 및 개강

                            </p>
                            <ul class="m0 f14">
                                <li>OT : 추후 안내
                                </li>
                            </ul>
                        </div>
                    </div>
        
                    <!-- 모집요강 및 지원혜택 -->
                    <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>
                    
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 4515
                    Else '실서버
                        AGM_CD = 1565
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
        <% ElseIf campus_code = "CD0342" Then '대구 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="recruit-tit"><strong>모집 개요</strong></p>
            <div class="tbl-box">
                <table class="tbl-type01">
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-sky">모집 대상</th>
                            <td class="text-align-left">2025학년도 수능 재도전 학생</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">개강일</th>
                            <td class="text-align-left"><%=txt_01%></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수업 과목</th>
                            <td class="text-align-left">국어, 수학, 영어, 탐구<span class="color-blue">(과학탐구Ⅰ, 사회탐구Ⅰ)</span>, 논술(수리논술, 인문논술)
                        </tr>
                        <tr>
                            <th class="bg-sky">접수 방법</th>
                            <td class="text-align-left">온라인 접수
                                <!-- <a class="bt-sky-s ml10" href="https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')">원서접수 바로가기</a> -->
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수강료</th>
                            <td class="text-align-left color-blue">1,400,000원 (4주 과정)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">제출 서류</th>
                            <td class="text-align-left">
                                * 2024학년도 수능성적 증명서(*필수) 및 평가원 모의고사 9월 성적표 (*선택) 
                                <br>
                                * 성적증명서(1학년 1학기부터 3학년 2학기(중간/기말 포함)까지 성적 반영) 1부<br>
                                ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">상담 안내</th>
                            <td class="text-align-left">
                                상담 가능 시간 : 오전 9시30분~오후 8시30분 (식사시간 12:00~13:00, 17:30~18:30 제외)<br>
                                ※ 대표번호 : 053-291-1010 또는 온라인 상담
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <!-- 입학 절차 안내 -->
            <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
            <ul class="setp-diagram">
                <li>
                    <div><strong>1</strong></div>
                    <span>입학상담/<br>
                    원서접수</span>
                </li>
                <li>
                    <div><strong>2</strong></div>
                    <span>반 편성</span>
                </li>
                <li>
                    <div><strong>3</strong></div>
                    <span>현장/<br>
                    온라인 등록</span>
                </li>
            </ul>
            <ul class="setp-diagram">
                <li>
                    <div><strong>4</strong></div>
                    <span>선택과목 선택</span>
                </li>
                <li>
                    <div><strong>5</strong></div>
                    <span>입학 및 개강</span>
                </li>
            </ul>
            <div class="step-txt-wrap">
                <div class="step-txt">
                    <p class="step-tit">1) 입학상담/원서접수 
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="bt-gray-s ml10">원서접수 바로가기</a>
                    </p>
                    <ul class="list-dot m0 f14">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                        <li>사전예약금 납부</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 반 편성</p>
                    <ul class="list-dot m0 f14">
                        <li>성적표 제출</li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 현장/온라인 등록</p>
                    <ul class="list-dot m0 f14">
                        <li>온라인 결제링크 발송</li>
                        <li>미납 시 합격 취소</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit">4) 선택과목 선택</p>
                    <ul class="list-dot m0 f14">
                        <li>
                            과목별 선택과목 선택
                        </li>
                        <li>선택한 수업은 개강 전까지 변경 및 취소 가능
                        </li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit">5) 입학 및 개강</p>
                    <ul class="list-dot m0 f14">
                        <!-- <li><%=txt_01%></li> -->
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </div>
            </div>

            <!-- 모집요강 -->
            <p class="recruit-tit">2025 반수종합반 <span>모집요강</span></p>
            
            <!-- tab-wrap  -->
            <div class="tab-cont-wrap">
                <!-- bt-tab -->
                <div class="btn-tab">
                    <a href="javascript:void(0)" class="on"><strong>자연계열</strong></a>
                    <a href="javascript:void(0)"><strong>인문계열</strong></a>
                </div>
                <!-- //bt-tab -->
        
                
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4528
                Else '실서버
                    AGM_CD = 1572
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
            <!-- //tab-wrap  -->
            <!-- 장학 혜택 -->
            <p class="recruit-tit">2025 반수종합반 <span>장학혜택</span></p>
            
            <!-- tab-wrap  -->
            <div class="tab-cont-wrap">
                <!-- bt-tab -->
                <div class="btn-tab02">
                    <a href="javascript:void(0)" class="on"><strong>자연계열</strong></a>
                    <a href="javascript:void(0)"><strong>인문계열</strong></a>
                </div>
                <!-- //bt-tab -->
        
                <div class="contents-box02 on">
                    <div style="position:relative; overflow:auto;">
                        <table class="tbl-type01 tbl-center" style="width:200%;overflow:auto;">
                            <colgroup>
                                <col style="width:auto" />
                                <col style="width:auto" />
                                <col style="width:auto" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>성적 기준</th>
                                    <th>내신 전형</th>
                                    <th>장학혜택</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>[수능]국수(미/기)영 또는<br>국수(미/기)과탐(1) 합 <strong>3등급</strong> 이내
                                    </th>
                                    <td>일반고 <strong>1.2</strong> 미만
                                    </td>
                                    <td><span class="color-red">수강료 100% 지원</span></td>
                                </tr>
                                <tr>
                                    <th>[수능]국수(미/기)영 또는<br>국수(미/기)과탐(1) 합 <strong>4등급</strong> 이내
                                    </th>
                                    <td>일반고 <strong>1.5</strong> 미만
                                    </td>
                                    <td><span class="color-red">수강료 70% 지원</span></td>
                                </tr>
                                <tr>
                                    <th>[수능]국수(미/기)영 또는<br>국수(미/기)과탐(1) 합 <strong>5등급</strong> 이내<br>
                                        *수학 2등급 이내

                                    </th>
                                    <td>-</td>
                                    <td><span class="color-red">수강료 50% 지원</span></td>
                                </tr>
                                <tr>
                                    <th>의&middot;치&middot;한&middot;약&middot;수 / SKY 합격생 <br>(24학번, 23학번)
                                    </th>
                                    <td>-</td>
                                    <td><span class="color-red">수강료 30% 지원</span></td>
                                </tr>
                                <tr>
                                    <th>*24,23학년도 경북대 합격생<br>(본 캠퍼스만 인정)
                                    </th>
                                    <td>-</td>
                                    <td><span class="color-red">수강료 10% 지원</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <p class="notice-txt">유의사항</p>
                    
                    <ul class="list-bar">
                        <li>2024학년도 수능 성적 증명서 제출은 필수 사항입니다.</li>
                        <li>내신은 국수영탐 기준이며, 전 학년 평균 성적입니다. (자사·특목고는 별도 심사)</li>
                        <li>증명서 제출은 필수 사항이며, 위조 증명서 제출 시 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                        <li>모집요강은 학원 사정에 의해 변동될 수 있습니다.</li>
                    </ul>
                </div>

                <div class="contents-box02">
                    <div style="position:relative; overflow:auto;">
                        <table class="tbl-type01 tbl-center" style="width:200%;overflow:auto;">
                            <colgroup>
                                <col style="width:auto" />
                                <col style="width:auto" />
                                <col style="width:auto" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>성적 기준</th>
                                    <th>내신 전형</th>
                                    <th>장학혜택</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>[수능]국수(확통)영 또는<br>국수(확통)탐(1) 합 <strong>4등급</strong> 이내<br>
                                        *수학 2이내

                                    </th>
                                    <td>일반고 <strong>1.2</strong> 미만
                                    </td>
                                    <td><span class="color-red">수강료 100% 지원</span></td>
                                </tr>
                                <tr>
                                    <th>[수능]국수(확통)영 또는<br>국수(확통)탐(1) 합 <strong>5등급</strong> 이내<br>
                                        *수학 3이내

                                    </th>
                                    <td>일반고 <strong>1.5</strong> 미만
                                    </td>
                                    <td><span class="color-red">수강료 70% 지원</span></td>
                                </tr>
                                <tr>
                                    <th>[수능]국수(확통)영 또는<br>국수(확통)탐(1) 합 <strong>6등급</strong> 이내<br>
                                        *수학 3이내
                                    </th>
                                    <td>-</td>
                                    <td><span class="color-red">수강료 50% 지원</span></td>
                                </tr>
                                <tr>
                                    <th>의&middot;치&middot;한&middot;약&middot;수 / SKY 합격생 <br>(24학번, 23학번)
                                    </th>
                                    <td>-</td>
                                    <td><span class="color-red">수강료 30% 지원</span></td>
                                </tr>
                                <tr>
                                    <th>*24,23학년도 경북대 합격생<br>(본 캠퍼스만 인정)
                                    </th>
                                    <td>-</td>
                                    <td><span class="color-red">수강료 10% 지원</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <p class="notice-txt">유의사항</p>
                    
                    <ul class="list-bar">
                        <li>2024학년도 수능 성적 증명서 제출은 필수 사항입니다.</li>
                        <li>내신은 국수영탐 기준이며, 전 학년 평균 성적입니다. (자사·특목고는 별도 심사)</li>
                        <li>증명서 제출은 필수 사항이며, 위조 증명서 제출 시 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                        <li>모집요강은 학원 사정에 의해 변동될 수 있습니다.</li>
                    </ul>
                </div>
                
                <!-- 모집요강 자동화 시스템 영역 -->
                <!-- <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4491
                Else '실서버
                    AGM_CD = 1540
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
                %>  -->
                <!-- //모집요강 자동화 시스템 영역 -->
            </div>
            <!-- //tab-wrap  -->
            <script>
	            tabMenu('.btn-tab02','.contents-box02');
            </script>
        </div>
        <% ElseIf campus_code = "CD0349" Then '울산 %>
        <div class="inner">
            <!-- 모집 개요 -->
            <p class="recruit-tit"><strong>모집 개요</strong></p>
            <div class="tbl-box">
                <table class="tbl-type01">
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-sky">개강일</th>
                            <td class="text-align-left">10월 7일(월)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수업 기간</th>
                            <td class="text-align-left">2024년 10월 7일(월) ~ 2024년 11월 10일(일), 5주 과정</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수업 과목</th>
                            <td class="text-align-left">국어, 수학, 영어, 탐구(과학탐구), 논술
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">접수 방법</th>
                            <td class="text-align-left">온라인 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수강료</th>
                            <td class="text-align-left">1,675,000원 (5주)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">제출 서류</th>
                            <td class="text-align-left">
                                2023년 시행 수능 및 9월, 6월 평가원 성적표 중 택 1 (1부), 생기부 (1부)<br>
                                ※ 생기부는 내신 성적으로 입학 희망자의 경우에만 제출

                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">상담 안내</th>
                            <td class="text-align-left">
                                상담 가능 시간 : 오전 10시~오후 8시 (식사 시간 12:00~13:30, 17:00~18:30 제외)<br>
                                ※ 대표번호 : 052-913-1010
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <!-- 입학 절차 안내 -->
            <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
            <ul class="setp-diagram">
                <li>
                    <div><strong>1</strong></div>
                    <span>입학상담/<br>
                    원서접수</span>
                </li>
                <li>
                    <div><strong>2</strong></div>
                    <span>전형확인/<br>
                    반 편성</span>
                </li>
                <li>
                    <div><strong>3</strong></div>
                    <span>현장/<br>
                    온라인 등록</span>
                </li>
            </ul>
            <ul class="setp-diagram">
                <li>
                    <div><strong>4</strong></div>
                    <span>강좌 선택 및 등록</span>
                </li>
                <li>
                    <div><strong>5</strong></div>
                    <span>입학 및 개강</span>
                </li>
            </ul>
            <div class="step-txt-wrap">
                <div class="step-txt">
                    <p class="step-tit">1) 입학상담/원서접수
                        <!-- <a href="<%=apply_url%>" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" class="bt-gray-s ml10">원서접수 바로가기 </a> -->
                        <a href="javascript:alert('추후 오픈 예정입니다.');" class="bt-gray-s ml10">원서접수 바로가기 </a>
                    </p>
                    <ul class="list-dot m0 f14">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 전형확인/반 편성</p>
                    <ul class="list-dot m0 f14">
                        <li>전형 자격요건 확인</li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 현장/온라인 등록</p>
                    <ul class="list-dot m0 f14">
                        <li>가상 계좌 발송 / 카드 결제</li>
                        <li>미납 시 합격 취소</li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit">4) 강좌 선택 및 등록</p>
                    <ul class="list-dot m0 f14">
                        <li>
                            과목별 선택 수업 선택
                        </li>
                        <li>선택한 수업은 개강 전까지
                            변경 및 취소 가능                          
                        </li>
                    </ul>
                </div>
                <div class="step-txt">
                    <p class="step-tit">5) 입학 및 개강</p>
                    <ul class="list-dot m0 f14">
                        <li>10월 7일(월) 개강</li>
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </div>
            </div>

            <!-- 입학기준 및 장학혜택 -->
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5528
            Else '실서버
                AGM_CD = 1604
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
            <!-- //입학기준 및 장학혜택 -->
        </div>
        <% End If %>
    </div>
</div>