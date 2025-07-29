<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<style>
    /* .type02 .alarm-txt {color:#565E71;font-size:calc(28vw/7.2);letter-spacing:-0.5px;} */
</style>

<div class="recruit-wrap">
    <!-- <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/half/event_img02.jpg" alt="6월 평가원 성적우수 EVENT"></p> -->
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학 상담</span>
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
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학 상담</p>
                <ul class="m0 f14">
                    <li>① 방문상담 : 상담일시 예약 필수</li>
                    <li>② 온라인 상담<a href="https://pf.kakao.com/_sFgGxj" class="bt-gray-s ml10">바로가기</a></li>
                    <li>③ 유선상담 032.265.1010</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 등록</p>
                <ul class="m0 f14">
                    <li>①모집요강 확인</li>
                    <li>② 단과 수업 선택 및 등록 (현장 또는 온라인 결제)</li>
                    <li>
                        ③ 서류 제출 및
                        바른공부 자습전용관 등록
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 입학</p>
                <p class="stxt">신규생 오리엔테이션 참석 필수</p>
                <ul class="list-bullet m0 mt0">
                    <li>등록생에게 별도 안내</li>
                </ul>
            </div>
        </div>


        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>
        <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6842
            Else '실서버
                AGM_CD = 1923
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
        <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/half/event_img.jpg" alt="6월 평가원 성적우수 EVENT"></p>
    </div>
</div>







<!--탭형식일 경우-->
<!-- <div class="tab-wrap tab-wrap01">
    <a href="javascript:void(0)" class="on"><strong>고1&middot;고2</strong></a>
    <a href="javascript::void(0)"><strong>고3</strong></a>
</div>
<div class="tab-cont-wrap tab-cont-wrap01">
    <div class="tab-cont on"></div>
    <div class="tab-cont"></div>
</div>
<script>
    $(function(){
        tabMenu('.type02 .tab-wrap01','.tab-cont-wrap01 .tab-cont');
    })
</script> -->