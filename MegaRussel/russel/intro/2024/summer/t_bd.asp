<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">러셀 분당 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-box" style="border-radius: 20px;">
                    <p class="tit">■ [1단계] 온라인 원서 접수 (사전 등록금 납부) </p>
                    <div class="box">
                        <p class="fz18 fw400">- 등록 방법 : 온라인 원서 접수 후 사전 등록금 납부</p>
                        <p class="fz18 fw400">- 사전 등록금 : 62만원</p>
                        <ul class="list-02 mt5 ml10">
                            <li>온라인 원서 접수 후 사전 등록금을 납부하면 사전 등록이 완료됩니다. </li>
                            <li>원서 접수 시, 내신 성적을 필수로 입력해야 합니다.</li>
                            <li>사전 등록이 완료되면 추후 안내에 따라 최종 등록(단과 선택 및 바자관)을 진행하게 됩니다.</li>
                            <li>사전 등록금은 썸머스쿨 바자관 비용으로 대체되며, 모집 요강(지원 혜택)에 따라 차액금이 발생할 경우 개강 이후 환불 받을 수 있습니다. </li>
                        </ul>
                    </div>
                    <p class="tit">■ [2단계] 수업(단과) 선택 및 최종 등록</p>
                    <div class="box">
                        <p class="fz18 fw400">- 단과 등록 기간 : 6/12(수)~6/30(일) [예정]</p>
                        <p class="fz18 fw400">- 등록 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수</p>
                        <p class="fz18 fw400">- 등록 비용 : 단과 수업에 따라 상이</p>
                        <ul class="list-02 mt5 ml10">
                            <li class="red_txt">러셀 분당 모든 단과 수업은 썸머스쿨 입학과 관계없이 수강할 수 있습니다. </li>
                            <li>수업을 의무시수 기준 이상으로 추가 선택하여 수강할 경우, 바자관 비용은 바자관 지원 혜택에 따라 재적용됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <h3 class="tit mt100">러셀 분당 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4538
                Else '실서버
                    AGM_CD = 1586
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
                <!-- //모집요강 및 장학혜택 -->
            </div>

        </div>
    </div>
</div>