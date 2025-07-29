<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->



<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 안내 -->
        <p class="recruit-tit">입학 절차 안내</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학상담/<br>
                원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>전형확인/<br>
                반 편성</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>3</strong></div>
                <span>강좌 선택 및<br>
                등록</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>현장/<br>
                온라인 등록</span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수</p>
                <ul class="list-dot ml0">
                    <li>방문/전화/온라인 상담<br>
                       
                    </li>
                    <li>온라인 원서 접수</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 전형확인/반 편성</p>
                <ul class="list-dot m0 mt0">
                    <li> 성적표 제출
                    </li>
                    <li> 모집 기준 상 반 편성
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3)  강좌 선택 및 등록</p>
                <ul class="list-dot m0 mt0">
                    <li> 단과수업 등록
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4)  현장/온라인 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>온라인 결제링크 발송</li>
                    <li> 미납 시 합격 취소
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">5)  입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li> 개강 전 OT 진행 예정
                    </li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit">모집요강 및 지원혜택</p>
        
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6790
        Else '실서버
            AGM_CD = 1872
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

