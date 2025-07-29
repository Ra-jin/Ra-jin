
<!-- METADATA TYPE="TypeLib" FILE="c:\Program Files\Common Files\system\ado\msado15.dll" -->

<%
'=======================================================================
'업 무 명 : 학원통합프로그램-500에러 오류정보페이지
'모듈기능 : 500에러 오류정보페이지
'파 일 명 : web_debug.asp
'작성일자 : 2009/02/10
'작 성 자 : 김성재
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'Response.Expires=-1
%>
<%
	strRemoteIP   = Request.ServerVariables("REMOTE_ADDR")
	
	IF LEFT( strRemoteIP , 5 ) <> "10.1."  AND LEFT( strRemoteIP , 10 ) <> "114.31.55." AND   strRemoteIP   <> "210.181.48.60"  AND   strRemoteIP   <> "210.181.48.61"  AND   strRemoteIP   <> "210.181.48.62" And  strRemoteIP   <> "210.181.48.90" AND LEFT( strRemoteIP , 10 ) <> "172.15.13." THEN
		RESPONSE.WRITE "잘못된 접근입니다."
		RESPONSE.END
	END IF

	Dim pYear
	Dim pMonth
	Dim pDay
	Dim pSearchWord

	pYear       =  trim(request("s_year"))
	pMonth      =  trim(request("s_month"))
	pDay        =  trim(request("s_day"))

	pSearchWord =  trim(request("s_word"))

	Dim sCurDate
	Dim sCurYear
	Dim sCurMonth
	Dim sCurDay

	sCurDate   =  now

	sCurYear   =  DatePart("yyyy", sCurDate)
	sCurMonth  =  RIGHT( "0" & Month(now),2 )
	sCurDay    =  RIGHT( "0" & Day(now),2 )

	IF ISNULL(pYear)=TRUE OR LEN(pYear) = 0 THEN
		pYear = sCurYear
	END IF

	IF ISNULL(pMonth) = TRUE OR LEN(pMonth) = 0 THEN
		pMonth = sCurMonth
	END IF

	IF ISNULL(pDay) = TRUE OR LEN(pDay) = 0 THEN
		pDay = sCurDay
	END IF

	IF ISNULL(pSearchWord) = TRUE OR LEN(pSearchWord) = 0 THEN
		pSearchWord = ""
	END IF

	Dim arrErrorInfo
	Dim sDivision
	Dim sErrorLine
	Dim nInfoCnt
	Dim bContinue

	Dim arrPageError(), i

	Dim isError
	Dim sNothing

	Dim sServerIP
	Dim sServerName

	strServerIP    = Request.ServerVariables("LOCAL_ADDR")
	strServerName  = Request.ServerVariables("SERVER_NAME")

	sDivision	 =	chr(11)

	Dim objReg, objFSO, objStream, strLogFilePath, strLogFileName , strFavFilePath
	Set objReg = Server.CreateObject("WScript.Shell")
	'strLogFilePath = objReg.RegRead("HKLM\Software\DreamWizDev\WebDebug\Parameters\LogPath")
	strLogFilePath = "d:\\MegaWeb\500_log_cam_2017"
	Set objReg = Nothing

	strLogFileName =  "debug" & pYear & pMonth & pDay & ".log"
	strFavFilePath =  strLogFilePath & "\" & strLogFileName

	Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
	i=0
	IF ( objFSO.FileEXISTS( strFavFilePath ) ) THEN
		Set objStream = objFSO.OpenTextFile(strFavFilePath,adModeRead,False)
		bContinue = false
		isError   = false
		sNothing  = "에러가 없습니다."
		Do While objStream.AtEndOfStream <> True
			IF bContinue = true THEN
				sErrorLine = sErrorLine & objStream.readLine
			ELSE
				sErrorLine = objStream.readLine
			END IF

			arrErrorInfo = SPLIT(sErrorLine,sDivision)
			nInfoCnt     = UBound(arrErrorInfo)

			IF nInfoCnt<8 THEN
				bContinue = true
			ELSE
				bContinue = false

				'IF arrErrorInfo(0) = strServerIP OR arrErrorInfo(0) = strServerName THEN
					IF pSearchWord = "" THEN
						isError  =  true
						ReDim Preserve arrPageError(i)
						arrPageError(i) = sErrorLine
						i=i+1
					ELSE
						IF Instr(1, sErrorLine, pSearchWord , 1) > 0 THEN
							isError  = true
							ReDim Preserve arrPageError(i)
							arrPageError(i) = sErrorLine
							i=i+1
						END IF
					END IF
				'END IF
			END IF
		Loop
		objStream.Close
	ELSE
		isError   = false
		sNothing  = "파일이 없습니다."
	END IF
	Set objStream = Nothing
	Set objFSO    = Nothing

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
<title><%=gMGC_Campus_Title%></title>
<meta http-equiv="Cache-Control" content="Cache" />
<meta http-equiv="Pragma" content="Cache" />
<meta http-equiv="imagetoolbar" content="no" />
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<style type="text/css">
body, table, tr, td
{
	font-family: "굴림","arial";
	font-size: 12px; color:#000000;
}

h1 {font:16pt gulim;font-weight:bold;line-height:125%;padding:0;margin:0;}
h2 {font:13pt gulim;font-weight:bold;letter-spacing:-1px;line-height:115%;padding:0;margin:0;}
h3 {font:12pt gulim;font-weight:bold;leter-spacing:-1px;margin:10px 0 7px 0;background:url('http://img.megastudy.net/campus/library/common/icon/icon_arrow.gif') left center no-repeat;padding-left:21px;padding-top:-2px;}
h4 {font:12pt gulim;font-weight:bold;line-height:100%;padding:0;margin:0;}
.f14 {font:14px gulim;}
table.type4 {border:1px; table-layout:fixed; font:12px gulim; border-collapse:collapse; border-top:2px solid #000000; border-bottom:2px solid #000000;border-left:1px solid #000000;border-right:1px solid #000000;}
table.type4 th {border-top:1px solid #000000; border-right:1px solid #000000; border-left:1px solid #000000; background:#ddd9c3; color:#000000; text-align:center; padding:7px 0px 5px 0px;}
table.type4 th.bg01 {border-top:1px solid #000000; border-right:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; background:#E0F2FD; font-weight:bold;color:#000; text-align:center; padding:7px 0px 5px 0px;line-height:130%;}
table.type4 td.bg01 {border-top:1px solid #000000; border-right:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; background:#c5d9f1; font-weight:bold;color:#000; text-align:center; padding:7px 0px 5px 0px;line-height:130%;}
table.type4 td.bg02 {border-top:1px solid #000000; border-right:1px solid #000000; border-left:1px solid #000000; border-bottom:1px solid #000000; background:#E8FDE0; font-weight:bold;color:#000; text-align:center; padding:7px 0px 5px 0px;line-height:130%;}
table.type4 td.bg03 {border:1px solid #000000; text-align:center;line-height:18px; padding:7px 0px 5px 0px; background:#eeece1; font-weight:bold;color:#000;line-height:130%;font:12px gulim;font-weight:bold;}
table.type4 td.bg04 {border:1px solid #000000; text-align:center;line-height:18px; padding:7px 0px 5px 0px; background:#dbe5f1;line-height:130%;}
table.type4 td.bg05 {border:1px solid #000000; text-align:center;line-height:18px; padding:7px 0px 5px 0px; background:#F0FFEA;line-height:130%;}
table.type4 td.bg06 {border:1px solid #000000; text-align:center;padding:7px 0px 5px 0px; background:#dbe5f1; font-weight:bold;line-height:130%;}
table.type4 td.bg07 {border:1px solid #000000; text-align:center;line-height:18px; padding:7px 0px 5px 0px; background:#fce0fd; font-weight:bold;color:#000;line-height:130%;}
table.type4 td.bg08 {border:1px solid #000000; text-align:center;line-height:18px; padding:7px 0px 5px 0px; background:#e8f6fe; font-weight:bold;color:#000;line-height:130%;}
table.type4 th.bg09 {border-left:2px solid #c00000; border-right:2px solid #c00000; text-align:center;line-height:18px; padding:7px 0px 5px 0px; background:#fcd5b4; font-weight:bold;color:#000;line-height:130%;}
table.type4 td.bg09_off {border-left:2px solid #c00000; border-right:2px solid #c00000; text-align:center;line-height:18px; padding:7px 0px 5px 0px; background:#ffffff; font-weight:bold;color:#000;line-height:130%;font-weight:thin;}
table.type4 td.bg09 {border-left:2px solid #c00000; border-right:2px solid #c00000; text-align:center;line-height:18px; padding:7px 0px 5px 0px; background:#fde9d9; font-weight:bold;color:#000;line-height:130%;}
table.type4 td.left {text-align:left;background:#ffffff;line-height:130%;}

table.type4 td {border:1px solid #000000; text-align:center;line-height:18px;padding:7px 0px 5px 0px;font:12px gulim;background:#ffffff;line-height:130%;font-weight:bold;}
table.type4 td.left{border:1px solid #000000; text-align:left;padding:7px 0px 5px 10px; background:#ffffff;line-height:130%;}
table.type4 td.left01{text-align:left;line-height:130%;}

.fb {font-weight:bold;}
.f11 {font-size:12px;}
</style>
</HEAD>

<script language="javascript">
function listsubmit(){
	var frmList = document.frmList;
	frmList.submit();
}
function setInitialize(){
	document.location.href="web_debug2.asp";
}

</script>


<body>
	<table width="1200" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td><h1><%=strServerName%>&nbsp;오류 정보 페이지&nbsp;</h1></td>
	</tr>
	</table>

	<form Name="frmList" Method="Post" action="web_debug2.asp" >
	<table width="1200" border="0" cellpadding="0" cellspacing="0" class="type4">
	<colgroup>
		<col width="" />
	</colgroup>
	<tr>
		<th>&nbsp;</th>
	</tr>
	<!-- 검색 -->
	<tr>
		<td><span class="arrow1">조회일 :</span>
			<select name="s_year" onChange="javascript:listsubmit();">
			<%
				FOR i=2009 to Year(Now)
					IF i = CInt(pYear) then
						sSelected	=	"selected"
					ELSE
						sSelected	=	""
					END IF
			%>
			<option value="<%=i%>" <%=sSelected%> ><%=i%></option>
			<%
				NEXT
			%>
			</select>&nbsp;년
			&nbsp;&nbsp;&nbsp;

			<select name="s_month" onChange="javascript:listsubmit();">
			<%
				FOR i=1 to 12
					IF i = CInt(pMonth) then
						sSelected = "selected"
					ELSE
						sSelected = ""
					END IF
			%>
			<option <%if i<10 then%>value="0<%=i%>" <% else %> value="<%=i%>" <%end if %> <%=sSelected%> ><%=i%></option>
			<%
				NEXT
			%>
			</select>&nbsp;월
			&nbsp;&nbsp;&nbsp;
			<select name="s_day" onChange="javascript:listsubmit();">
			<%
				FOR i=1 to 31
					IF i = CInt(pDay) then
						sSelected = "selected"
					ELSE
						sSelected = ""
					END IF
			%>
			<option <%if i<10 then%>value="0<%=i%>" <% else %> value="<%=i%>" <%end if %> <%=sSelected%> ><%=i%></option>
			<%
				NEXT
			%>
			</select>&nbsp;일
			<input name="s_word" type="text" class="input" MAXLENGTH="125" value="<%=pSearchWord%>" style="width:150px;height:21px;">&nbsp;<input  name="btnSubmit" type="submit" value="찾기"> <input type=button name="btninit" value="초기화" OnClick="setInitialize()">
		</td>
	</tr>
	</table>
	</form>

	<table width="1200" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td></td>
	</tr>
	</table>

	<table width="1200" border="0" cellspacing="0" cellpadding="0"  class="type4">
	<colgroup>
		<col width="300" />
		<col width="400" />
	</colgroup>
	<tr>
		<th>발생페이지</th>
		<th>접근IP</th>
	</tr>
	<%
		IF isError = true THEN
			bgcolor	=	""
			FOR i=UBound(arrPageError) TO 0 Step -1
				arrErrorInfo =	split( arrPageError(i) , sDivision   )

				'If Right(arrErrorInfo(4), 8) = "regx.asp"  And InStr(arrErrorInfo(9), "login_return_domain=russel") > 0  Then 
				If Right(arrErrorInfo(4), 8) = "regx.asp"  And InStr(arrErrorInfo(9), "Emegastudy%2Enet") > 0 And InStr(arrErrorInfo(9), "login_return_domain=russel") = 0 Then 
	%>
	<tr>
		<td class="bg06"><b><%=arrErrorInfo(4)%></b></td>
		<td class="bg06"><%=arrErrorInfo(2)%></td>
	</tr>
	<!--<tr>
		<td colspan="5" class="left"><%=arrErrorInfo(5)%><br><b><%=arrErrorInfo(6)%></b><br><%=arrErrorInfo(8)%><br><%=arrErrorInfo(9)%></td>
	</tr>-->
		<!--/에러구간 -->
	<%
				End If 
			NEXT
		ELSE
	%>
	<tr>
		<td colspan="5" class="left">오류정보가 없습니다. &nbsp;(<%=sNothing%>)</td>
	</tr>
<%
		END IF

		IF ISARRAY(arrErrorInfo) THEN
			ERASE arrErrorInfo
		END IF
		SET arrErrorInfo	=	NOTHING
%>
	</table>
</BODY>
</HTML>