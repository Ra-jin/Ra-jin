<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">입학 절차 안내</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>단과 수업 <br>
                    선택 및 결제</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출 및 <br> 최종 등록</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>입학</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 단과 수업 선택 및 결제</p>
                <ul class="list-bar m0 mt0">
                    <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                    <li>등록 비용 : 단과 수업에 따라 상이</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출 및 최종 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>성적표 : 반마다 성적표 제출 기준이 상이하므로, ‘2026 N수 정규반’ 모집요강을 꼭 확인해주시기 바랍니다.</li>
                    <li>성적표 제출 : <span class="f14 underline">최종 등록 시, 학원 방문하여 </span><strong class="color-red f14 underline">성적표 사본(출력물) 제출(필수)</strong></li>
                </ul>
                <p class="f14" style="color:#626262;letter-spacing:-0.5px;">※ 제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</p>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 입학</p>
                <ul class="list-bar m0 mt0">
                    <li>OT : 개별 안내</li>
                </ul>
            </div>
        </div>

        <p class="recruit-tit">모집요강 및 지원혜택</p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6772
        Else '실서버
            AGM_CD = 1853
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