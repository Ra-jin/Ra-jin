<%

'======================================================================================================================
' 기타 함수
'======================================================================================================================

'------------------------------------------------------------------------------------------------------------
' Response.Write
'------------------------------------------------------------------------------------------------------------
Sub RW(pStr)
	Response.Write pStr
End Sub

' BR 추가
Sub RWBR(pStr)
	Response.Write pStr & "<br />" & vbCRLF
End Sub

' 출력후 Response.End
Sub RWEND(pStr)
	Response.Write pStr
	Response.End
End Sub

'------------------------------------------------------------------------------------------------------------
' 배열에서 비교값이 있는지 체크
'------------------------------------------------------------------------------------------------------------
Function CheckArrayValue(pArray, pValue)
	Dim bolTF, i
	bolTF = False

	If isArray(pArray) And Not IsEmpty(pValue) Then
		For i = 0 To UBound(pArray)
			If CStr(pArray(i)) = CStr(pValue) Then
				bolTF = True
				Exit For
			End If
		Next
	End If

	CheckArrayValue = bolTF
End Function


' 블라인드 처리 계정인지 확인
Function CheckBlindUId()
	Dim strBlindReturn : strBlindReturn = False 
	Dim intBlindi
	If gLoginOk = True Then
		For intBlindi = 0 To UBound(g_Blind_Uid)

			If gLoginMemId = g_Blind_Uid(intBlindi) Then
				strBlindReturn = True
				Exit For
			End If
		Next
	Else
		strBlindReturn = False
	End If
	CheckBlindUId = strBlindReturn
End Function


'------------------------------------------------------------------------------------------------------------
' Byte 계산 - 특수문자는 2Byte로 고정
'------------------------------------------------------------------------------------------------------------
Function GetByteLength(pStr)
	Dim char, utf8, ccount, i
	If pStr = "" Or IsNull(pStr) Or IsEmpty(pStr) Then
		ccount = 0
	Else
		For i = 1 To Len(pStr)
			char = Server.URLEncode(Mid(pStr, i, 1))

			If inStr(char, "%") > 0 Then
				utf8 = CInt("&H" & Mid(char, 2, 2))
				If Utf8<128 Then 
					ccount = ccount + 1
				Else 
					ccount = ccount + 2
				End If 
			Else
				ccount = ccount + 1
			End If
		Next
	End If
	GetByteLength = ccount
End Function

'------------------------------------------------------------------------------------------------------------
' 금지어 처리
'------------------------------------------------------------------------------------------------------------
' 게시판&댓글 입력시 금지어 수정
Function ReplaceBadWord(pCheckString, pReplaceString)
	ReplaceBadWord = ReplaceFilterWord(pCheckString, g_BoardFilterWord, pReplaceString)
End Function

'------------------------------------------------------------------------------------------------------------
' 필터링
'------------------------------------------------------------------------------------------------------------
' 단어 변환
Function ReplaceFilterWord(pValue, pCheckWords, pReplaceChar)
	Dim arrWords, i, j, tmpStar
	arrWords = Split(pCheckWords, ",")
	For i=0 To UBound(arrWords)
		If InStr(pValue, arrWords(i)) > 0 Then
			If Len(arrWords(i)) = 1 Then
				pValue = Replace(pValue, arrWords(i), pReplaceChar)
			Else
				For j=1 To Len(arrWords(i))
					tmpStar = tmpStar & pReplaceChar
				Next
				pValue = Replace(pValue, arrWords(i), tmpStar)
			End If
		End If
	Next
	ReplaceFilterWord = pValue
End Function

'------------------------------------------------------------------------------------------------------------
' 쿠키 처리
'------------------------------------------------------------------------------------------------------------
' 쿠키 가져오기
Function GetCookie(pCookieName)
	GetCookie = Request.Cookies(pCookieName)
End Function

' 쿠키 세팅
Sub SetCookie(pCookieName, pCookieValue, pExpiresDate)
	Response.Cookies(pCookieName) = pCookieValue
	If isDate(pExpiresDate) Then
		Response.Cookies(pCookieName).expires = pExpiresDate
	End If
End Sub

' 쿠키 삭제
Sub ClearCookie(pCookieName)
	Response.Cookies(pCookieName) = ""
	Response.Cookies(pCookieName).expires = DateAdd("d", -1, Now())
End Sub

'------------------------------------------------------------------------------------------------------------
' 브라우저 정보
'------------------------------------------------------------------------------------------------------------
Function BrowserCheck()
	If InStr(Request.ServerVariables("HTTP_USER_AGENT"), "MSIE 5.0") >  0 Then
		BrowserCheck = "Explorer 5.0"
	ElseIf InStr(Request.ServerVariables("HTTP_USER_AGENT"), "MSIE 6.0") >  0 Then
		BrowserCheck =  "Explorer 6.0"
	ElseIf InStr(Request.ServerVariables("HTTP_USER_AGENT"), "MSIE 7.0") >  0 Then
		BrowserCheck =  "Explorer 7.0"
	ElseIf InStr(Request.ServerVariables("HTTP_USER_AGENT"), "MSIE 8.0") >  0 Then
		BrowserCheck =  "Explorer 8.0"
	ElseIf InStr(Request.ServerVariables("HTTP_USER_AGENT"), "MSIE 9.0") >  0 Then
		BrowserCheck =  "Explorer 9.0"
	ElseIf InStr(Request.ServerVariables("HTTP_USER_AGENT"), "MSIE 10.0") >  0 Then
		BrowserCheck =  "Explorer 10.0"
	ElseIf InStr(Request.ServerVariables("HTTP_USER_AGENT"), "Safari") >  0 Then
		BrowserCheck =  "Safari"
	ElseIf InStr(Request.ServerVariables("HTTP_USER_AGENT"), "Firefox") >  0 Then
		BrowserCheck =  "Firefox"
	Else
		BrowserCheck = Request.ServerVariables("HTTP_USER_AGENT")
	End If
End Function
%>
