<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- <div>
        <img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/regular_overall/event_banner02.jpg" alt="" />
    </div> -->
    
    <div class="inner">

        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학상담</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>현장 등록</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>강좌 선택 및<br>
                    등록</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 입학상담</p>
                <ul class="list-dot m0 mt0">
                    <li>
                        방문 상담  :  상담일시 예약 필수
                    </li>
                    <li>전화 상담 032.265.1010</li>
                    <li>온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="bt-gray-s">바로가기</a> </li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 현장 등록</p>
                <div class="f14" style="color:#626262">
                    ① 모집요강 확인<br>
                    ② 성적표 제출 및 등록 (현장 등록만 가능)                    
                </div>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강좌 선택 및 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>과목별 선택 수업 선택</li>
                    <li>
                        선택한 수업은 개강 전까지 변경 및 취소 가능
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li>2025년 1월 개강</li>
                    <li>
                        개강 전 OT 진행 예정 (※ 등록생에게 별도 안내)
                    </li>
                </ul>
            </div>
        </div>

        <!--모집개요-->
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6740
        Else '실서버
            AGM_CD = 1822
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


        <p class="recruit-tit"><strong>국수영 종합반 지원혜택</strong></p>
        <div>
            <img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/regular_overall/event_banner.jpg" alt="" />
        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.type02 .tab-wrap01','.tab-cont-wrap01 .tab-cont');

    })
</script>
