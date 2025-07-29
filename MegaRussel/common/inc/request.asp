<%

'======================================================================================================================
' Request나 변수값 유효성 검사
'======================================================================================================================

'------------------------------------------------------------------------------------------------------------
' * Request 문자형 입력값 받기
' RequestName : 파라미터명
' MinLength : 최소 길이
' MaxLength : 최대 길이
' IsRequired : 필수값인지 체크 : True, False
' DefaultValue : 해당 내용이 없으면 기본값
'------------------------------------------------------------------------------------------------------------
Function RFStr(RequestName, MinLength, MaxLength, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Request(RequestName)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "[" & RequestName & "] 필수 항목의 입력값이 없습니다."
		Else
			strValue = DefaultValue
		End If
	Else
		strValue = CStr(strValue)
	End If

	If Not (IsNull(strValue) Or IsEmpty(strValue) Or strValue = "") And errorMsg = "" Then
		' 최소 길이 체크
		If IsNumeric(MinLength) Then
			If Len(strValue) < MinLength Then
				errorMsg = "[" & RequestName & ":" & strValue & "<" & MinLength & "] 입력값이 최소 길이보다 작습니다."
			End If
		End If

		' 최대 길이 체크
		If IsNumeric(MaxLength) Then
			If Len(strValue) > MaxLength Then
				errorMsg = "[" & RequestName & ":" & strValue & "<" & MaxLength & "] 입력값이 최대 길이보다 큽니다."
			End If
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	RFStr = strValue
End Function

'------------------------------------------------------------------------------------------------------------
' * Request 문자형 입력값 받기
' RequestName : 파라미터명
' MinLength : 최소 길이
' MaxLength : 최대 길이
' IsRequired : 필수값인지 체크 : True, False
' DefaultValue : 해당 내용이 없으면 기본값
'------------------------------------------------------------------------------------------------------------
Function RFStrDeleteScript(RequestName, MinLength, MaxLength, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Request(RequestName)
	strValue = deleteSearchBlockScript(strValue)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "[" & RequestName & "] 필수 항목의 입력값이 없습니다."
		Else
			strValue = DefaultValue
		End If
	Else
		strValue = CStr(strValue)
	End If

	If Not (IsNull(strValue) Or IsEmpty(strValue) Or strValue = "") And errorMsg = "" Then
		' 최소 길이 체크
		If IsNumeric(MinLength) Then
			If Len(strValue) < MinLength Then
				errorMsg = "[" & RequestName & ":" & strValue & "<" & MinLength & "] 입력값이 최소 길이보다 작습니다."
			End If
		End If

		' 최대 길이 체크
		If IsNumeric(MaxLength) Then
			If Len(strValue) > MaxLength Then
				errorMsg = "[" & RequestName & ":" & strValue & "<" & MaxLength & "] 입력값이 최대 길이보다 큽니다."
			End If
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	RFStrDeleteScript = strValue
End Function

' 값 필수일때
Function RFStrReq(RequestName, MinLength, MaxLength)
	RFStrReq = RFStr(RequestName, MinLength, MaxLength, True, Null)
End Function

' 값 선택일때
Function RFStrOpt(RequestName, MinLength, MaxLength, DefaultValue)
	RFStrOpt = RFStr(RequestName, MinLength, MaxLength, False, DefaultValue)
End Function

' 값 필수일때_금지된 태그 처리
Function RFStrReqDeleteScript(RequestName, MinLength, MaxLength)
	RFStrReqDeleteScript = RFStrDeleteScript(RequestName, MinLength, MaxLength, True, Null)
End Function

' 값 선택일때_금지된 태그 처리
Function RFStrOptDeleteScript(RequestName, MinLength, MaxLength, DefaultValue)
	RFStrOptDeleteScript = RFStrDeleteScript(RequestName, MinLength, MaxLength, False, DefaultValue)
End Function


'------------------------------------------------------------------------------------------------------------
' * Request 숫자 입력값 받기
' RequestName : 파라미터명
' NumberType : 숫자형변환(디폴트는 int) - 숫자형이 지정된 경우 해당형으로 변환(int, long, single, double, currency )
' MinLength : 최소값
' MaxLength : 최대값
' IsRequired : 필수값인지 체크 : True, False
' DefaultValue : 해당 내용이 없으면 기본값
'------------------------------------------------------------------------------------------------------------
Function RFNum(RequestName, NumberType, MinValue, MaxValue, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Request(RequestName)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "[" & RequestName & "] 필수 항목의 입력값이 없습니다."
		Else
			If IsNumeric(DefaultValue) Or isNull(DefaultValue) Then
				strValue = DefaultValue
			Else
				errorMsg = "[" & RequestName & ":" & strValue & "] 숫자형 변수에 숫자가 아닌 문자가 기본값에 배정되었습니다."
			End If
		End If
	Else
		If Not IsNumeric(strValue) Then
			errorMsg = "[" & RequestName & ":" & strValue & "] 입력값에 숫자가 아닌 문자가 사용되었습니다."
		End If
	End If

	If IsNumeric(strValue) And errorMsg = "" Then
		On Error Resume Next
		' 형변환
		Select Case LCase(NumberType)
			Case "long"
				strValue = CLng(strValue)
			Case "single"
				strValue = CSng(strValue)
			Case "double"
				strValue = CDbl(strValue)
			Case "currency"
				strValue = CCur(strValue)
			Case Else
				strValue = CInt(strValue)
		End Select

		' 최소값 체크
		If IsNumeric(MinValue) Then
			If strValue < MinValue Then
				errorMsg = "[" & RequestName & ":" & strValue & "] 입력값이 제한된 범위를 벗어납니다.(미만)"
			End If
		End If

		' 최대값 체크
		If IsNumeric(MaxValue) Then
			If strValue > MaxValue Then
				errorMsg = "[" & RequestName & ":" & strValue & "] 입력값이 제한된 범위를 벗어납니다.(초과)"
			End If
		End If

		If Err.Number <> 0 Then
			errorMsg = Err.Description
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	RFNum = strValue
End Function

Function RFNumDeleteScript(RequestName, NumberType, MinValue, MaxValue, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Request(RequestName)
	strValue = deleteSearchBlockScript(strValue)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "[" & RequestName & "] 필수 항목의 입력값이 없습니다."
		Else
			If IsNumeric(DefaultValue) Or isNull(DefaultValue) Then
				strValue = DefaultValue
			Else
				errorMsg = "[" & RequestName & ":" & strValue & "] 숫자형 변수에 숫자가 아닌 문자가 기본값에 배정되었습니다."
			End If
		End If
	Else
		If Not IsNumeric(strValue) Then
			errorMsg = "[" & RequestName & ":" & strValue & "] 입력값에 숫자가 아닌 문자가 사용되었습니다."
		End If
	End If

	If IsNumeric(strValue) And errorMsg = "" Then
		On Error Resume Next
		' 형변환
		Select Case LCase(NumberType)
			Case "long"
				strValue = CLng(strValue)
			Case "single"
				strValue = CSng(strValue)
			Case "double"
				strValue = CDbl(strValue)
			Case "currency"
				strValue = CCur(strValue)
			Case Else
				strValue = CInt(strValue)
		End Select

		' 최소값 체크
		If IsNumeric(MinValue) Then
			If strValue < MinValue Then
				errorMsg = "[" & RequestName & ":" & strValue & "] 입력값이 제한된 범위를 벗어납니다.(미만)"
			End If
		End If

		' 최대값 체크
		If IsNumeric(MaxValue) Then
			If strValue > MaxValue Then
				errorMsg = "[" & RequestName & ":" & strValue & "] 입력값이 제한된 범위를 벗어납니다.(초과)"
			End If
		End If

		If Err.Number <> 0 Then
			errorMsg = Err.Description
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	RFNumDeleteScript = strValue
End Function

' 값 필수일때 - long형으로 받음
Function RFNumReq(RequestName, MinValue, MaxValue)
	RFNumReq = RFNum(RequestName, "long", MinValue, MaxValue, True, Null)
End Function

' 값 선택일때 - long형으로 받음
Function RFNumOpt(RequestName, MinValue, MaxValue, DefaultValue)
	RFNumOpt = RFNum(RequestName, "long", MinValue, MaxValue, False, DefaultValue)
End Function

' 값 필수일때 - long형으로 받음_금지된 태그 처리
Function RFNumReqDeleteScript(RequestName, MinValue, MaxValue)
	RFNumReqDeleteScript = RFNumDeleteScript(RequestName, "long", MinValue, MaxValue, True, Null)
End Function

' 값 선택일때 - long형으로 받음_금지된 태그 처리
Function RFNumOptDeleteScript(RequestName, MinValue, MaxValue, DefaultValue)
	RFNumOptDeleteScript = RFNumDeleteScript(RequestName, "long", MinValue, MaxValue, False, DefaultValue)
End Function



'------------------------------------------------------------------------------------------------------------
' * Request 정규식형 입력값 받기
' RequestName : 파라미터명
' PatternString : 적용할 정규식
' IsRequired : 필수값인지 체크 : True, False
' DefaultValue : 해당 내용이 없으면 기본값
'------------------------------------------------------------------------------------------------------------
Function RFRegExp(RequestName, PatternString, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Request(RequestName)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "[" & RequestName & "] 필수 항목의 입력값이 없습니다."
		Else
			strValue = CStr(DefaultValue)
		End If
	Else
		strValue = CStr(strValue)
	End If

	If strValue <> "" And errorMsg = "" Then
		' 정규식 비교
		If Not RegExpTest(PatternString, strValue) Then
			errorMsg = "입력값의 형식이 일치하지 않습니다."
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	RFRegExp = strValue
End Function



'------------------------------------------------------------------------------------------------------------
' * Value 문자형 입력값 체크
' RequestValue : 파라미터값
' MinLength : 최소 길이
' MaxLength : 최대 길이
' IsRequired : 필수값인지 체크 : True, False
' DefaultValue : 해당 내용이 없으면 기본값
'------------------------------------------------------------------------------------------------------------
Function UFStr(RequestValue, MinLength, MaxLength, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Trim(RequestValue)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "필수 항목의 입력값이 없습니다."
		Else
			strValue = DefaultValue
		End If
	Else
		strValue = CStr(strValue)
	End If

	If Not(IsNull(strValue) Or IsEmpty(strValue) Or strValue = "") And errorMsg = "" Then
		' 최소 길이 체크
		If IsNumeric(MinLength) Then
			If Len(strValue) < MinLength Then
'				errorMsg = "[" & strValue & "] 입력값이 최소 길이(" & MinLength & ")보다 작습니다."
				errorMsg = "입력값이 최소 길이(" & MinLength & ")보다 작습니다."
			End If
		End If

		' 최대 길이 체크
		If IsNumeric(MaxLength) Then
			If Len(strValue) > MaxLength Then
				errorMsg = "[" & strValue & "] 입력값이 최대 길이(" & MaxLength & ")보다 큽니다."
			End If
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	UFStr = strValue
End Function

'------------------------------------------------------------------------------------------------------------
' * Value 문자형 입력값 체크
' RequestValue : 파라미터값
' MinLength : 최소 길이
' MaxLength : 최대 길이
' IsRequired : 필수값인지 체크 : True, False
' DefaultValue : 해당 내용이 없으면 기본값
'------------------------------------------------------------------------------------------------------------
Function UFStrDeleteScript(RequestValue, MinLength, MaxLength, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Trim(RequestValue)
	strValue = deleteSearchBlockScript(strValue)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "필수 항목의 입력값이 없습니다."
		Else
			strValue = DefaultValue
		End If
	Else
		strValue = CStr(strValue)
	End If

	If Not(IsNull(strValue) Or IsEmpty(strValue) Or strValue = "") And errorMsg = "" Then
		' 최소 길이 체크
		If IsNumeric(MinLength) Then
			If Len(strValue) < MinLength Then
				errorMsg = "[" & strValue & "] 입력값이 최소 길이(" & MinLength & ")보다 작습니다."
			End If
		End If

		' 최대 길이 체크
		If IsNumeric(MaxLength) Then
			If Len(strValue) > MaxLength Then
				errorMsg = "[" & strValue & "] 입력값이 최대 길이(" & MaxLength & ")보다 큽니다."
			End If
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	UFStrDeleteScript = strValue
End Function

' 값 필수일때
Function UFStrReq(RequestValue, MinLength, MaxLength)
	UFStrReq = UFStr(RequestValue, MinLength, MaxLength, True, Null)
End Function

' 값 선택일때
Function UFStrOpt(RequestValue, MinLength, MaxLength, DefaultValue)
	UFStrOpt = UFStr(RequestValue, MinLength, MaxLength, False, DefaultValue)
End Function

' 값 필수일때_금지된 태그 처리
Function UFStrReqDeleteScript(RequestValue, MinLength, MaxLength)
	UFStrReqDeleteScript = UFStrDeleteScript(RequestValue, MinLength, MaxLength, True, Null)
End Function

' 값 선택일때_금지된 태그 처리
Function UFStrOptDeleteScript(RequestValue, MinLength, MaxLength, DefaultValue)
	UFStrOptDeleteScript = UFStrDeleteScript(RequestValue, MinLength, MaxLength, False, DefaultValue)
End Function



'------------------------------------------------------------------------------------------------------------
' * Value 숫자 입력값 체크
' RequestValue : 파라미터값
' NumberType : 숫자형변환(디폴트는 int) - 숫자형이 지정된 경우 해당형으로 변환(int, long, single, double, currency )
' MinLength : 최소값
' MaxLength : 최대값
' IsRequired : 필수값인지 체크 : True, False
' DefaultValue : 해당 내용이 없으면 기본값
'------------------------------------------------------------------------------------------------------------
Function UFNum(RequestValue, NumberType, MinValue, MaxValue, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Trim(RequestValue)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "필수 항목의 입력값이 없습니다."
		Else
			If IsNumeric(DefaultValue) Or isNull(DefaultValue) Then
				strValue = DefaultValue
			Else
				errorMsg = "[" & RequestValue & ":" & strValue & "] 숫자형 변수에 숫자가 아닌 문자가 기본값에 배정되었습니다."
			End If
		End If
	Else
		If Not IsNumeric(strValue) Then
			errorMsg = "[" & RequestValue & ":" & strValue & "] 입력값에 숫자가 아닌 문자가 사용되었습니다."
		End If
	End If

	If IsNumeric(strValue) And errorMsg = "" Then
		On Error Resume Next
		' 형변환
		Select Case LCase(NumberType)
			Case "long"
				strValue = CLng(strValue)
			Case "single"
				strValue = CSng(strValue)
			Case "double"
				strValue = CDbl(strValue)
			Case "currency"
				strValue = CCur(strValue)
			Case Else
				strValue = CInt(strValue)
		End Select

		' 최소값 체크
		If IsNumeric(MinValue) Then
			If strValue < MinValue Then
				errorMsg = "[" & RequestValue & ":" & strValue & "] 입력값이 제한된 범위를 벗어납니다.(미만)"
			End If
		End If

		' 최대값 체크
		If IsNumeric(MaxValue) Then
			If strValue > MaxValue Then
				errorMsg = "[" & RequestValue & ":" & strValue & "] 입력값이 제한된 범위를 벗어납니다.(초과)"
			End If
		End If

		If Err.Number <> 0 Then
			errorMsg = Err.Description
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	UFNum = strValue
End Function

' 값 필수일때 - Int형으로 받음
Function UFNumReq(RequestValue, MinValue, MaxValue)
	UFNumReq = UFNum(RequestValue, "int", MinValue, MaxValue, True, Null)
End Function

' 값 선택일때 - Int형으로 받음
Function UFNumOpt(RequestValue, MinValue, MaxValue, DefaultValue)
	UFNumOpt = UFNum(RequestValue, "int", MinValue, MaxValue, False, DefaultValue)
End Function



'------------------------------------------------------------------------------------------------------------
' * Value 정규식형 입력값 체크
' RequestValue : 파라미터명
' PatternString : 적용할 정규식
' IsRequired : 필수값인지 체크 : True, False
' DefaultValue : 해당 내용이 없으면 기본값
'------------------------------------------------------------------------------------------------------------
Function UFRegExp(RequestValue, PatternString, IsRequired, DefaultValue)
	Dim strValue	' 최종 반환값
	Dim objRegExp	' 정규식
	Dim errorMsg	' 체크에 통과 못했을 경우 반환 메세지

	strValue = Trim(RequestValue)

	If IsNull(strValue) Or IsEmpty(strValue) Or strValue = "" Then
		' 필수 항목인 경우
		If IsRequired Then
			errorMsg = "[" & RequestValue & "] 필수 항목의 입력값이 없습니다."
		Else
			strValue = CStr(DefaultValue)
		End If
	Else
		strValue = CStr(strValue)
	End If

	If strValue <> "" And errorMsg = "" Then
		' 정규식 비교
		If Not RegExpTest(PatternString, strValue) Then
			errorMsg = "[" & RequestValue & "] 입력값의 형식이 일치하지 않습니다."
		End If
	End If

	If errorMsg <> "" Then
		RW(errorMsg)
		Response.End
	End If

	UFRegExp = strValue
End Function
%>