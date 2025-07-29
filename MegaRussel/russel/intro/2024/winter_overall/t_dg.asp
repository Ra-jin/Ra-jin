<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="cont js-cont">
    <div class="cont01">
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>윈터스쿨 종합반 <strong>모집 개요</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5603
            Else '실서버
                AGM_CD = 1682
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

                
            <!-- //모집 개요 -->
    
            <!-- 입학 절차 안내 -->
            <h3 class="mt100">윈터스쿨 종합반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 온라인 원서 접수</li>
                        <li> 사전예약금 납부</li>                       
                    </ul>
                     <!-- 대구 원서접수 바로가기 8월 12일 10시 전 -->
                    <% If curYmdhmin < 202408121000 then %>
                        <a href="javascript:alert('8/12(월) 오전10시 오픈 예정입니다.');" class="btn-gray-s ml_10">원서접수 바로가기</a>
                    <% Else %>    
                    <!-- 대구 8월 12일 10시 후 반영 -->
                        <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
                        <!-- 개발 서버 --> 
                            <a href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174" class="btn-gray-s ml_10">원서접수 바로가기</a>
                        <% Else %>
                        <!-- 실서버 -->
                            <a href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174" class="btn-gray-s ml_10">원서접수 바로가기</a>
                        <% End If %>
                    <% End If %>        
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
                    <p>강좌 선택 및 등록 </p>
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
                        <li> 2025년 1월 개강</li>
                        <li> 개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->
    
            <!-- 입학기준 및 장학혜택 -->
            <h3 class="tit">윈터스쿨 종합반 <strong>입학기준 및 장학혜택</strong></h3>
            
            <div class="tab-cont-wrap tab-cont-wrap01 type01 mt60">
                <div class="bt-tab bt-tab01">
                    <a href="javascript:void(0)" class="on br-0"><strong>고3(자연계열)
                    </strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>고3 (인문계열)
                    </strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>고1
                    </strong></a>
                </div>
                <!-- 모집요강 자동화 시스템 영역 -->                    
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5669
                Else '실서버
                    AGM_CD = 1749
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
            <!-- //모집요강 및 장학혜택 -->

            <h3 class="tit mt100">윈터스쿨 종합반 <strong>수업 구성</strong></h3>
            <div class="tbl-box">
                <div class="tab-cont-wrap tab-cont-wrap02 type01 mt60">
                    <div class="bt-tab bt-tab02">
                        <a href="javascript:void(0)" class="on br-0"><strong>고3
                        </strong></a>
                        <a href="javascript::void(0)" class="bl-0"><strong>고1
                        </strong></a>
                    </div>
                    <div class="cont-box on">
                        <p class="tal fz16 mt20">■ 필수 수업 (17.5T)</p>
                        <table class="tbl-01 mt20">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                    수업시간</th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="tal fz16 mt50">■ 선택 수업 (최대 0T~7T)</p>
                        <table class="tbl-01 mt20">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>과목</th>
                                    <th>국어특강(언어와매체)
                                    </th>
                                    <th>영어</th>
                                    <th>수리논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                    수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="cont-box">
                        <p class="tal fz16 mt20">■ 필수 수업 (21T)</p>
                        <table class="tbl-01 mt20">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                    수업시간</th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.bt-tab.bt-tab01','.tab-cont-wrap01 .cont-box');
        tabMenu('.bt-tab.bt-tab02','.tab-cont-wrap02 .cont-box');
    })
</script>