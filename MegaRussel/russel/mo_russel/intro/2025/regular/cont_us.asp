<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit">입학 절차 안내</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학상담/<br>
                    원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>입학 기준<br>
                    확인 후<br>
                    성적표 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>단과 <br>
                    강의 선택<br>
                    및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>N수 정규반<br>
                    최종 등록<br>
                    확인</span>
            </li>
        </ul> 
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 입학상담/원서접수</p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>온라인 원서접수<a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180" class="bt-gray-s ml10">원서접수 바로가기</a></li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학 기준 확인 후 성적표 제출</p>
                <ul class="list-dot m0 mt0">
                    <li>성적표 제출 : 별도 안내</li>
                    <li>전형별 반 배정</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 선택 및 결제</p>
                <ul class="list-dot m0 mt0"> 
                    <li>방문/온라인 수강신청</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) N수 정규반 최종 등록 확인</p>
                <ul class="list-dot m0 mt0">
                    <li>등원일 확정</li>
                    <li>사전 오리엔테이션 진행</li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 장학혜택 -->
        <p class="recruit-tit">모집요강 및 장학혜택</p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6806
        Else '실서버
            AGM_CD = 1887
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


