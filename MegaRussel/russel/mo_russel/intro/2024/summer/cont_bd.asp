<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 분당 썸머스쿨<br><strong>입학 절차 안내</strong></p>
    <div class="tbl-box inCon">
        <p class="recruit-stit mt10">[1단계] 온라인 원서 접수 (사전 등록금 납부)</p>
        <ul class="list-bar">
            <li>등록 방법 : 온라인 원서 접수 후 사전 등록금 납부</li>
            <li>
                사전 등록금 : 62만원 <br>
                ※ 온라인 원서 접수 후 사전 등록금을 납부하면 사전 등록이 완료됩니다. <br>
                ※ 원서 접수 시, 내신 성적을 필수로 입력해야 합니다. <br>
                ※ 사전 등록이 완료되면 추후 안내에 따라 최종 등록(단과 선택 및 바자관)을 진행하게 됩니다. <br>
                ※ 사전 등록금은 썸머스쿨 바자관 비용으로 대체되며, 모집 요강(지원 혜택)에 따라 차액금이 발생할 경우 개강 이후 환불 받을 수 있습니다.                
            </li>
        </ul>
        <p class="recruit-stit">[2단계] 수업(단과) 선택 및 최종 등록</p>
        <ul class="list-bar">
            <li>단과 등록 기간 : 6/12(수)~6/30(일) [예정]</li>
            <li>등록 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수</li>
            <li>
                등록 비용 : 단과 수업에 따라 상이 <br>
                <span class="color-red">※ 러셀 분당 모든 단과 수업은 썸머스쿨 입학과 관계없이 수강할 수 있습니다.</span> <br>
                ※ 수업을 의무시수 기준 이상으로 추가 선택하여 수강할 경우, 바자관 비용은 바자관 지원 혜택에 따라 재적용됩니다.
            </li>
        </ul>
    </div>



    <p class="recruit-tit">러셀 분당 썸머스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box inCon">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5519
        Else '실서버
            AGM_CD = 1592
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
