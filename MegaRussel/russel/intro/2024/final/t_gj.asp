<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3>러셀CORE 광주 파이널 정규반  <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap core" style="border-radius: 20px;border-bottom:1px solid #dbdbdb;">
                    <div class="step-list pl10 pr10">
                        <p class="tit"><span>1</span>입학상담</p>
                        <p class="txt mb5">· 온라인 상담 <a style="margin: 8px 0 0 0;" class="bt-apply" href="http://pf.kakao.com/_swxoCb">바로가기</a> <br> · 유선상담 062-462-1010  </p>                        
                        <br>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>입학기준 확인 후 <br> 성적표 제출</p>
                        <p class="txt">* 현장 또는 카카오톡 채널에 제출 가능 <br><a class="bt-apply" href="http://pf.kakao.com/_swxoCb">성적표 제출 [바로가기]</a></p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>단과 강의<br>선택 및 결제</p>
                        <p class="txt">
                            *현장 또는 온라인 결제 가능  <br><a class="bt-apply" href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1709">정규&middot;특강 단과 [바로가기]</a>
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>파이널 정규반<br>최종 등록</p>
                        <p class="txt">
                            바른공부 자습전용관 등록 <br> (현장 또는 온라인 결제 가능) <br>
                            ※ 온라인 결제 희망할 경우 학원에 문의
                        </p>
                    </div>
                </div>
            </div>

            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀CORE 광주 파이널 정규반  <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5556
                Else '실서버
                    AGM_CD = 1638
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

            
            <!-- 모집요강 자동화 시스템 영역 -->
            <!-- -->
            <!-- //모집요강 자동화 시스템 영역 -->
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>