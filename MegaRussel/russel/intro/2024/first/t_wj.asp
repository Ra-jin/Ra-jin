<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/core_wj/2024/first/cont00_tit01.png" alt="입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap core" style="border-radius: 20px;border-bottom:1px solid #dbdbdb;">
                    <div class="step-list pl10 pr10">
                        <p class="tit"><span>1</span>온라인 원서접수 후<br>사전예약금 납부</p>
                        <a href="https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163" class="btn-gray-s">원서접수 바로가기</a>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>입학기준 확인 후<br>성적표 제출</p>
                        <p class="txt">※ 모집요강 참고</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>단과 강의<br>선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>우선선발반<br>최종 등록 확인</p>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 장학혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/core_wj/2024/first/cont00_tit02.png" alt="모집요강 및 지원혜택"></p>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4366
            Else '실서버
                AGM_CD = 1415
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
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>