<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3 class="tit">러셀 울산 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap core" style="border-radius: 20px;border-bottom:1px solid #dbdbdb;">
                    <div class="step-list pl10 pr10">
                        <p class="tit"><span>1</span>입학상담/원서접수</p>
                        <p class="txt mb5">· 방문/전화/온라인 상담 <br> · 온라인 원서 접수  </p>
                        <a href="https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166" class="btn-gray-s">원서접수 바로가기</a>
                        <br>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>입학기준 확인 후<br>성적표 제출</p>
                        <p class="txt">* 성적표 제출 방식 : 별도 안내 예정
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>7월 단과 강의<br>선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>썸머스쿨<br>최종 등록 확인</p>
                    </div>
                </div>
            </div>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 울산 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5541
                Else '실서버
                    AGM_CD = 1620
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
</div>