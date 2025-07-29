<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <!-- <div class="cont00_1">
        <div class="inner">
            <p data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/russel_pc/2024/first/cont00_1_tit.png" alt="러셀 평촌 재수생 우선선발반 12월 특별 프로모션"></p>
            <div class="mt40"><img src="<%=Application("img_path_russel")%>/russel_pc/2024/first/cont00_event.jpg" alt=""></div>
        </div>
    </div> -->
    <div class="cont00" style="background:#f8f8f8;">
        <div class="inner">
            <!-- 입학 절차 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_pc/2024/first/cont00_tit01_1.png" alt="러셀 평촌 재수생 우선선발반 입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>성적표 제출 및 입학전형 확인</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>단과 수업 선택 및 등록</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 성적표 제출 및 입학전형 확인</p>
                    <div class="box">
                        <p class="fz16">: 현장 성적표 제출  후 바른공부 자습전용관  입학 전형 확인<br>
                            ※  실 성적표 제출 필수
                        </p>
                    </div>
                    <p class="tit">2) 단과 수업 선택 및 등록 (등록방법 - 학원 홈페이지)</p>
                    <div class="box">
                        <p class="fz16">: 학습 성향 및 수준, 반별 모집요강에 맞게 수강 희망 단과 선택과 등록<br>
                        : 최종 등록 전, 단과 강좌 변경 및 취소 가능<br>
                        : 해당 월 개강일이 지난 강좌는 현장에서 등록 가능
                        <br><br>
                            ※ 최저 입학기준(의무수강 강좌 수) 충족 시 입학 가능합니다.
                        </p>
                    </div>
                    <p class="tit">3) 최종 등록</p>
                    <div class="box">
                        <p class="fz16">: 입학일자 확인 후 최종등록
                        </p>
                    </div>
                </div>
            </div>
            <!-- 모집요강 및 지원혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_pc/2024/first/cont00_tit02_1.png" alt="모집요강 및 지원혜택"></p>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 3376
            Else '실서버
                AGM_CD = 1401
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

<script>
    //학원 문자수신 알리미 신청 바로가기(평촌)
	function fncAlarmPopPC(){        
        
        var url = "https://russelpc.megastudy.net/intro/2022/winter/popup.asp";
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}
</script>