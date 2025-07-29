<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<% response.charset = "euc-kr" %>
<%
	formFilter()
	kword = Trim(unescape(fncRequest("kword")))

    If kword <> "" Then

        'kindwhere = "HM_HSCH_TYPE  IN ('A','1','2','3','4','5','6','7','8','9') "
        'query = " SELECT * FROM AMS_HSCH_MAS WITH(NOLOCK) WHERE HM_HSCH_NM LIKE '%"&kword&"%' AND "&kindwhere&""
        'set Rs = amsObjDB.sqlQuery (query ,3)

		If IsDevSvr() Then
			strSql = "SELECT * FROM megastudy.meganext.dbo.ms_hsch_mas WITH(NOLOCK) WHERE HM_HSCH_NM LIKE '%" & kword & "%' AND HM_USE_YN='Y' "
		Else
			strSql = "SELECT * FROM megadb1.megastudy.dbo.ms_hsch_mas WITH(NOLOCK) WHERE HM_HSCH_NM LIKE '%" & kword & "%' AND HM_USE_YN='Y' "
		End If
		set Rs = russelobjdb.sqlQuery (strSql ,3)

    End If


	If kword <> "" Then
		If Not (rs.eof Or rs.bof) Then
			Do While Not rs.eof

%>
				<p>
					<a href="javascript:sch_insert('<%=rs("HM_HSCH_CD")%>','<%=rs("HM_HSCH_TYPE")%>','<%=rs("HM_HSCH_NM")%>','<%=rs("HM_DO_NM") & " " & rs("HM_GU_NM")%>');"><strong><%=rs("HM_DO_NM") & " " & rs("HM_GU_NM")%></strong><%=rs("HM_HSCH_NM")%></a>
				</p>
<%
				rs.movenext
			Loop
		Else
			response.write "<p style='color:#999' class='tac'>검색 결과가 없습니다.</p>"
		End If
	Else
		response.write "<p style='color:#999' class='tac'>검색 결과가 없습니다.</p>"
	End if
%>

   