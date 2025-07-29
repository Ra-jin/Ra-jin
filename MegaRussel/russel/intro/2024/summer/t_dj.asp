<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3>러셀CORE 대전 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서접수 후<br>사전예약금 납부</p>
                    <a class="bt-apply" href="https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166">온라인 원서접수</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>입학기준 확인 후 <br> 성적표 제출</p>
                    <span>* 성적표 제출 방식 <br>(별도 안내 or 카카오채널/현장 제출)</span>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과 강의 <br> 선택 및 결제</p>
                    <span>* 단과 강의 6월 중순 결제 가능</span>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>썸머스쿨 <br> 최종 등록 확인</p>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">러셀CORE 대전 썸머스쿨 <strong>모집요강</strong></h3>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4520
                Else '실서버
                    AGM_CD = 1584
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
            <!-- //모집요강 및 지원혜택 -->           

           
        </div>
    </div>
    <!-- //cont00 -->
</div>