<% @Language="VBScript" CODEPAGE="949" %>
<%
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"
%>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%

sAcaCd              = VARS("V_ACA_CD")
' 에러방지
IF IsNull(sAcaCd) OR sAcaCd = "" THEN
    sAcaCd = 0
END IF

strSQL = ""
strSQL = strSQL & " SELECT		LM_ROOM_CD, LM_ROOM_NM "
strSQL = strSQL & " FROM		AMS_LECROOM_MAS (NOLOCK) "
strSQL = strSQL & " WHERE		1=1 "
strSQL = strSQL & " AND			LM_ACA_CD = '" & sAcaCd & "' "
strSQL = strSQL & " AND			LM_USE_YN = 'Y' "
strSQL = strSQL & " AND			LM_USE_TYPE = 18 "
strSQL = strSQL & " ORDER BY	LM_ROOM_CD "
set RS = amsobjdb.sqlQuery(strSql,3)
If RS.EOF <> True Then%>

    <select name="V_LOC_CD" id="reserve_floor">
        <option value="">예약 층수 선택</option>
        <%DO WHILE NOT RS.EOF%>
            <option value="<%=RS("LM_ROOM_NM")%>"><%=RS("LM_ROOM_NM")%></option>
            <%RS.MoveNext
        LOOP%>
    </select>
<%ELSE%>
    <select name="V_LOC_CD" id="reserve_floor">
        <option value="">예약 층수 선택</option>
    </select>
<%END IF

RS.close
Set RS = Nothing
%>


