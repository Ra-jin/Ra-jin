<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="event-area">
    <p class="recruit-tit">러셀 대전<br>
    <strong>N수 정규반 프로모션</strong></p>
    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/banner_promotion.jpg" alt="" /></div>
</div>
<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">입학 절차 안내</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    온라인<br>원서 접수 후<br> 
                    사전 예약금 납부
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    입학기준<br>
                    확인 후<br>
                    성적표 제출
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>
                    단과 강의<br>
                    선택 및 결제
                </span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>
                    N수 정규반<br>
                    최종 등록 <br> 확인
                </span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit mb0" style="display:inline-block;margin-right: 5px;">1) 온라인 원서접수 후 사전예약금 납부
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'" class="bt-gray-s ml10">원서접수 바로가기</a></p>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학기준 확인 후 성적표 제출</p>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 선택 및 결제</p>
            </div>

            <div class="step-txt">
                <p class="step-tit mb0">4) N수 정규반 최종 등록 확인</p>
            </div>
        </div>

        <p class="recruit-tit">모집요강</p>
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6767
        Else '실서버
            AGM_CD = 1849
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
