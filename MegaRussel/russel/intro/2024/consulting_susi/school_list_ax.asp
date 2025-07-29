<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<% response.charset = "euc-kr" %>
<%
	formFilter()

	mode = VARS("mode")

	If mode = "high" Then
        searchWord = Trim(Unescape(VARS("searchWord")))

        If searchWord <> "" Then
            strSQL = ""
            strSQL = strSQL & " SELECT 	HM_HSCH_CD, "
            strSQL = strSQL & " 		HM_HSCH_TYPE, "
            strSQL = strSQL & " 		HM_HSCH_NM, "
            strSQL = strSQL & " 		HM_DO_NM, "
            strSQL = strSQL & " 		HM_GU_NM "

            If IsDevSvr() Then
                strSQL = strSQL & " FROM 	MEGASTUDY.MegaNext.dbo.MS_HSCH_MAS WITH (NOLOCK) "
            Else
                strSQL = strSQL & " FROM    MegaDB1.MegaStudy.dbo.MS_HSCH_MAS WITH (NOLOCK) "
            End If

            strSQL = strSQL & " WHERE 	HM_HSCH_NM LIKE '%"& searchWord &"%' "
            strSQL = strSQL & " 		AND HM_USE_YN = 'Y' "

            Set rsHschool = russelobjDB.sqlQuery(strSQL, 3)
            
            If Not rsHschool.EOF Then
                arrHschool = rsHschool.GetRows()
            End If
            
            rsHschool.Close
            Set rsHschool = Nothing

            If IsArray(arrHschool) And Not IsNull(arrHschool) Then
                For i = 0 To UBound(arrHschool, 2)
                    HschoolCd 		= arrHschool(0, i)
                    HschoolType 	= arrHschool(1, i)
                    HschoolNm 		= arrHschool(2, i)
                    HschoolDoNm	 	= arrHschool(3, i)
                    HschoolGuNm		= arrHschool(4, i)
%>
                    <p>
                        <a href="javascript:;" class="schoolList" data-cd="<%=HschoolCd%>" data-type="<%=HschoolType%>" data-nm="<%=HschoolNm%>" data-do="<%=HschoolDoNm%>" data-gu="<%=HschoolGuNm%>">
                            <strong><%=HschoolDoNm%>&nbsp;<%=HschoolGuNm%></strong><%=HschoolNm%>
                        </a>
                    </p>
<%
			    Next
		    Else
%>
			    <p style="color:#999" class="tac">검색 결과가 없습니다.</p>
<%
		    End If
        Else
%>
            <p style="color:#999" class="tac">검색 결과가 없습니다.</p>
<%
        End If
	ElseIf mode = "univ" Then
        univYear = VARS("univYear")
        univSomeFix = VARS("univSomeFix")
        searchWord = Unescape(VARS("searchWord"))
        
        If searchWord <> "" And univYear <> "" And univSomeFix <> "" Then
            totCnt = 0

            strSQL = ""
            strSQL = strSQL & " WITH DATA AS ( "
            strSQL = strSQL & "     SELECT  DISTINCT DU_UNIV_NAME "
            strSQL = strSQL & "     FROM    dbo.AMS_DB_UNIV WITH (NOLOCK) "
            strSQL = strSQL & "     WHERE   DU_UNIV_YEAR = '"& univYear &"' "
            strSQL = strSQL & "             AND DU_SOME_FIX = '"& univSomeFix &"' "
            strSQL = strSQL & "             AND DU_UNIV_NAME LIKE '%"& searchWord &"%' "
            strSQL = strSQL & " ) "
            strSQL = strSQL & " SELECT  ROW_NUMBER() OVER(ORDER BY DU_UNIV_NAME), "
            strSQL = strSQL & "         DU_UNIV_NAME "
            strSQL = strSQL & " FROM    DATA WITH (NOLOCK) "

            Set rsUniv = amsobjDB.sqlQuery(strSQL, 3)
            
            If Not rsUniv.EOF Then
                arrUniv = rsUniv.GetRows()

                If IsArray(arrUniv) And Not IsNull(arrUniv) Then
                    totCnt = UBound(arrUniv, 2)
                End If
            End If
            
            rsUniv.Close
            Set rsUniv = Nothing
%>
            <style>
                .uni-result {font-size:13px;color:#1a1a1a;margin:0 0 5px 0;padding:0 0 0 14px;}
                .listBox {height:200px;overflow: auto;}
                .listBox table{width:100%;border-collapse: collapse;}
                .listBox table thead tr th {position: sticky;top:0;left:0;}
                .listBox table thead tr th{background:#d4d4d4;border-left:1px solid #fff;height:35px;font-size:13px;color:#1a1a1a;padding:0;}
                .listBox  table thead tr th:first-child{width:48px;border-left:none;}
                .listBox  table tbody tr td{border:1px solid #e5e5e5;height:26px;line-height:26px;text-align:center;background:#fff;padding:0;font-size:13px;box-sizing:border-box;}
                .listBox  table tbody tr td:first-child{width:48px;}
                .listBox  table tbody tr:hover td{background:#f6f6f6;}
                .listBox  table tbody tr td a{display:block;width:100%;height:100%;}
                .listBox .thead{border-bottom:1px solid #e5e5e5;background:#fff;overflow:hidden;}
                .popupUniversity iframe{width:100%;height:196px;}
            </style>
            <p class="uni-result">· 대학교 명 검색 결과 (<%=totCnt%>건)</p>
            <div class="listBox">
                <table>
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>대학교 명</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    If IsArray(arrUniv) And Not IsNull(arrUniv) Then
                        For i = 0 To UBound(arrUniv, 2)
                            UniversityNo    = arrUniv(0, i)
                            UniversityNm    = arrUniv(1, i)
                    %>
                            <tr>
                                <td><%=UniversityNo%></td>
                                <td>
                                    <a href="javascript:;" class="univList" data-nm="<%=UniversityNm%>">
                                        <%=UniversityNm%>
                                    </a>
                                </td>
                            </tr>
                    <%  
                        Next
                    Else
                    %>
                        <tr align="center">
                            <td colspan="2" align="center">검색결과가 없습니다.</td>
                        </tr>
                    <%End If%>
                    </tbody>
                </table>
            </div>
<%
        End If
	ElseIf mode = "maj" Then
        univYear = VARS("univYear")
        univSomeFix = VARS("univSomeFix")
        univName = Unescape(VARS("univName"))
        searchWord = Unescape(VARS("searchWord"))
        
        If searchWord <> "" And univYear <> "" And univSomeFix <> "" And univName <> "" Then
            totCnt = 0

            strSQL = ""
            strSQL = strSQL & " SELECT  ROW_NUMBER() OVER(ORDER BY DU_COLLECT_UNIT), "
            strSQL = strSQL & "         DU_UNIV_CD, "
            strSQL = strSQL & "         DU_COLLECT_UNIT, "
            strSQL = strSQL & "         DU_PATTERN "
            strSQL = strSQL & " FROM    dbo.AMS_DB_UNIV WITH (NOLOCK) "
            strSQL = strSQL & " WHERE   DU_UNIV_YEAR = '"& univYear &"' "
            strSQL = strSQL & "         AND DU_SOME_FIX = '"& univSomeFix &"' "
            strSQL = strSQL & "         AND DU_UNIV_NAME = '"& univName &"' "
            strSQL = strSQL & "         AND DU_COLLECT_UNIT LIKE '%"& searchWord &"%' "

            Set rsMajor = amsobjDB.sqlQuery(strSQL, 3)
            
            If Not rsMajor.EOF Then
                arrMajor = rsMajor.GetRows()

                If IsArray(arrMajor) And Not IsNull(arrMajor) Then
                    totCnt = UBound(arrMajor, 2)
                End If
            End If
            
            rsMajor.Close
            Set rsMajor = Nothing
%>
            <style>
                .uni-result {font-size:13px;color:#1a1a1a;margin:0 0 5px 0;padding:0 0 0 14px;}
                .listBox {height:200px;overflow: auto;}
                .listBox table{width:100%;border-collapse: collapse;}
                .listBox table thead tr th {position: sticky;top:0;left:0;}
                .listBox table thead tr th{background:#d4d4d4;border-left:1px solid #fff;height:35px;font-size:13px;color:#1a1a1a;padding:0;}
                .listBox  table thead tr th:first-child{width:48px;border-left:none;}
                .listBox  table tbody tr td{border:1px solid #e5e5e5;height:26px;line-height:26px;text-align:center;background:#fff;padding:0;font-size:13px;box-sizing:border-box;}
                .listBox  table tbody tr td:first-child{width:48px;}
                .listBox  table tbody tr:hover td{background:#f6f6f6;}
                .listBox  table tbody tr td a{display:block;width:100%;height:100%;}
                .listBox .thead{border-bottom:1px solid #e5e5e5;background:#fff;overflow:hidden;}
                .popupUniversity iframe{width:100%;height:196px;}
            </style>
            <p class="uni-result">· 학과 명 검색 결과 (<%=totCnt%>건)</p>
            <div class="listBox">
                <table>
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>학과 명(전형)</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    If IsArray(arrMajor) And Not IsNull(arrMajor) Then
                        For i = 0 To UBound(arrMajor, 2)
                            MajorNo         = arrMajor(0, i)
                            MajorCd	        = arrMajor(1, i)
                            MajorNm         = arrMajor(2, i)
                            MajorPattern    = arrMajor(3, i)
                    %>
                            <tr>
                                <td><%=MajorNo%></td>
                                <td>
                                    <a href="javascript:;" class="majList" data-cd="<%=MajorCd%>" data-nm="<%=MajorNm%>" data-pattern="<%=MajorPattern%>">
                                        <%=MajorNm%>&nbsp;(<%=MajorPattern%>)
                                    </a>
                                </td>
                            </tr>
                    <%  
                        Next
                    Else
                    %>
                        <tr align="center">
                            <td colspan="2" align="center">검색결과가 없습니다.</td>
                        </tr>
                    <%End If%>
                    </tbody>
                </table>
            </div>
<%
        End If
    End If
%>

   