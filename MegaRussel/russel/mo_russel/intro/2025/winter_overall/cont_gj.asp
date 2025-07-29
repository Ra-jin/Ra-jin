<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!-- 모집 개요 -->
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6948
        Else '실서버
            AGM_CD = 2031
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

        <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181" class="btn-link mt20">원서접수 바로가기</a> -->
         <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=192" class="btn-link mt20">원서접수 바로가기</a>

        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    입학상담/<br>
                    원서접수
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    입학 기준<br>
                    확인 후<br>
                    성적표 제출
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>단과 강의<br>
                선택 및 결제</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>4</strong></div>
                <span>
                    윈터스쿨<br>
                    최종 등록
                </span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수 <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=192" class="bt-gray-s">원서접수 바로가기</a></p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담<br>
                    유선 상담 062-462-1010</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학 기준 확인 후 성적표 제출 <a  href="http://pf.kakao.com/_swxoCb" class="bt-gray-s">성적표 제출 바로가기</a></p>
                <ul class="list-dot m0 mt0">
                    <li>현장 또는 카카오톡  채널에 제출 가능</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 선택 및 결제</p>
                <ul class="list-dot m0 mt0">
                    <li>현장 또는 온라인 결제 가능</li>
                    <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 윈터스쿨 최종 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>바른공부 자습전용관 등록<br>(현장 또는 온라인 걸제 가능)</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">5) 입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li>개강</li>
                    <li>개강 전 OT  별도 안내</li>
                </ul>
            </div>
        </div>



        <p class="recruit-tit"><strong>입학 기준 및 지원 혜택</strong></p>
        <div class="tbl-box">
            <div class="txt-coming">
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_comming.png" alt="" /></div>
                <p>
                    윈터스쿨의<br>
                    <strong>입학 기준 및 지원 혜택</strong>은<br>
                    추후 공개 예정입니다.
                </p>
            </div>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <!-- <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6808
        Else '실서버
            AGM_CD = 1889
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
        %> -->
        <!-- //모집요강 자동화 시스템 영역 -->
    </div>
</div>

