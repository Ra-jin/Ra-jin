<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="cont js-cont russel_dg">
    <div class="cont00">
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>러셀 대구 파이널 종합반 <strong>모집 개요</strong></h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td class="tal">2025학년도 수능 재도전 학생</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="tal">10월 초 순차 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td class="tal">국어,수학, 영어, 탐구(과학탐구 I, 사회탐구), 논술(수리논술, 인문논술)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="tal">온라인 접수 <a class='bt-apply' href=' https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176'>원서접수 바로가기</a> </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="tal">1,400,000원 (4주 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td class="tal">
                                * 2024학년도 수능성적 증명서(*필수) 및 평가원 모의고사 (9월 혹은 6월) 성적표(*선택) <br>
                                * 성적증명서(1학년 1학기부터 3학년 2학기(중간/기말 포함)까지 성적 반영) 1부 <br>
                                ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출   
                            </td>
                        </tr>   
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td class="tal">
                                상담 가능 시간 : 오전 9시30분~오후 8시30분 (식사시간 12:00~13:00, 17:30~18:30 제외) <a href="/russel/info/qna/qna.asp" class="bt-apply">온라인 상담 바로가기</a> <br>
                                ※ 대표번호 : 053-291-1010 또는 온라인 상담                    
                            </td>
                        </tr>                    
                    </tbody>
                </table>
            </div>
            <!-- //모집 개요 -->
    
            <!-- 입학 절차 안내 -->
            <h3 class="mt100">러셀 대구 파이널 종합반  <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 사전예약금 납부</li>                    
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
                        <li> 전가상 계좌 발송/카드 결제</li>
                        <li> 미납 시 등록 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li> 과목별 선택 수업 선택</li>
                        <li> 선택한 수업은 개강 전 <br>
                            까지 변경 및 취소 가능
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 9월 순차 개강</li>
                        <li> 개강 전 OT 별도 안내</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->
    
            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 대구 파이널 종합반  <strong>모집요강</strong></h3>
            
            <div class="tab-cont-wrap type01">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on br-0"><strong>N수생(자연계열)</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>N수생(인문계열)</strong></a>
                </div>
                <div class="cont-wrap">
                    <div class="cont-box on">
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 5607
                        Else '실서버
                            AGM_CD = 1686
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
                    </div>
                    <div class="cont-box">
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 5608
                        Else '실서버
                            AGM_CD = 1687
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
                    </div>
                </div>
            </div>

            <!-- 장학혜택 -->
            <h3 class="tit mt100">러셀 대구 파이널 종합반 <strong>장학혜택</strong></h3>
            
            <div class="tab-cont-wrap type02">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on br-0"><strong>자연계열</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>인문계열</strong></a>
                </div>
                <div class="cont-wrap">
                    <div class="cont-box on">
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 5609
                        Else '실서버
                            AGM_CD = 1688
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
                    </div>
                    <div class="cont-box">
                        <%
                        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                        If IsDevSvr() = true Then   '개발서버
                            AGM_CD = 5610
                        Else '실서버
                            AGM_CD = 1689
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    $(function(){
        tabMenu('.type01 .bt-tab','.type01 .cont-wrap .cont-box');
        tabMenu('.type02 .bt-tab','.type02 .cont-wrap .cont-box');
    })
</script>