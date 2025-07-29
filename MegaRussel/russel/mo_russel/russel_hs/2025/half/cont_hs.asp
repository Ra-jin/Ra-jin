<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<p class="recruit-tit"><strong>2026 반수반 모집요강</strong></p>
<!-- 모집요강 자동화 시스템 영역 -->
<%
'관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
If IsDevSvr() = true Then   '개발서버
    AGM_CD = 6879
Else '실서버
    AGM_CD = 1961
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


<p class="recruit-tit process-parents">
    <strong>2026 반수반 <br> 입학 절차 안내</strong>
    <a href="javascript:void(0)" class="ico-process js-bt-needs"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/2025/half/ico_process.png" alt="입학준비물"></a>
</p>
<div class="tbl-box">
    <table class="tbl-type01">
        <colgroup>
            <col style="width: 30%;">
            <col style="width: %;">
        </colgroup>
        <tbody>
            <tr>
                <th class="bg-sky">STEP 1.<br> 상담</th>
                <td class="text-align-left">
                    <ul class="list-dot m0">
                        <li>온라인 상담 : 학원 홈페이지/1:1 문의게시판</li>
                        <li>전화 상담 : 031.326.5000</li>
                        <li>
                            방문 상담 <br>
                            1) 학원 방문예약(전화) <br>
                            2)  방문 전 온라인 원서접수 <br>
                            3) 방문 상담
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <th class="bg-sky">STEP 2.<br> 원서접수</th>
                <td class="text-align-left">
                    <ul class="list-dot m0">
                        <li>온라인 원서접수(PC버전)</li>
                        <li>성적정보  필수 기입</li>
                        <li>성적표 첨부</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <th class="bg-sky">STEP 3.<br> 서류심사</th>
                <td class="text-align-left">
                    <ul class="list-dot m0">
                        <li>입학여부 전화안내</li>
                        <li>전형 자격요건 확인</li>
                        <li>학원 규칙 준수 여부 확인</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <th class="bg-sky">STEP 4.<br> 등록</th>
                <td class="text-align-left">
                    <ul class="list-dot m0">
                        <li>등록예약금 납부</li>
                        <li>입학일 확인</li>
                        <li>제출서류 안내</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <th class="bg-sky">STEP 5.<br> 입학</th>
                <td class="text-align-left">
                    <ul class="list-dot m0">
                        <li>잔금납부</li>
                        <li>제출서류 확인</li>
                        <li>입학 준비물 안내</li>
                        <li>입학일시 준수</li>
                    </ul>
                </td>
            </tr>
        </tbody>
    </table>
</div>