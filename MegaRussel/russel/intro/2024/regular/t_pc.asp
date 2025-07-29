<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_pc/2024/regular/cont00_tit01.png" alt="러셀 평촌 재수생 우선선발반 입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>성적표 제출 및 원서 접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>전형 확인 및 강의 선택</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 성적표 제출 및 원서 접수</p>
                    <div class="box">
                        <p class="fz16">※ 전형에 맞는 성적표 제출 및 현장 접수를 통해 입학 절차 안내가 이뤄집니다. </p>
                    </div>
                    <p class="tit">2) 전형 확인 및 강의 선택</p>
                    <div class="box">
                        <p class="fz16">성적표 제출 후 반편성이 완료되면, 강의 필수 수강 조건에 해당하는 경우에 강의를 등록합니다. (필수 수강 시수 미충족 시 입학 불가) <br>                       
                        ※ 문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우, 수강료 납부 및 퇴원 절차를 진행합니다. <br>
                        ※ 성적표 미 제출 시 그린 전형으로 배정됩니다.
                        </p>
                    </div>
                    <p class="tit">3) 최종 등록</p>
                    <div class="box"></div>
                </div>
            </div>
            <!-- 모집요강 및 지원혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_pc/2024/regular/cont00_tit02.png" alt="모집요강 및 지원혜택"></p>
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4375
                Else '실서버
                    AGM_CD = 1424
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
	// function fncAlarmPopPC(){       
    //     var url = "https://russelpc.megastudy.net/intro/2022/winter/popup.asp";
	// 	window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	// }
</script>