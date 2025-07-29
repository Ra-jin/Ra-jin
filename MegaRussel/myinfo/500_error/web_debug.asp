
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
	strSvr = request("svr")
	if strSvr <> "m" then strSvr = ""
	strE400 = Request("e400")
	if strE400 <> "N" then strE400 = "Y"

	IF LEFT( strRemoteIP , 6 ) <> "10.1.1" AND LEFT( strRemoteIP , 6 ) <> "10.1.3" AND LEFT( strRemoteIP , 8 ) <> "10.240.0" THEN
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
	strLogFilePath = Server.MapPath("/Data/500_error/log")
	Set objReg = Nothing

	strLogFileName =  strSvr&"debug" & pYear & pMonth & pDay & ".log"
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
					If strE400="N" then
						IF NOT (Instr(1, sErrorLine, "/500_error/404.asp" , 1) > 0) THEN
							isError  = true
							ReDim Preserve arrPageError(i)
							arrPageError(i) = sErrorLine
							i=i+1
						END IF
					ELSEIF pSearchWord = "" THEN
					'IF pSearchWord = "" THEN
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
table.type4 td.left {text-align:left;background:#ffffff;line-height:130%;word-break: break-all;font-weight: normal;}

table.type4 td {border:1px solid #000000; text-align:center;line-height:18px;padding:7px 0px 5px 0px;font:12px gulim;background:#ffffff;line-height:130%;font-weight:bold;}
table.type4 td.left{border:1px solid #000000; text-align:left;padding:7px 0px 5px 10px; background:#ffffff;line-height:130%;}
table.type4 td.left01{text-align:left;line-height:130%;}

.fb {font-weight:bold;}
.f11 {font-size:12px;}
#webpage {height: 30px;line-height: 30px;font-size: 16px;margin-bottom: 10px;}
.cookies {display:none;}
.cookies.on {display:table-row;}
</style>
</HEAD>

<script language="javascript">
function listsubmit(){
	var frmList = document.frmList;
	frmList.submit();
}
function setInitialize(){
	document.location.href="web_debug.asp?svr=<%=strSvr%>";
}

function ShowCookies() {
	for (var i=0; i<document.getElementsByClassName('cookies').length; i++) {
		document.getElementsByClassName('cookies')[i].classList.add("on");
	}
}
</script>


<body>
	<table width="1500" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td>
			<h1>
				<select onChange="location.href=this.value" id="webpage">
					<option value="">::::::::: 개발서버 ::::::::: </option>
					<option <%if lcase(strServerName)="devrussel.megastudy.net" and strSvr<>"m" then Response.write "selected"%> value="https://devrussel.megastudy.net//500_error/web_debug.asp">devrussel.megastudy.net</option>
					<option <%if lcase(strServerName)="devmrussel.megastudy.net" and strSvr="m" then Response.write "selected"%> value="https://devmrussel.megastudy.net/500_error/web_debug.asp?svr=m">devmrussel.megastudy.net</option>

					<option <%if lcase(strServerName)="devrms.megastudy.net" and strSvr<>"m" then Response.write "selected"%> value="https://devrms.megastudy.net/500_error/web_debug.asp">devrms.megastudy.net</option>
					<option <%if lcase(strServerName)="devmyrussel.megastudy.net" and strSvr<>"m" then Response.write "selected"%> value="https://devmyrussel.megastudy.net/500_error/web_debug.asp">devmyrussel.megastudy.net</option>

					<option value="">::::::::::: 실서버 :::::::::::</option>
					<option <%if lcase(strServerName)="russel.megastudy.net" and strSvr<>"m" then Response.write "selected"%> value="http://russel.megastudy.net/500_error/web_debug.asp">russel.megastudy.net</option>
					<option <%if lcase(strServerName)="russel.megastudy.net" and strSvr="m" then Response.write "selected"%> value="http://russel.megastudy.net/500_error/web_debug.asp?svr=m">mrussel.megastudy.net</option>
					<option <%if lcase(strServerName)="rms.megastudy.net" and strSvr<>"m" then Response.write "selected"%> value="http://rms.megastudy.net/500_error/web_debug.asp">rms.megastudy.net</option>
					<option <%if lcase(strServerName)="myrussel.megastudy.net" and strSvr<>"m" then Response.write "selected"%> value="http://myrussel.megastudy.net/500_error/web_debug.asp">myrussel.megastudy.net</option>
				</select>
				&nbsp;오류 정보 페이지
			</h1>
		</td>
	</tr>
	</table>

	<form Name="frmList" Method="Post" action="web_debug.asp" >
	<input type="hidden" name="svr" value="<%=strSvr%>">
	<input type="hidden" name="e400" value="Y">
	<table width="1500" border="0" cellpadding="0" cellspacing="0" class="type4">
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
			<input type=button value="쿠키 보기" OnClick="ShowCookies();">
			<input type=button value="404 안보기" OnClick="javascript:document.frmList.e400.value='N';listsubmit();">
		</td>
	</tr>
	</table>
	</form>

	<table width="1500" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td></td>
	</tr>
	</table>

	<table width="1500" border="0" cellspacing="0" cellpadding="0"  class="type4">
	<colgroup>
		<col width="50" />
		<col width="300" />
		<col width="400" />
		<col width="250" />
		<col width="100" />
	</colgroup>
	<tr>
		<th>번호</th>
		<th>발생페이지</th>
		<th>발생위치</th>
		<th>시간</th>
		<th>접근IP</th>
	</tr>
	<%
		IF isError = true THEN
			bgcolor	=	""
			FOR i=UBound(arrPageError) TO 0 Step -1
				arrErrorInfo =	split( arrPageError(i) , sDivision   )

	%>
	<tr>
		<td class="bg06"><%=i%></td>
		<td class="bg06"><b><%=arrErrorInfo(4)%></b></td>
		<td class="bg06" ><b><%=arrErrorInfo(7)%></b></td>
		<td class="bg06"><%=arrErrorInfo(3)%></td>
		<td class="bg06"><%=arrErrorInfo(2)%></td>
	</tr>
	<tr>
		<td colspan="5" class="left">
			<%=arrErrorInfo(5)%><br><b><%=arrErrorInfo(6)%></b><br><%=arrErrorInfo(8)%><br>
			<%if instr(arrErrorInfo(4), "/500_error/404.asp") > 0 then%><b><%end if%>
			<%=arrErrorInfo(9)%>
			<%if instr(arrErrorInfo(4), "/500_error/404.asp") > 0 then%></b><%end if%>
		</td>
	</tr>
	<tr class="cookies">
		<td colspan="5" class="left"><%=arrErrorInfo(10)%></td>
	</tr>
		<!--/에러구간 -->
	<%
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