<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀CORE 광주 N수 정규반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학 상담</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>강의 선택 <br> 및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 입학 상담</p>
            <ul class="list-bar m0 f14">
                <li>온라인 상담<a class="bt-gray-s ml10" href="http://pf.kakao.com/_swxoCb">바로가기</a></li>
                <li>유선상담 062-462-1010</li>
            </ul>
            <!-- <a href="javascript:void(0)" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164';" class="bt-gray-s ml10">원서접수 바로가기</a> -->
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 입학기준 확인 후 성적표 제출</p>
            <ul class="list-star m0 f14">
                <li>현장 또는 카카오톡 채널에 제출 가능 <br><a class="bt-gray-s ml10" href="http://pf.kakao.com/_swxoCb">성적표 제출 [바로가기]</a> </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 단과 강의 선택 및 결제</p>
            <ul class="list-star m0 f14">
                <li>현장 또는 온라인 결제 가능  <br><a class="bt-gray-s ml10" href="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1709">정규&middot;특강 단과 [바로가기]</a></ㅣ>

            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) N수 정규반 최종 등록</p>
            <ul class="list-base">
                <li>
                    바른공부 자습전용관 등록 <br> (현장 또는 온라인 결제 가능) <br>
                    ※ 온라인 결제 희망할 경우 학원에 문의
                </li>
            </ul>
        </div>
    </div>
    
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀CORE광주 N수 정규반<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        
        <!-- 모집요강 자동화 시스템 영역 -->

        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4404
        Else '실서버
            AGM_CD = 1452
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

    <!-- <div class="tbl-box sns">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_sns.png" alt="" /></p>
        <p class="tit">2025 N수 정규반 <br>
            <strong>모집요강 및 지원혜택</strong>은<br>
            추후 공개 예정입니다.</p>
    </div> -->
    <!-- //모집요강 및 장학혜택 -->

</div>
