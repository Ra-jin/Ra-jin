<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">

        <!-- <p class="recruit-tit"><strong>2026 반수반 이벤트</strong></p>
        <div class="txt-coming">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_comming.png" alt="" /></div>
            <p>
                <strong>2026 반수반 이벤트</strong>는 <br>
                추후 공개될 예정입니다.
            </p>
        </div> -->

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>

        <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6838
            Else '실서버
                AGM_CD = 1919
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

<!-- <div class="txt-coming">
<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_comming.png" alt="" /></div>
<p>
    재학생(고3) 정규반의 <br>
    <strong>모집요강 및 지원혜택</strong>은 <br>
    추후 공개 예정입니다.
</p>
</div> -->

<!--문자수신알리미-->
<!-- <div class="txt-coming alarm">
<p class="txt">
    <strong>재학생(고3) 정규반 모집요강 및 지원혜택</strong>은 <br>
    추후 공개 예정입니다.
</p>
<div>
    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_alarm.png" alt="" /></div>
    <p>
        학원 문자 수신 알리미에 <br>
        정보를 등록해주시면 누구보다 빠르게 <br>
        재학생(고3) 정규반 소식을 받을 수 있습니다.
    </p>
</div>
</div> -->

<!-- <a class="btn-common" href="javascript:void(0);" onclick="fncAlarmPop()" style="line-height: 1.6;">러셀 분당학원 <br> 문자 수신 알리미 신청하기</a> -->
<!-- <a class="btn-common" href="javascript:void(0);" onclick="window.open('https://russelbd.megastudy.net/popup/popup_sms_alarm.asp?EM_NUM=127&stype=f', 'popupWindow', 'width=600,height=700,scrollbars=yes');" style="line-height: 1.6;">러셀 분당학원 <br> 문자 수신 알리미 신청하기</a> -->
<!-- <a class="btn-common" href="javascript:void(0);" onclick="alert('추후 오픈 예정입니다.')">문자 수신 알리미 신청하기</a> -->