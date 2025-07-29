<%
'======================================================================================================================
' DB 관련
'======================================================================================================================

'------------------------------------------------------------------------------------------------------------
' Database 연결 & 종료
' objC : 컨넥션
'------------------------------------------------------------------------------------------------------------
Function DBOpen(strDBName)
	on Error resume next
	Dim arrDB, l_con, l_str
	Dim inta

	arrDB = g_DB_ConnectData(strDBName)

	If isArray(arrDB) Then
		l_str = l_str & "Provider=SQLOLEDB.1;"
		l_str = l_str & "Persist Security Info=True;"
		l_str = l_str & "Data Source=" & arrDB(0) & ";"
		l_str = l_str & "Initial Catalog=" & arrDB(1) & ";"
		l_str = l_str & "User ID=" & arrDB(2) & ";"
		l_str = l_str & "Password=" & arrDB(3) & ";"
	End If

	Set l_con = Server.CreateObject("ADODB.Connection")
'	l_con.CursorLocation = adUseClient
'	l_con.ConnectionTimeout = 15
	l_con.Open l_str

	If l_con.Errors.Count > 0 Then
		For inta = 0 To l_con.Errors.Count - 1
'			RW(strDBName & " : DB Connection ERROR")
			RW(l_con.Errors(inta).Description & "<BR>")
		Next 
		Response.End
	End If 

	Set DBOpen = l_con
End Function

Sub DBConnClose(objC)
	Dim objCTemp
	Set objCTemp = objC
	If objCTemp.State = adStateOpen Then
		objCTemp.close
		Set objCTemp = Nothing
	End If
End Sub



'------------------------------------------------------------------------------------------------------------
' 파라미터가 숫자형인지 체크
'------------------------------------------------------------------------------------------------------------
Function CheckNumberParameter(pType)
	Select Case pType
		Case adTinyInt, adSmallInt, adInteger, adBigInt, adCurrency, adSingle, adDouble
			CheckNumberParameter = True
		Case Else
			CheckNumberParameter = False
	End Select
End Function



'------------------------------------------------------------------------------------------------------------
' 프로시져 실행
' objCon : 컨넥션
' procName : 프로시져명
' args : 전달 데이타(배열)
' outargs : output 데이타(배열)
' returnType : return 값 변수형
' returnValue : 
'------------------------------------------------------------------------------------------------------------
' 프로시져 실행 : 반환 없음
Function RunProcedure(objCon, procName, args)
	Dim objCmd
	Dim i

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		.Execute,,adExecuteNoRecords
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : 레코드셋 반환
Function RunProcedureRS(objCon, procName, args)
	Dim objCmd
	Dim i

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		Set RunProcedureRS = .Execute
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : 반환 데이터가 있는지 여부에 따라 True, False 반환
Function RunProcedureTF(objCon, procName, args)
	Dim rs

	Set rs = RunProcedureRS(objCon, procName, args)
	
	If Not rs.EOF Then
		RunProcedureTF = True
	Else
		RunProcedureTF = False
	End If
	
	rs.close()
	Set rs = Nothing
End Function


' 프로시져 실행 : 배열형으로 반환
Function RunProcedureRows(objCon, procName, args)
	Dim rs

	Set rs = RunProcedureRS(objCon, procName, args)
	
	If Not rs.EOF Then
		RunProcedureRows = rs.GetRows()
	Else
		RunProcedureRows = Null
	End If
	
	rs.close()
	Set rs = Nothing
End Function


' 프로시져 실행 : 배열+DIC 형태로 반환(최대 1000행)
Function RunProcedureRowsDic(objCon, procName, args)
	Dim rs, aryTmp, aryRtn(1000), objDic
	Dim i, j

	Set rs = RunProcedureRS(objCon, procName, args)
	
	If Not rs.EOF Then
		i = 0

		Do While Not rs.EOF
			Set objDic = Server.CreateObject("Scripting.Dictionary")
				
				For j=0 To rs.Fields.count-1
					objDic.Add rs.Fields(j).name, rs.Fields(j).value
				Next
				Set aryRtn(i) = objDic
				
			Set objDic = Nothing
			
			i = i + 1
			rs.movenext
		Loop
		
		ReDim aryTmp(i-1)

		For i=0 To UBound(aryTmp)
			Set aryTmp(i) = aryRtn(i)
		Next

		RunProcedureRowsDic = aryTmp
	Else
		RunProcedureRowsDic = Null
	End If
	
	rs.close()
	Set rs = Nothing
End Function


' 프로시져 실행 : String형으로 반환
Function RunProcedureString(objCon, procName, args)
	Dim rs

	Set rs = RunProcedureRS(objCon, procName, args)
	
	If Not rs.EOF Then
		Dim tempString
		tempString = Trim(rs.GetString())
		' 마지막 엔터는 삭제 처리
		If Right(tempString, 1) = Chr(13) Then
			tempString = Left(tempString, Len(tempString)-1)
		End If
		RunProcedureString = tempString
	Else
		RunProcedureString = ""
	End If
	
	rs.close()
	Set rs = Nothing
End Function


' 프로시져 실행 : Output 반환
Function RunProcedureOutput(objCon, procName, args, outargs)
	Dim objCmd
	Dim i

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		If IsArray(outargs) Then
			For i=0 To UBound(outargs)
				If CheckNumberParameter(outargs(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & outargs(i)(0), outargs(i)(1), adParamOutput, 0)
				Else
					.Parameters.Append .CreateParameter("@" & outargs(i)(0), outargs(i)(1), adParamOutput, CDbl(outargs(i)(2)))
				End If
			Next
		End If

		.Execute,,adExecuteNoRecords

		If IsArray(outargs) Then
			For i=0 To UBound(outargs)
				outargs(i)(3) = .Parameters("@" & outargs(i)(0))
			Next
		End If
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : Return값 반환
Function RunProcedureReturn(objCon, procName, args)
	Dim objCmd
	Dim i

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		.Parameters.Append .CreateParameter("RETURN_VALUE", adInteger, adParamReturnValue)

		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		.Execute,,adExecuteNoRecords
		
		RunProcedureReturn = .Parameters("RETURN_VALUE")
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : Return값, Output 반환
Function RunProcedureReturnOutput(objCon, procName, args, outargs)
	Dim objCmd
	Dim i

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		.Parameters.Append .CreateParameter("RETURN_VALUE", adInteger, adParamReturnValue)
		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		If IsArray(outargs) Then
			For i=0 To UBound(outargs)
				If CheckNumberParameter(outargs(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & outargs(i)(0), outargs(i)(1), adParamOutput)
				Else
					.Parameters.Append .CreateParameter("@" & outargs(i)(0), outargs(i)(1), adParamOutput, CDbl(outargs(i)(2)))
				End If
			Next
		End If

		.Execute,,adExecuteNoRecords
		
		If IsArray(outargs) Then
			For i=0 To UBound(outargs)
				outargs(i)(3) = .Parameters("@" & outargs(i)(0))
			Next
		End If
		
		RunProcedureReturnOutput = .Parameters("RETURN_VALUE")
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : Return값, String형 반환
Function RunProcedureReturnString(objCon, procName, args, returnValue)
	Dim objCmd, rs
	Dim i

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		.Parameters.Append .CreateParameter("RETURN_VALUE", adInteger, adParamReturnValue)
		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		Set rs = .Execute
		If Not rs.EOF Then
			Dim tempString
			tempString = Trim(rs.GetString())
			' 마지막 엔터는 삭제 처리
			If Right(tempString, 1) = Chr(13) Then
				tempString = Left(tempString, Len(tempString) - 1)
			End If
			RunProcedureReturnString = tempString
		Else
			RunProcedureReturnString = ""
		End If
		
		returnValue = .Parameters("RETURN_VALUE")
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : Return값, 배열형 반환
Function RunProcedureReturnRows(objCon, procName, args, returnValue)
	Dim objCmd, rs
	Dim i

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		.Parameters.Append .CreateParameter("RETURN_VALUE", adInteger, adParamReturnValue)
		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		Set rs = .Execute
		If Not rs.EOF Then
			RunProcedureReturnRows = rs.GetRows()
		Else
			RunProcedureReturnRows = Null
		End If
		
		returnValue = .Parameters("RETURN_VALUE")
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : Return값, 배열+DIC 형태로 반환
Function RunProcedureReturnRowsDic(objCon, procName, args, returnValue)
	Dim objCmd, rs, aryTmp, aryRtn(1000), objDic
	Dim i, j

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		.Parameters.Append .CreateParameter("RETURN_VALUE", adInteger, adParamReturnValue)
		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		Set rs = .Execute
		If Not rs.EOF Then
			i = 0

			Do While Not rs.EOF
				Set objDic = Server.CreateObject("Scripting.Dictionary")
					
					For j=0 To rs.Fields.count-1
						objDic.Add rs.Fields(j).name, rs.Fields(j).value
					Next
					Set aryRtn(i) = objDic
					
				Set objDic = Nothing
				
				i = i + 1
				rs.movenext
			Loop
			
			ReDim aryTmp(i-1)

			For i=0 To UBound(aryTmp)
				Set aryTmp(i) = aryRtn(i)
			Next

			RunProcedureReturnRowsDic = aryTmp
		Else
			RunProcedureReturnRowsDic = Null
		End If
		
		returnValue = .Parameters("RETURN_VALUE")
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : 배열형, Output 반환
Function RunProcedureOutputRows(objCon, procName, args, outargs, returnValue)
	Dim objCmd, rs
	Dim i

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		.Parameters.Append .CreateParameter("RETURN_VALUE", adInteger, adParamReturnValue)
		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		If IsArray(outargs) Then
			For i=0 To UBound(outargs)
				If CheckNumberParameter(outargs(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & outargs(i)(0), outargs(i)(1), adParamOutput)
				Else
					.Parameters.Append .CreateParameter("@" & outargs(i)(0), outargs(i)(1), adParamOutput, CDbl(outargs(i)(2)))
				End If
			Next
		End If

		Set rs = .Execute
		If Not rs.EOF Then
			RunProcedureOutputRows = rs.GetRows()
		Else
			RunProcedureOutputRows = Null
		End If
		
		If IsArray(outargs) Then
			For i=0 To UBound(outargs)
				outargs(i)(3) = .Parameters("@" & outargs(i)(0))
			Next
		End If
		
		returnValue = .Parameters("RETURN_VALUE")
	End With

	Set objCmd = Nothing
End Function


' 프로시져 실행 : Output, 배열+DIC 반환
Function RunProcedureOutputRowsDic(objCon, procName, args, outargs, returnValue)
	Dim objCmd, rs, aryTmp, aryRtn(1000), objDic
	Dim i, j

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandText = procName
		.CommandType = adCmdStoredProc

		.Parameters.Append .CreateParameter("RETURN_VALUE", adInteger, adParamReturnValue)
		If IsArray(args) Then
			For i=0 To UBound(args)
				If CheckNumberParameter(args(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput,, args(i)(3))
				Else
					.Parameters.Append .CreateParameter("@" & args(i)(0), args(i)(1), adParamInput, CDbl(args(i)(2)), args(i)(3))
				End If
			Next
		End If

		If IsArray(outargs) Then
			For i=0 To UBound(outargs)
				If CheckNumberParameter(outargs(i)(1)) Then
					.Parameters.Append .CreateParameter("@" & outargs(i)(0), outargs(i)(1), adParamOutput)
				Else
					.Parameters.Append .CreateParameter("@" & outargs(i)(0), outargs(i)(1), adParamOutput, CDbl(outargs(i)(2)))
				End If
			Next
		End If

		Set rs = .Execute
		If Not rs.EOF Then
			i = 0

			Do While Not rs.EOF
				Set objDic = Server.CreateObject("Scripting.Dictionary")
					
					For j=0 To rs.Fields.count-1
						objDic.Add rs.Fields(j).name, rs.Fields(j).value
					Next
					Set aryRtn(i) = objDic
					
				Set objDic = Nothing
				
				i = i + 1
				rs.movenext
			Loop
			
			ReDim aryTmp(i-1)

			For i=0 To UBound(aryTmp)
				Set aryTmp(i) = aryRtn(i)
			Next

			RunProcedureOutputRowsDic = aryTmp
		Else
			RunProcedureOutputRowsDic = Null
		End If
		
		If IsArray(outargs) Then
			For i=0 To UBound(outargs)
				outargs(i)(3) = .Parameters("@" & outargs(i)(0))
			Next
		End If
		
		returnValue = .Parameters("RETURN_VALUE")
	End With

	Set objCmd = Nothing
End Function
%>