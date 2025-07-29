<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<%
    Call formFilter

    arrParms = split(VARS("v"), "_")

    if isArray(arrParms) = false or ubound(arrParms) <> 1 then
        js_close("링크정보가 없습니다.")
    end if

    '링크페이 전용 변수
    Dim sLinkCd, sSetCd, sMemCd
    LecName = ""
    sCompUrl = "/onlinepayment/completion.asp"

    sLinkCd     = arrParms(0)
    sMemCd      = arrParms(1)

    strSQL = ""
    strSQL = strSQL & " SELECT		A.LS_SET_CD, B.SM_ACA_CD, C.MM_MEM_NM, A.LS_LINK_AMT, A.LS_STAT, A.LS_PAY_DT "
    strSQL = strSQL & " FROM		AMS_LINK_SET A WITH(NOLOCK) "
    strSQL = strSQL & " INNER JOIN	AMS_SET_MAS B WITH(NOLOCK) ON A.LS_SET_CD = B.SM_SET_CD "
    strSQL = strSQL & " INNER JOIN	AMS_MEM_MAS C WITH(NOLOCK) ON A.LS_MEM_CD = C.MM_MEM_CD "
    strSQL = strSQL & " WHERE		1=1 "
    strSQL = strSQL & " AND			A.LS_LINK_CD = " & sLinkCd
    strSQL = strSQL & " AND			A.LS_MEM_CD = " & sMemCd
    set RS = amsobjdb.sqlQuery(strSql,2)

    If RS.eof or RS.bof then
        js_close("링크정보가 없습니다.")
    else
        sSetCd          = RS("LS_SET_CD")
        sLinkStat       = RS("LS_STAT")
        sPayDt          = RS("LS_PAY_DT")

        ' 결제모듈 필수 변수
        pAcaCD          = RS("SM_ACA_CD")
        gLoginMemName   = RS("MM_MEM_NM")
        LecTotalPrice   = RS("LS_LINK_AMT")
    end if

    RS.close
	set RS = nothing

    ' 링크 상태값 체크
    if sLinkStat = "F" then
        js_close("이미 결제가 완료되었습니다.")
    elseif sLinkStat = "C" then
        js_close("링크가 파기되어 결제가 불가합니다.\n학원에 문의해주세요.")
    elseif sLinkStat <> "W" then
        js_close("결제 대기 상태가 아닙니다.")
    end if

    if sPayDt < now then
        js_close("기한이 마감되어 결제가 불가합니다.")
    end if

    strSQL = ""
    strSQL = strSQL & " SELECT		E.LM_CLS_CD, C.AM_ACA_ABBR, D.CM_COURSE_NM, E.LM_LEC_NM, G.TM_TEC_NM "
    strSQL = strSQL & " 			, CONVERT(VARCHAR(10), F.GH_REC_SDT, 23) AS GH_REC_SDT "
    strSQL = strSQL & " 			, CONVERT(VARCHAR(10), F.GH_REC_EDT, 23) AS GH_REC_EDT "
    strSQL = strSQL & " FROM		AMS_SALE_LEC A WITH(NOLOCK) "
    strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.SL_COLE_CD = B.CL_COLE_CD "
    strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS C WITH(NOLOCK) ON B.CL_ACA_CD = C.AM_ACA_CD "
    strSQL = strSQL & " INNER JOIN	AMS_COURSE_MAS D WITH(NOLOCK) ON B.CL_COU_CD = D.CM_COURSE_CD "
    strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS E WITH(NOLOCK) ON B.CL_LEC_CD = E.LM_LEC_CD "
    strSQL = strSQL & " INNER JOIN	AMS_GRP_HIS F WITH(NOLOCK) ON A.SL_SALE_CD = F.GH_SALE_CD "
    strSQL = strSQL & " LEFT JOIN	AMS_TEC_MAS G WITH(NOLOCK) ON ISNULL(B.CL_TEC_ID, E.LM_TEC_ID) = G.TM_TEC_ID "
    strSQL = strSQL & " WHERE		SL_SET_CD ='" & sSetCd & "' "
    strSQL = strSQL & " AND			SL_SALE_ST = 11 "
    strSQL = strSQL & "  "
    strSQL = strSQL & " UNION ALL "
    strSQL = strSQL & "  "
    strSQL = strSQL & " SELECT		8, D.AM_ACA_ABBR, ISNULL(F.CM_COURSE_NM, '-'), B.BM_BOOK_NM, '-', '-', '-' "
    strSQL = strSQL & " FROM		AMS_SALE_BOOK A WITH(NOLOCK) "
    strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS B WITH(NOLOCK) ON A.SB_BOOK_CD = B.BM_BOOK_CD "
    strSQL = strSQL & " INNER JOIN	AMS_BOOK_ACA C WITH(NOLOCK) ON B.BM_BOOK_CD = C.BA_BOOK_CD "
    strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS D WITH(NOLOCK) ON C.BA_ACA_CD = D.AM_ACA_CD "
    strSQL = strSQL & " LEFT JOIN	AMS_COURSE_SUB E WITH(NOLOCK) ON B.BM_SUB_CD = E.CS_SUB_CD "
    strSQL = strSQL & " LEFT JOIN	AMS_COURSE_MAS F WITH(NOLOCK) ON E.CS_COURSE_CD = F.CM_COURSE_CD "
    strSQL = strSQL & " WHERE		SB_SET_CD = '" & sSetCd & "' "
    strSQL = strSQL & " AND			SB_sALE_ST = 11 "
    strSQL = strSQL & "  "
    strSQL = strSQL & " UNION ALL "
    strSQL = strSQL & "  "
    strSQL = strSQL & " SELECT		9, C.AM_ACA_ABBR, '-', B.SB_SET_NM, '-', '-', '-' "
    strSQL = strSQL & " FROM		AMS_SALE_BOOKSET A WITH(NOLOCK) "
    strSQL = strSQL & " INNER JOIN	AMS_SET_BOOK B WITH(NOLOCK) ON A.SS_SETBOOK_CD = B.SB_SET_CD "
    strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS C WITH(NOLOCK) ON B.SB_ACA_CD = C.AM_ACA_CD "
    strSQL = strSQL & " WHERE		SS_SET_CD = '" & sSetCd & "' "
    strSQL = strSQL & " AND			SS_SALE_ST = 11 "
    set RS = amsobjdb.sqlQuery(strSql,2)
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>온라인 결제</title>
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="apple-touch-icon" href="https://russel.megastudy.net/russel/Data/apple-touch-icon-iphone.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="https://russel.megastudy.net/russel/Data/apple-touch-icon-ipad.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="https://russel.megastudy.net/russel/Data/apple-touch-icon-iphone4.png" />
    <link rel="apple-touch-icon-precomposed" href="/apple-touch-icon.png" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700,900&display=swap&subset=korean" rel="stylesheet">
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="online_payment.css">
    <script>
    <!--
        function PlugProcess(){
            launchCrossPlatform();
            return;
        }
    -->
    </script>
</head>
<body>
    <div class="wrap">
        <header class="sub type02">
            <div>
                <p class="location">온라인 결제</p>
                <div>
                    <p class="logo"><img src="<%=Application("img_path_russel")%>/onlinepayment/logo_wh.png" alt="러셀" /></p>
                </div>
            </div>
        </header>
        <section class="sub-wrap">
            <div class="inBox type02">
                <h2 class="txt">총 <span class="txt-blue"><%=RS.RecordCount%></span>건의 상품</h2>
                <ul class="lecture-list">
                    <li class="pc-only th">
                        <div>학원</div>
                        <div>과정명</div>
                        <div>상품명</div>
                        <div>강사명</div>
                        <div>수강기간</div>
                    </li><%
                    Do While not Rs.Eof
                        if LecName = "" then
                            LecName = RS("LM_LEC_NM")
                            if RS.RecordCount > 1 then
                                LecName = LecName & " 외 " & (RS.RecordCount - 1) & "건"
                            end if
                        end if %>
                        <li>
                            <div class="txt-list">
                                <div class="list-wrap">
                                    <div class="txt-01"><%=RS("AM_ACA_ABBR")%></div>
                                    <div class="txt-02"><%=RS("CM_COURSE_NM")%></div>
                                    <div class="txt-04">
                                    <% if RS("LM_CLS_CD") = 14 or RS("LM_CLS_CD") = 0 then %>
                                        -
                                    <% else %>
                                        <%=RS("TM_TEC_NM")%>
                                    <% end if %>
                                    </div>
                                </div>
                                <div class="txt-05">
                                    <span class="mo-only">수강기간&nbsp;</span>
                                    <% if RS("LM_CLS_CD") = 14 or RS("LM_CLS_CD") = 0 then %>
                                        -
                                    <% else %>
                                        <span class="pc-only"><%=left(RS("GH_REC_SDT"), 2)%></span><%=right(RS("GH_REC_SDT"),8)%> ~
                                        <span class="pc-only"><%=left(RS("GH_REC_EDT"), 2)%></span><%=right(RS("GH_REC_EDT"),8)%>
                                    <% end if %>
                                </div>
                            </div>
                            <div class="txt-03"><%=RS("LM_LEC_NM")%></div>
                        </li><%
                        Rs.moveNext
                    Loop %>
                </ul>
                <ul class="total-price">
                    <li class="txt"><span class="mo-only">총</span><span class="pc-only">최종</span> 결제금액</li>
                    <li class="price"><%=FormatCurrencySTR(LecTotalPrice)%>원</li>
                </ul>
                <!--#include virtual="/payment/lgdacom/lgdacom_inc.asp"-->
                <div class="payment-box">
                    <a href="javascript:PlugProcess();" class="btn-blue">
                        <span class="mo-only">총 <span><%=FormatCurrencySTR(LecTotalPrice)%></span>원 </span> 결제하기
                    </a>
                </div>
            </div>
        </section>
        <footer class="footer pc-only">
            copyright 2014 megastudyEdu. all rights reserved.
        </footer>
    </div>
</body>
</html>

<%
    RS.close
    set RS = nothing
%>