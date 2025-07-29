<%

'======================================================================================================================
' html 처리 공통
'======================================================================================================================

'------------------------------------------------------------------------------------------------------------
' 스크립트 페이지 이동
' pMsg : 출력 메세지
' pURL : 이동 주소(back:이전페이지, close:윈도우닫기, 그외:보내온 주소대로 이동)
'------------------------------------------------------------------------------------------------------------
' 주소 혹은 특별한 페이지로 이동
Sub LocationGo(pMsg, pURL)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=euc-kr"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")

	If pMsg <> "" Then
		RW("alert(""" & pMsg & """);")
	End If

	RW(CheckLinkURL(pURL))

	RW("</script>")
	Response.End
End Sub

' 스크립트 실행
Sub LocationGoScript(pMsg, pScript, pURL)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=euc-kr"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")

	If pMsg <> "" Then
		RW("alert(""" & pMsg & """);")
	End If

	RW(pScript)

	If pURL <> "" Then 
		RW(CheckLinkURL(pURL))
	End If 
	RW("</script>")
	Response.End
End Sub

' Confirm 선택에 따라 이동
Sub LocationGoConfirm(pMsg, pURL1, pURL2)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=euc-kr"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")

	RW("if(confirm(""" & pMsg & """)){")
	RW(CheckLinkURL(pURL1))
	RW("} else {")
	RW(CheckLinkURL(pURL2))
	RW("}")

	RW("</script>")
End Sub

' Url Replace
Sub LocationReplace(pMsg, pURL)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=euc-kr"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")

	If pMsg <> "" Then
		RW("alert(""" & pMsg & """);")
	End If

	RW("location.replace(""" & pURL & """);")

	RW("</script>")
	Response.End
End Sub

' 특별 페이지로 링크인지 확인
Function CheckLinkURL(pURL)
	Select Case LCase(pURL)
		Case "back"
			CheckLinkURL = "history.back();"

		Case "close"
			CheckLinkURL = "top.window.close();"

		Case "close2"
			CheckLinkURL = "window.opener = window.location.href; self.close();"

		Case "top"
			CheckLinkURL = "top.document.location.href = 'http://" & g_Domain_LosaWeb & "/main/main.asp';"

		Case "reload"
			CheckLinkURL = "location.reload();"

		Case Else 
			CheckLinkURL = "location.href = '" & pURL & "';"
	End Select
End Function

' 부모창 이동(자기는 닫음)
Function OpenerLocationGo(pMsg, pURL)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=euc-kr"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")

	If pMsg <> "" Then
		RW("alert(""" & pMsg & """);")
	End If

	RW("opener." + CheckLinkURL(pURL))
	RW(CheckLinkURL("close"))

	RW("</script>")
	Response.End
End Function

' 자기자신을 닫음
Function OpenerClose(pMsg)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")

	If pMsg <> "" Then
		RW("alert(""" & pMsg & """);")
	End If

	RW(CheckLinkURL("close"))

	RW("</script>")
	Response.End
End Function

' Parent창 이동
Function ParentLocationGo(pMsg, pURL)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=euc-kr"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")

	If pMsg <> "" Then
		RW("alert(""" & pMsg & """);")
	End If

	RW("parent." + CheckLinkURL(pURL))

	RW("</script>")
	Response.End
End Function

' Parent창 함수 호출
Function OpenerFunctionGo(pMsg, pFunctionNm)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=euc-kr"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")

	If pMsg <> "" Then
		RW("alert(""" & pMsg & """);")
	End If

	RW("opener." + pFunctionNm)
	RW(CheckLinkURL("close"))

	RW("</script>")
	Response.End
End Function

'------------------------------------------------------------------------------------------------------------
' 메세지 출력
' pMsg : 출력 메세지
'------------------------------------------------------------------------------------------------------------
' 경고창 출력후 종료
Sub AlertEnd(pMsg)
	RW("<meta http-equiv=""Content-Type"" content=""text/html; charset=euc-kr"" />")
	RW("<script language=""javascript"" type=""text/javascript"">")
	RW("alert(""" & pMsg & """);")
	RW("</script>")
	Response.End
End Sub



'------------------------------------------------------------------------------------------------------------
' HTML 생성 도우미
'------------------------------------------------------------------------------------------------------------
' 셀렉트박스 디폴트 선택 확인
Function CreateOptionSelected(val1, val2)
	If isNull(val2) Or val2 = null Then
		val2 = ""
	End If
	If CStr(val1) = CStr(val2) Then
		CreateOptionSelected = "selected=""selected"""
	End If
End Function

' 체크박스 디폴트 선택 확인
Function CreateCheckboxChecked(val1, val2)
	If isNull(val2) Or val2 = null Then
		val2 = ""
	End If
	If CStr(val1) = CStr(val2) Then
		CreateCheckboxChecked = "checked=""checked"""
	End If
End Function



'------------------------------------------------------------------------------------------------------------
' Option 생성
'------------------------------------------------------------------------------------------------------------
' Selected Box Option 자동 생성(번호)
Sub CreateOptionFromNum(pStartNum, pEndNum, pStep, pInfoOption, pSelectedValue)
	Dim i
	If pInfoOption <> "" Then
		RW("<option value="""">" & pInfoOption & "</option>")
	End If

	If pStartNum >= 0 Then 
		For i = pStartNum To pEndNum Step pStep
			RW("<option value="""& i &""" " & CreateOptionSelected(i, pSelectedValue) & ">" & i & "</option>")
		Next
	End If
End Sub

' Selected Box Option 자동 생성(Dictionary)
Sub CreateOptionFromDic(pDic, pInfoOption, pSelectedValue)
	Dim keyvalue
	If pInfoOption <> "" Then
		RW("<option value="""">" & pInfoOption & "</option>")
	End If
	If TypeName(pDic) = "Dictionary" Then
		For Each keyvalue In pDic.Keys
			RW("<option value="""& keyvalue &""" " & CreateOptionSelected(keyvalue, pSelectedValue) & ">" & pDic(keyvalue) & "</option>")
		Next
	End If
End Sub

' Selected Box Option 자동 생성(1차원 배열 : 배열값 사용)
Sub CreateOptionFromArray(pArray, pInfoOption, pSelectedValue)
	Dim i
	If pInfoOption <> "" Then
		RW("<option value="""">" & pInfoOption & "</option>")
	End If
	If isArray(pArray) Then
		For i = 0 To UBound(pArray)
			If pArray(i) <> "" And Not IsNull(pArray(i)) And Not IsEmpty(pArray(i)) Then
				RW("<option value="""& pArray(i) &""" " & CreateOptionSelected(pArray(i), pSelectedValue) & ">" & pArray(i) & "</option>")
			End If
		Next
	End If
End Sub

' Selected Box Option 자동 생성(1차원 배열 : 배열번호 사용)
Sub CreateOptionFromArrayNum(pArray, pInfoOption, pSelectedValue)
	Dim i
	If pInfoOption <> "" Then
		RW("<option value="""">" & pInfoOption & "</option>")
	End If
	If isArray(pArray) Then
		For i = 0 To UBound(pArray)
			If pArray(i) <> "" And Not IsNull(pArray(i)) And Not IsEmpty(pArray(i)) Then
				RW("<option value="""& i &""" " & CreateOptionSelected(i, pSelectedValue) & ">" & pArray(i) & "</option>")
			End If
		Next
	End If
End Sub

' Selected Box Option 자동 생성(2차원 배열) - key : value
Sub CreateOptionFromArray2(pArray, pInfoOption, pSelectedValue)
	Dim i
	If pInfoOption <> "" Then
		RW("<option value="""">" & pInfoOption & "</option>")
	End If
	If isArray(pArray) Then
		For i = 0 To UBound(pArray)
			If pArray(i, 1) <> "" And Not IsNull(pArray(i, 1)) And Not IsEmpty(pArray(i, 1)) Then
				RW("<option value="""& pArray(i, 0) &""" " & CreateOptionSelected(pArray(i, 0), pSelectedValue) & ">" & pArray(i, 1) & "</option>")
			End If
		Next
	End If
End Sub

' Selected Box Option 자동 생성(Date 형)
' pType : y(년도) 값만 그대로 표현, 나머지(월, 일, 시간, 분, 초)는 두자리수로 표현
Sub CreateOptionDate(pType, pStartDate, pEndDate, pStep, pSelectedValue)
	Dim i, strI
	For i = pStartDate To pEndDate Step pStep
		If LCase(pType) = "y" Then
			RW("<option value="""& i &""" " & CreateOptionSelected(i, pSelectedValue) & ">" & i & "</option>")
		Else
			strI = Right("0" & i, 2)
			RW("<option value="""& strI &""" " & CreateOptionSelected(strI, pSelectedValue) & ">" & strI & "</option>")
		End If
	Next
End Sub

' e-mail address 옵션 생성
Sub CreateEmailOption()
	Dim arrEmailAddress(22)
	arrEmailAddress(0) = "hanmail.net"
	arrEmailAddress(1) = "naver.com"
	arrEmailAddress(2) = "paran.com"
	arrEmailAddress(3) = "hanmir.com"
	arrEmailAddress(4) = "yahoo.co.kr"
	arrEmailAddress(5) = "lycos.co.kr"
	arrEmailAddress(6) = "hotmail.com"
	arrEmailAddress(7) = "nate.com"
	arrEmailAddress(8) = "dreamwiz.com"
	arrEmailAddress(9) = "shinbiro.com"
	arrEmailAddress(10) = "empal.com"
	arrEmailAddress(11) = "korea.com"
	arrEmailAddress(12) = "freechal.com"
	arrEmailAddress(13) = "hanafos.com"
	arrEmailAddress(14) = "hitel.net"
	arrEmailAddress(15) = "kornet.net"
	arrEmailAddress(16) = "orgio.net"
	arrEmailAddress(17) = "hananet.net"
	arrEmailAddress(18) = "unitel.co.kr"
	arrEmailAddress(19) = "intizen.com"
	arrEmailAddress(20) = "hihome.com"
	arrEmailAddress(21) = "msn.com"
	arrEmailAddress(22) = "netian.com"
	Call CreateOptionFromArray(arrEmailAddress, "직접입력", "")
End Sub



'------------------------------------------------------------------------------------------------------------
' 페이징 처리(일반 리스트용)
'------------------------------------------------------------------------------------------------------------
' 처음
Sub FirstPageLink(p_iPage, p_sURL, p_iOnePageCount, p_iTotalCount, searchStr)
	If p_iTotalCount > 0 Then
		RW("<a href=""" & p_sURL & "?page=1&#38;"&searchStr& """ class=""first"" title=""처음"">처음</a>")
	Else
		RW("<a href=""#none"" class=""first"" title=""처음"">처음</a>")
	End If
End Sub

' 마지막
Sub LastPageLink(p_iPage, p_sURL, p_iOnePageCount, p_iTotalCount, searchStr)
	If p_iTotalCount > 0 Then
		Dim LastPage
		LastPage = int( int(p_iTotalCount)/ int(p_iOnePageCount) )

		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
				LastPage = LastPage + 1
		End If
		
		If CLng(p_iPage) = CLng(LastPage) Then
			RW("<a href=""#none"" class=""last"" title=""마지막"">마지막</a>")
		Else
			RW("<a href=""" & p_sURL & "?page=" & LastPage &"&#38;" & searchStr & """ class=""last"" title=""마지막"">마지막</a>")
		End If
	End If
End Sub

' 이전
Sub PrevPageLink(p_iPage, p_sURL, p_iOnePageCount, p_iTotalCount, searchStr)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_sBgColor
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If
		
		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1

		If l_iStartPage = 1 Then
			RW("<a href=""#none"" class=""prev"" title=""이전"">이전</a>")
		Else
			RW("<a href=""" & p_sURL & "?page=" & (l_iStartPage-1) &"&#38;"&searchStr& """ class=""prev"" title=""이전"">이전</a>")
		End If
	End If
End Sub

' 다음
Sub NextPageLink(p_iPage, p_sURL, p_iOnePageCount, p_iTotalCount, searchStr)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_iLastPage, l_sBgColor
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If

		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1
		l_iLastPage = l_iStartPage + 10 - 1
		If l_iLastPage >= l_iPageCount Then
			l_iLastPage = l_iPageCount
		End If

		If l_iLastPage >= l_iPageCount Then
			RW("<a href=""#none"" class=""next"" title=""다음"">다음</a>")
		Else
			RW("<a href=""" & p_sURL & "?page=" & (l_iStartPage+10)& "&#38;"&searchStr&""" class=""next"" title=""다음"">다음</a>")
		End If
	End If
End Sub

' 페이지 이동
Sub GoToPageLink(p_iPage, p_sURL, p_iOnePageCount, p_iTotalCount, searchStr)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_iLastPage
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If

		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1
		l_iLastPage = l_iStartPage + 10 - 1

		If l_iLastPage >= l_iPageCount Then
			l_iLastPage = l_iPageCount
		End If

		For i = l_iStartPage to l_iLastPage
			If int(p_iPage) = i Then
				RW("<a href=""#none"" class=""on"" title=""현재 페이지"">" & i & "</a>")
			Else
				RW("<a href=""" & p_sURL & "?page=" & i &"&#38;"&searchStr &""">" & i & "</a>")
			End If
		Next
	End If
End Sub



'------------------------------------------------------------------------------------------------------------
' 페이징 처리(ajax 리스트용)
'------------------------------------------------------------------------------------------------------------
' 처음
Sub AjaxFirstPageLink(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction)
	If p_iTotalCount > 0 Then
		RW("<li><a style=""cursor:pointer;"" title=""처음"" onclick="""& p_ScriptFunction &"(1);""><img src=""" & g_ImagePath & "/library/campus_common/2019_live/prev_btn.gif"" alt="""" border=""0"" ></a></li>")
	Else
		RW("<li><a style=""cursor:pointer;"" title=""처음""><img src=""" & g_ImagePath & "/library/campus_common/2019_live/prev_btn.gif"" alt="""" border=""0"" ></a></li>")
	End If
End Sub

' 마지막
Sub AjaxLastPageLink(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction)
	If p_iTotalCount > 0 Then
		Dim LastPage
		LastPage = int( int(p_iTotalCount)/ int(p_iOnePageCount) )

		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
				LastPage = LastPage + 1
		End If
		
		If CLng(p_iPage) = CLng(LastPage) Then
			RW("<li><a style=""cursor:pointer;"" title=""마지막""><img src=""" & g_ImagePath & "/library/campus_common/2019_live/next_btn.gif"" alt="""" border=""0"" ></a></li>")
		Else
			RW("<a style=""cursor:pointer;"" title=""마지막"" onclick="""& p_ScriptFunction &"(" & LastPage & ");""><img src=""" & g_ImagePath & "/library/campus_common/2019_live/next_btn.gif"" alt="""" border=""0"" ></a>")
		End If
	End If
End Sub

' 이전
Sub AjaxPrevPageLink(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_sBgColor
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If
		
		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1

		If l_iStartPage = 1 Then
			RW("<li><a style=""cursor:pointer;"" title=""이전""><img src=""" & g_ImagePath & "/library/campus_common/2019_live/prev_btn.gif"" alt="""" border=""0"" ></a></li>")
		Else
			RW("<li><a style=""cursor:pointer;"" title=""이전"" onclick="""& p_ScriptFunction &"(" & (l_iStartPage-1) & ");""><img src=""" & g_ImagePath & "/library/campus_common/2019_live/prev_btn.gif"" alt="""" border=""0"" ></a></li>")
		End If
	End If
End Sub

' 다음
Sub AjaxNextPageLink(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_iLastPage, l_sBgColor
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If

		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1
		l_iLastPage = l_iStartPage + 10 - 1
		If l_iLastPage >= l_iPageCount Then
			l_iLastPage = l_iPageCount
		End If

		If l_iLastPage >= l_iPageCount Then
			RW("<li><a style=""cursor:pointer;"" title=""다음""><img src=""" & g_ImagePath & "/library/campus_common/2019_live/next_btn.gif"" alt="""" border=""0"" ></a></li>")
		Else
			RW("<a style=""cursor:pointer;"" title=""다음"" onclick="""& p_ScriptFunction &"(" & (l_iStartPage+10) & ");""><img src=""" & g_ImagePath & "/library/campus_common/2019_live/next_btn.gif"" alt="""" border=""0"" ></a>")
		End If
	End If
End Sub

' 페이지 이동
Sub AjaxGoToPageLink(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_iLastPage
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If

		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1
		l_iLastPage = l_iStartPage + 10 - 1

		If l_iLastPage >= l_iPageCount Then
			l_iLastPage = l_iPageCount
		End If

		For i = l_iStartPage to l_iLastPage
			If int(p_iPage) = i Then
				RW("<li><a style=""cursor:pointer;"" title=""현재 페이지""><span class=""num_on"">" & i & "</span></a></li>")
			Else
				RW("<li><a style=""cursor:pointer;"" onclick=""" & p_ScriptFunction & "(" & i & ");""><span class=""num_off"">" & i & "</span></a></li>")
			End If
		Next
	End If
End Sub



'------------------------------------------------------------------------------------------------------------
' 페이징 처리(ajax 리스트용 - 파라미터 포함)
' p_ParamString ex) "'freeboard', 'search', 'title'"
'------------------------------------------------------------------------------------------------------------
' 처음
Sub AjaxFirstPageLinkParam(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction, p_ParamString)
	If p_iTotalCount > 0 Then
		RW("<a style=""cursor:pointer;"" class=""first"" title=""처음"" onclick="""& p_ScriptFunction &"(1, "& p_ParamString &");"">처음</a>")
	Else
		RW("<a style=""cursor:pointer;"" class=""first"" title=""처음"">처음</a>")
	End If
End Sub

' 마지막
Sub AjaxLastPageLinkParam(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction, p_ParamString)
	If p_iTotalCount > 0 Then
		Dim LastPage
		LastPage = int( int(p_iTotalCount)/ int(p_iOnePageCount) )

		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
				LastPage = LastPage + 1
		End If
		
		If CLng(p_iPage) = CLng(LastPage) Then
			RW("<a style=""cursor:pointer;"" class=""last"" title=""마지막"">마지막</a>")
		Else
			RW("<a style=""cursor:pointer;"" class=""last"" title=""마지막"" onclick="""& p_ScriptFunction &"(" & LastPage & ", "& p_ParamString &");"">마지막</a>")
		End If
	End If
End Sub

' 이전
Sub AjaxPrevPageLinkParam(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction, p_ParamString)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_sBgColor
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If
		
		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1
		If l_iStartPage = 1 Then
			RW("<a style=""cursor:pointer;"" title=""이전""><img src=""http://img.megastudy.net/campus/library/v2015/library/image/mypage/list_arrow_p.png"" class='btn_page prev'></a>")
		Else
			RW("<a style=""cursor:pointer;"" title=""이전"" onclick="""& p_ScriptFunction &"(" & (l_iStartPage-1) & ", " & p_ParamString & ");""><img src=""http://img.megastudy.net/campus/library/v2015/library/image/mypage/list_arrow_p.png"" class='btn_page prev'></a>")

		End If
	End If
End Sub

' 다음
Sub AjaxNextPageLinkParam(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction, p_ParamString)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_iLastPage, l_sBgColor
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If

		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1
		l_iLastPage = l_iStartPage + 10 - 1
		If l_iLastPage >= l_iPageCount Then
			l_iLastPage = l_iPageCount
		End If

		If l_iLastPage >= l_iPageCount Then
			RW("<a style=""cursor:pointer;"" title=""다음""><img src=""http://img.megastudy.net/campus/library/v2015/library/image/mypage/list_arrow_f.png"" class='btn_page last' ></a>")
		Else
			RW("<a style=""cursor:pointer;"" title=""다음"" onclick="""& p_ScriptFunction &"(" & (l_iStartPage+10) & ", "& p_ParamString &");""><img src=""http://img.megastudy.net/campus/library/v2015/library/image/mypage/list_arrow_f.png"" class='btn_page last' ></a>")
		End If
	End If
End Sub

' 페이지 이동
Sub AjaxGoToPageLinkParam(p_iPage, p_iOnePageCount, p_iTotalCount, p_ScriptFunction, p_ParamString)
	If p_iTotalCount > 0 Then
		Dim i, l_iPageCount, l_iStartPage, l_iLastPage
		l_iPageCount = int(p_iTotalCount/ p_iOnePageCount)
		If (p_iTotalCount mod p_iOnePageCount) > 0  Then
			l_iPageCount = l_iPageCount + 1
		End If

		l_iStartPage = int((p_iPage - 1) / 10) * 10 + 1
		l_iLastPage = l_iStartPage + 10 - 1

		If l_iLastPage >= l_iPageCount Then
			l_iLastPage = l_iPageCount
		End If

		For i = l_iStartPage to l_iLastPage
			If int(p_iPage) = i Then
				RW("<a style=""cursor:pointer;"" class='btn_pageNum current' title=""현재 페이지""><span>" & i & "</span></a>")
			Else
				RW("<a style=""cursor:pointer;"" class='btn_pageNum' onclick=""" & p_ScriptFunction & "(" & i & ", " & p_ParamString &");""><span>" & i & "</span></a>")
			End If
		Next
	End If
End Sub


' 이벤트 페이징(ajax 리스트용)
Sub CreateAjaxListPagingEvent(pNowPage, pPageSize, pTotalCount, pFunctionName)
	RW("<ul class=""pagelist_num"">")
	If pTotalCount > 0 Then
'		Call AjaxFirstPageLink(pNowPage, pPageSize, pTotalCount, pFunctionName)
		Call AjaxPrevPageLink(pNowPage, pPageSize, pTotalCount, pFunctionName)
		Call AjaxGoToPageLink(pNowPage, pPageSize, pTotalCount, pFunctionName)
		Call AjaxNextPageLink(pNowPage, pPageSize, pTotalCount, pFunctionName)
'		Call AjaxLastPageLink(pNowPage, pPageSize, pTotalCount, pFunctionName)
	End If
	RW("</ul>")
End Sub

' 페이징(ajax 리스트용)
Sub CreateAjaxListPagingParam(pNowPage, pPageSize, pTotalCount, pFunctionName, pParamString)
	RW("<div class=""board_list_paging_01"">")
	If pTotalCount > 0 Then
'		Call AjaxFirstPageLinkParam(pNowPage, pPageSize, pTotalCount, pFunctionName, pParamString)
		Call AjaxPrevPageLinkParam(pNowPage, pPageSize, pTotalCount, pFunctionName, pParamString)
		Call AjaxGoToPageLinkParam(pNowPage, pPageSize, pTotalCount, pFunctionName, pParamString)
		Call AjaxNextPageLinkParam(pNowPage, pPageSize, pTotalCount, pFunctionName, pParamString)
'		Call AjaxLastPageLinkParam(pNowPage, pPageSize, pTotalCount, pFunctionName, pParamString)
	End If
	RW("</div>")
End Sub

'------------------------------------------------------------------------------------------------------------
' 공통 아이콘 & 버튼 표시
'------------------------------------------------------------------------------------------------------------
' 새글 아이콘 표시
Sub CreateBoardNewIcon(pRegDate, pCheckDay)
	If DateDiff("d", pRegDate, Date()) < pCheckDay Then
		RW("<span class=""new"">새글</span>")
	End If
End Sub

' 게시판 종류 아이콘 표시
Sub CreateBoardTypeIcon(pClass, pTitle)
	RW("<strong class=""" & pClass & """>" & pTitle & "</strong>")
End Sub

' 게시물 복사 버튼
Sub CopyURLButton()
	RW("<button type=""button"" class=""btnImg btnAddCopy"" title=""글 주소 복사하기"" onclick=""copyURL()"">주소복사</button>")
End Sub

' 페이스북, 트위터 퍼가기 버튼'
Sub ShareSNSButton()
	RW("<button type=""button"" class=""btnImg btnFb"" title=""페이스북으로 퍼가기"" onclick=""shareFacebook()"">페이스북</button> ")
	RW("<button type=""button"" class=""btnImg btnTw"" title=""트위터로 퍼가기"" onclick=""shareTwitter()"">트위터</button>")
End Sub



'------------------------------------------------------------------------------------------------------------
' 사용자 정보
'------------------------------------------------------------------------------------------------------------
' 레벨에 따른 계급 표시
Sub CreateGameLevelName(pLevel)
	RW("<span class=""userClass lv" & Right("0" & CInt(pLevel), 2) & """>" & g_gameLevelName(pLevel) & "</span>")
End Sub



'------------------------------------------------------------------------------------------------------------
' 랭킹
'------------------------------------------------------------------------------------------------------------
' 순위 변동 표시
Sub CreateRankUpDownIcon(pRankUpDown)
	If pRankUpDown = "" Or pRankUpDown = "0" Or isNull(pRankUpDown) Or Not isNumeric(pRankUpDown) Then
		RW("-")
	Else
		If pRankUpDown > 0 Then
			RW("(<span title=""상승"">▲</span> +" & pRankUpDown & ")")
		ElseIf pRankUpDown < 0 Then
			RW("(<span title=""하락"">▼</span> " & pRankUpDown & ")")
		Else
			RW("(<span title=""변동 없음""> - </span>)")
		End If
	End If
End Sub

' 탑 10, 100, 1000표시
Sub CreateTopRankIcon(pRank)
	If isNumeric(pRank) Then
		If pRank > 0 And pRank <= 10 Then
			RW("<strong class=""top10"">top10</strong>")
		ElseIf pRank > 10 And pRank <= 100 Then
			RW("<strong class=""top100"">top100</strong>")
		ElseIf pRank > 100 And pRank <= 1000 Then
			RW("<strong class=""top1000"">top1000</strong>")
		End If
	End If
End Sub

' 추천 검색어 표시
Sub CreateRecomSearchWord()
	Dim i
	If isArray(g_SearchWordList) Then
		For i = 0 To UBound(g_SearchWordList)
			If i > 0 Then RW(", ") End If
			RW("<a href=""/search/all.asp?s=" & Server.URLEncode(g_SearchWordList(i)) & """>" & g_SearchWordList(i) & "</a>")
		Next
	End If
End Sub



'------------------------------------------------------------------------------------------------------------
' 배너 링크별 스크립트 생성
'------------------------------------------------------------------------------------------------------------
Sub CreateBannerImageLink(pLinkType, pLinkURL, pImageUrl, pImageTitle)
	Select Case pLinkType
		Case BANNER_LINK_TYPE_NONE
			RW("<img src=""" & pImageUrl & """ alt=""" & pImageTitle & """ />")

		Case BANNER_LINK_TYPE_PAGEGO
			RW("<a href=""" & pLinkURL & """ target=""_top""><img src=""" & pImageUrl & """ alt=""" & pImageTitle & """ /></a>")

		Case BANNER_LINK_TYPE_NEWWIN
			RW("<a href=""" & pLinkURL & """ target=""_blank""><img src=""" & pImageUrl & """ alt=""" & pImageTitle & """ /></a>")

		Case BANNER_LINK_TYPE_SCRIPT
			RW("<span onclick=""" & pLinkURL & """ style=""cursor:pointer""><img src=""" & pImageUrl & """ alt=""" & pImageTitle & """ /></span>")
	End Select
End Sub



'------------------------------------------------------------------------------------------------------------
' 상점
'------------------------------------------------------------------------------------------------------------
' 판매 기간 표시
Sub GetSalesPeriodText(pStardDate, pEndDate, pEventType)
	If pEventType<>1 Then
		If isDate(pStardDate) Then
			RW(Month(pStardDate) & "월 " & Day(pStardDate) & "일 " & Hour(pStardDate) & "시")
		End If

		RW(" ~ ")

		If isDate(pEndDate) Then
			RW(Month(pEndDate) & "월 " & Day(pEndDate) & "일 " & Hour(pEndDate) & "시")
		End If
	Else
		RW("상시판매")
	End If
End Sub

' 가격 표시 - 할인율, 원가, 판매가, 결제종류
Sub CreateShopSalePriceBox(pDC, pPrice, pPay, pPayType)
	Dim strCurrencyType
	Select Case pPayType
		Case SHOP_PAY_TYPE_GOLD 
			strCurrencyType = "G"
		Case SHOP_PAY_TYPE_MILEAGE
			strCurrencyType = "M"
		Case SHOP_PAY_TYPE_PESO
			strCurrencyType = "P"
	End Select

	If pDC > 0 Then
		RW("<div class=""discount"">" & pDC & "<span>%</span></div>")
	End If

	RW("<div class=""price"">")

	If pPrice = pPay Then
		RW("<p class=""sale"">판매가 : <strong class=""fcRed"">" & FormatNumber(pPay, 0) & " " & strCurrencyType & "</strong></p>")
	Else
		RW("<del class=""original"">" & FormatNumber(pPrice, 0) & " " & strCurrencyType & "</del>")
		RW("<p class=""sale"">특별가 : <strong class=""fcRed"">" & FormatNumber(pPay, 0) & " " & strCurrencyType & "</strong></p>")
	End If

	RW("</div>")
End Sub

' 띠지 표시
Sub CreateShopItemLabel(pData)
	Dim intBandNum, i
	intBandNum = InStr(strReverse(DecToBin(CLng(pData), 32)), "1")

	If intBandNum > 0 Then
		RW("<span class=""classify"">")
		RW("<img src=""" & g_URL_CDN_Front_Image & "shop/icon_classify_" & Right("0" & intBandNum, 2) & ".png"" />")
		RW("</span>")
	End If
End Sub
									

' 하단 태그 출력
Sub CreateShopItemTag(pDC, pMileage, pLevel)
	' 할인률
	If pDC > 0 Then
		RW("<span class=""orange"">" & pDC & "%할인</span> ")
	End If

	' 마일리지
	If pMileage > 0 Then
		RW("<span class=""green"">M" & pMileage & "%</span> ")
	End If

	' 계급제한
	If pLevel > 0 And pLevel < 54 Then
		RW("<span class=""red"">" & g_gameLevelName(pLevel) & "이상</span>")
	End IF
End Sub


' 상품 등급 표시
Function CreateGoodsGradeTypeTag(pGradeType)
	Dim strClass
	If pGradeType > 1 And pGradeType <= 4 Then
		Select Case pGradeType
			Case 2		' 레어
				strClass = "rare"
			Case 3		' 프리미엄
				strClass = "premium"
			Case 4		' 유니크
				strClass = "unique"
			Case 5		' 아이돌
				strClass = "idol"
		End Select

		RW("<span class=""charType " & strClass & """>" & g_Shop_GoodsGrade(pGradeType) & " 용병</span>")
	End If
End Function



'------------------------------------------------------------------------------------------------------------
' 관리자페이지용
'------------------------------------------------------------------------------------------------------------
' 공개/비공개 변경 select 박스
Sub CreateDisplaySelectBox(pDisplayYN, pScriptFunc)
	RW("<select name='displayYN' onchange='" & pScriptFunc & "'>")
	RW("<option value='" & YN_Y & "' " & CreateOptionSelected(YN_Y, pDisplayYN) & ">" &GetDisplayYNText(YN_Y) & "</option>")
	RW("<option value='" & YN_N & "' " & CreateOptionSelected(YN_N, pDisplayYN) & ">" &GetDisplayYNText(YN_N) & "</option>")
	RW("</select>")
End Sub

%>