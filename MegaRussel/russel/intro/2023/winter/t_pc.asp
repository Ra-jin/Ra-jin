<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            <!-- 이벤트 -->
            <!-- <div class="pre-event mb100">
                <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/winter/event_box.png" alt=""></div>
            </div> -->
            <!-- //이벤트 -->
            <!-- 연간 운영 계획 -->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_pc/2023/winter/cont00_tit02.png" alt="러셀 평촌 재학생반 연간 운영 계획"></p>
        
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                    <th>1월</th>
                    <th class="on">2월<span>현재 모집중</span></th>
                    <th>3~6월</th>
                    <th>7~8월</th>
                    <th>9~11월</th>
                    <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td>윈터스쿨</td>
                    <td>윈터스쿨<br>PLUS</td>
                    <td>재학생<br>최상위권반</td>
                    <td>썸머스쿨</td>
                    <td>파이널 정규반</td>
                    <td>프리<br>윈터스쿨</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt">※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</p>

            <!-- 입학 절차 -->
            <p class="mt100 mb60"><img src="<%=Application("img_path_russel")%>/russel_pc/2023/winter/cont00_tit03.png" alt="러셀 평촌 윈터스쿨 입학절차"></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>성적표 제출 <br>및 반 배정</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>강좌 선택<br>(의무T수 충족)</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>실등록 완료, <br>좌석 배정</p>
                </li>
            </ul>
            <!-- 모집요강 및 지원혜택 -->
            <p class="mt100 mb90"><img src="<%=Application("img_path_russel")%>/russel_pc/2023/winter/cont00_tit01.png" alt="모집요강 및 지원혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 2326
                Else '실서버
                    AGM_CD = 1350
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



            <div class="sns-wrap mt20">
                <p class="txt">
                    지원혜택 및 강좌 시간표 <strong class="txt-blue02">추후 공개 예정</strong><br><br>
                    <span class="ico" style="left: 240px;"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_tip.png" alt="tip"></span>
                    학원 문자 수신 알리미에 정보를 등록해주시면<br>
                    누구보다 빠르게 러셀 평촌 윈터스쿨 소식을 받으실 수 있습니다
                </p>
                <a class="armbtn" href="javascript:fncAlarmPopPC();">문자 수신 알리미 신청하기</a>
            </div>
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