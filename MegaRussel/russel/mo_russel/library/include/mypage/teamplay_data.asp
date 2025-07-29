<% 
nTpYear = Year(now)
If Month(now) < 4 Then
	nTpYear = nTpYear - 1
End If

MD_DEPT_TYPE = ""
ATT_RATIO = ""
ABS_CNT = ""
LATE_CNT = ""
OUT_CNT = ""
AS_REWARD_PLUS = ""
AS_REWARD_MINUS = ""
REPRESENT_POINT = ""
GP_GOAL_POINT1 = ""
GP_GOAL_POINT2 = ""
GP_GOAL_POINT3 = ""
TP_RESULT_LME_PPT = ""
TP_RESULT_LES_PPT = ""
ATT_SDT = ""

AMS_UnivName1 = "-"		'목표대학1
AMS_UnivRegion = "-"
AMS_UnivName2 = "-"		'목표대학2
AMS_UnivName3 = "-"		'목표대학3
AMS_Pattern1 = "-"		'목표대학전형1
AMS_Pattern2 = "-"		'목표대학전형2
AMS_Pattern3 = "-"		'목표대학전형3
AMS_CollectUnit1 = "-"	'목표대학지원학과1
AMS_CollectUnit2 = "-"	'목표대학지원학과2
AMS_CollectUnit3 = "-"	'목표대학지원학과3

AMS_MemGoalCd1 = ""	'목표대학CD1
AMS_MemGoalCd2 = ""	'목표대학CD2
AMS_MemGoalCd3 = ""	'목표대학CD3


If Clng(CheckNumber_reset(nAmsMemCd, 0)) > 0 And AMS_ACACODE <> "" Then 
	Set objCmd = server.CreateObject("ADODB.Command")
	with objCmd
		.ActiveConnection = strDsn
		.CommandType = adCmdStoredProc
		.CommandText = "SP_GET_TEAMPLAY_DATA"
		.CommandTimeOut = 0
		.Parameters.Append .CreateParameter( "@YEAR", adChar, adParamInput, 4, nTpYear )
		.Parameters.Append .CreateParameter( "@MEM_CD", adInteger, adParamInput, 4, nAmsMemCd )
		.Parameters.Append .CreateParameter( "@ACA_CODE", adVarChar, adParamInput, 20, AMS_ACACODE )
		Set objRs = .Execute
	End with

	If Not (objRs.EoF And objRs.BoF) Then 
		MD_DEPT_TYPE = objRs("DEPT_TYPE")
		ATT_RATIO = objRs("ATT_RATIO")
		ABS_CNT = objRs("ABS_CNT")
		LATE_CNT = objRs("LATE_CNT")
		OUT_CNT = objRs("OUT_CNT")
		AS_REWARD_PLUS = objRs("REWARD_PLUS")
		AS_REWARD_MINUS = objRs("REWARD_MINUS")
		REPRESENT_POINT = objRs("REPRESENT_POINT")
		GP_GOAL_POINT1 = objRs("GOAL_POINT1")
		GP_GOAL_POINT2 = objRs("GOAL_POINT2")
		GP_GOAL_POINT3 = objRs("GOAL_POINT3")
		TP_RESULT_LME_PPT = objRs("SN_LME_PPT")
		TP_RESULT_LES_PPT = objRs("SN_LES_PPT")
		ATT_SDT = objRs("ATT_SDT")
		SCHOLAR_UNIV = objRs("SCHOLAR_UNIV")
		SCHOLAR_YN = objRs("SCHOLAR_YN")
        
        TP_PROMISE_DATE = objRs("TP_PROMISE_DATE") '팀플 서약서 추가 칼럼 20161012 안계용
        If isNull(TP_PROMISE_DATE) Then
            TP_PROMISE_DATE = "미제출"
        Else
            TP_PROMISE_DATE = "제출"&" ("&TP_PROMISE_DATE&")"
        End If

        
	End If 

	Set objRs = objRs.NextRecordset 

	If Not (objRs.EoF And objRs.BoF) Then 
		While Not objRs.eof
			If AMS_UnivName1 = "-" Then
				AMS_UnivName1 = objRS(0)
				AMS_Pattern1 = objRS(1)
				AMS_CollectUnit1 = objRS(2)
				AMS_MemGoalCd1 = objRS(3)
                AMS_UnivRegion = objRS(4)
			ElseIf AMS_UnivName2 = "-" Then
				AMS_UnivName2 = objRS(0)
				AMS_Pattern2 = objRS(1)
				AMS_CollectUnit2 = objRS(2)
				AMS_MemGoalCd2 = objRS(3)
			Else
				AMS_UnivName3 = objRS(0)
				AMS_Pattern3 = objRS(1)
				AMS_CollectUnit3 = objRS(2)
				AMS_MemGoalCd3 = objRS(3)
			End If

			objRS.movenext
		Wend
	End If 

	objRs.close
	Set objRs = Nothing
	Set objcmd = Nothing 

	ABS_RATE = ATT_RATIO
	ABS_LATE = LATE_CNT
	ABS_OUT = OUT_CNT
	ABS_NO = ABS_CNT
	AS_REWARD_PLUS = trim(AS_REWARD_PLUS)
	AS_REWARD_MINUS = Trim(AS_REWARD_MINUS)

    AMS_Univ1 = AMS_UnivRegion &"/"& AMS_UnivName1
	'AMS_Univ1 = AMS_UnivName1 &" / "& AMS_CollectUnit1
	AMS_Univ2 = AMS_UnivName2 &" / "& AMS_CollectUnit2
	AMS_Univ3 = AMS_UnivName3 &" / "& AMS_CollectUnit3

	If ValueCheck(TP_RESULT_LME_PPT) = False Then
		TP_RESULT_LME_PPT = "-"
	End If
	
	If ValueCheck(TP_RESULT_LES_PPT) = False Then
		TP_RESULT_LES_PPT = "-"
	End If

	ATT_SDT = ATT_SDT

End If 
'Response.write "TP_RESULT_LME_PPT : " & TP_RESULT_LME_PPT
'Response.write "<br>"
'Response.write "TP_RESULT_LES_PPT : " & TP_RESULT_LES_PPT

If IsNull(ABS_RATE) = True Or IsEmpty(ABS_RATE) = True Or ABS_RATE = "" Then
	ABS_RATE = "-"
End If
If IsNull(ABS_NO) = True Or IsEmpty(ABS_NO) = True Or ABS_NO = "" Then
	ABS_NO = "-"
End If
If IsNull(ABS_LATE) = True Or IsEmpty(ABS_LATE) = True Or ABS_LATE = "" Then
	ABS_LATE = "-"
End If
If IsNull(AS_REWARD_PLUS) = True Or IsEmpty(AS_REWARD_PLUS) = True Or AS_REWARD_PLUS = "" Then
	AS_REWARD_PLUS = "-"
End If
If IsNull(AS_REWARD_MINUS) = True Or IsEmpty(AS_REWARD_MINUS) = True Or AS_REWARD_MINUS = "" Then
	AS_REWARD_MINUS = "-"
End If

If ValueCheck(REPRESENT_POINT) = False Then
	REPRESENT_POINT = "-"
End If
If ValueCheck(GP_GOAL_POINT1) = False Then
	GP_GOAL_POINT1 = "-"
End If
If ValueCheck(GP_GOAL_POINT2) = False Then
	GP_GOAL_POINT2 = "-"
End If
If ValueCheck(GP_GOAL_POINT3) = False Then
	GP_GOAL_POINT3 = "-"
End If
%>