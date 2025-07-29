<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->



<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 안내 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학 상담/<br>
                원서 접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>전형 확인/<br>
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
                <span>현장/온라인<br>
                    등록
                </span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 입학 상담/원서 접수</p>
                <ul class="list-bar ml0">
                    <li>방문/전화/온라인 상담</li>
                    <li>사전 예약금 납부</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 전형 확인/반 편성</p>
                <ul class="list-bar m0 mt0">
                    <li>전형 자격 요건 확인</li>
                    <li>모집 기준 상 반 편성</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강좌 선택 및 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>단과 수업 등록</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 현장/온라인 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>온라인 결제 링크 발송</li>
                    <li>미납 시 등록 취소</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">5) 입학 및 개강</p>
                <ul class="list-bar m0 mt0">
                    <li>개강 전 OT 별도 안내</li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>
        <div class="tab-cont-wrap">
            <div class="tab-wrap tab-wrap01">
                <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
                <a href="javascript::void(0)"><strong>고2</strong></a>
                <a href="javascript::void(0)"><strong>고1</strong></a>
            </div>
        </div>
        <div class="tab-cont on mt30">

            <!-- 모집요강 자동화 시스템 영역 (고3) -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6911
            Else '실서버
                AGM_CD = 1994
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
        <div class="tab-cont mt30" style="display: none;">          
            <!-- 모집요강 자동화 시스템 영역 (고2) -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6912
            Else '실서버
                AGM_CD = 1995
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

        <div class="tab-cont mt30" style="display: none;">

            <!-- 모집요강 자동화 시스템 영역 (고1) -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6913
            Else '실서버
                AGM_CD = 1996
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
</div>
<script>
    $(function(){
        tabMenu('.tbl-box .tab-wrap','.tbl-box .tab-cont');
    })
</script>

