<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<head>
	<meta charset="euc-kr" />
	<title>바자관 인정시수(인정강좌 수) 현황</title>
	<!-- #include virtual = "/include/head.asp" -->
</head>
<%
bLecCnt			= fncRequest("V_CHECK_TYPE") ' true : 의무강좌, false : 의무시수
sMustCnt		= fncRequest("V_MUST_CNT") ' true : 의무강좌, false : 의무시수
sAcaCd			= fncRequest("V_ACA_CD")
sSubCD			= fncRequest("V_SUB_CD")

strSQL = ""
strSQL = strSQL & " SELECT		C.LS_HOUR_NO, D.AM_ACA_ABBR, E.CM_COURSE_NM, F.LM_LEC_NM, G.TM_TEC_NM "
strSQL = strSQL & " 			, CONVERT(VARCHAR(10), A.GH_REC_SDT, 21) AS GH_REC_SDT, CONVERT(VARCHAR(10), A.GH_REC_EDT, 21) AS GH_REC_EDT "
strSQL = strSQL & " 			, C.LS_LEC_CNT_MIN "
strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.GH_COLE_CD = B.CL_COLE_CD "
strSQL = strSQL & " INNER JOIN	AMS_LEC_SUB C WITH(NOLOCK) ON B.CL_COLE_CD = C.LS_COLE_CD "
strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS D WITH(NOLOCK) ON B.CL_ACA_CD = D.AM_ACA_CD "
strSQL = strSQL & " INNER JOIN	AMS_COURSE_MAS E WITH(NOLOCK) ON B.CL_COU_CD = E.CM_COURSE_CD "
strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS F WITH(NOLOCK) ON B.CL_LEC_CD = F.LM_LEC_CD AND B.CL_ACA_CD = F.LM_ACA_CD "
strSQL = strSQL & " INNER JOIN	AMS_TEC_MAS G WITH(NOLOCK) ON F.LM_TEC_ID= G.TM_TEC_ID "
strSQL = strSQL & " WHERE		1=1 "
strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
strSQL = strSQL & " AND			A.GH_BE_CD = 11 "
strSQL = strSQL & " AND			A.GH_REFUND_CD IS NULL "
strSQL = strSQL & " AND			B.CL_ACA_CD = '" & sAcaCd & "' "
strSQL = strSQL & " AND			(C.LS_BAZA_SUB_CD1 = '" & sSubCD & "' OR C.LS_BAZA_SUB_CD2 = '" & sSubCD & "') "
set RS = amsobjdb.sqlQuery(strSql,2)
If not (RS.eof or RS.bof) then
	arrDanInfo = RS.getrows()
End If
RS.close
set RS = nothing
%>
<body>
    <div class="wrap">
        <header class="pop-header">
            <h2>바자관 인정시수(인정강좌 수) 현황
                <span class="btn-close" onclick="window.close();">x</span></h2>
        </header>
        <section class="popup-content">
            <!-- content-in -->
            <div class="content-in">
                <div class="notice-box">
                    <p class="tit">※ 바자관 인정시수(인정강좌 수) 현황<br><br> <span>· 의무<% if bLecCnt then Response.Write "강좌" else Response.Write "시수" end if %> : <strong><%=sMustCnt%><% if bLecCnt then Response.Write " 강좌" else Response.Write " 시수" end if %></strong></span> </p>
                    <ul>
                        <li>· 재등록 바자관 과정에 충족하는 단과 과정 구매 현황입니다.</li>
                        <li>· 의무시수(의무강좌 수)가 충족되어야  바자관 과정 수강이 가능합니다.</li>
                    </ul>
                </div>
                <div class="tb-type1">
                    <table border="0" cellspacing="0" cellpadding="0">
                        <colgroup>
                            <col width="15%">
                            <col class="mo-no" width="12%">
                            <col class="mo-no" width="12%">
                            <col width="">
                            <col class="mo-no" width="15%">
                            <col width="20%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>인정시수<br>(or 강좌)</th>
                                <th class="mo-no">학원</th>
                                <th class="mo-no">과정</th>
                                <th>강좌</th>
                                <th>강사</th>
                                <th class="mo-no">수강기간</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if isArray(arrDanInfo) then %>
                                <% for i = 0 to ubound(arrDanInfo, 2) %>
                                    <tr>
                                        <td><strong class="fc-r"><% if bLecCnt then Response.Write arrDanInfo(7, i) & " 강좌" else Response.Write arrDanInfo(0, i) & " T" end if %></strong></td>
                                        <td class="txt_left pl10 mo-no"><%=arrDanInfo(1, i)%></td>
                                        <td class="mo-no"><%=arrDanInfo(2, i)%></td>
                                        <td><%=arrDanInfo(3, i)%></td>
                                        <td><%=arrDanInfo(4, i)%></td>
                                        <td class="mo-no"><%=arrDanInfo(5, i)%> ~ <%=arrDanInfo(6, i)%></td>
                                    </tr>
                                <% Next %>
                            <% end if %>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- //content-in -->
        </section>
    </div><!-- //wrap -->

</body>
</html>
    