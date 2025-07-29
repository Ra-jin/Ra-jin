<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_dg/2024/regular/cont00_tit01.png" alt="러셀 대구 우선선발반 입학 절차 안내"></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 온라인 원서 접수</li>
                        <li> 사전예약금 납부 <br><a class='bt-apply' style="margin-left: 0;" href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a></li>
                    </ul>
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
                    <p>단과강좌 등록</p>
                    <ul class="list-03">
                        <li> 의무강좌 수에 맞춰 <br>
                            단과등록
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>온라인/현장 등록
                    </p>
                    <ul class="list-03">
                        <li> 온라인 결제링크 발송</li>
                        <li> 미납 시 합격 취소</li>
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
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_dg/2024/regular/cont00_tit02.png" alt="러셀 대구 우선선발반 입학 절차 안내"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4430
                Else '실서버
                    AGM_CD = 1477
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
        </div>
    </div>
  <!-- //cont00 -->
</div>